<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Shop.PayOnline, App_Web_kbssuhoh" viewStateEncryptionMode="Never" %>

<%@ Import Namespace="ZoomLa.Common" %>
<%@ Import Namespace="ZoomLa.Model" %>
<%@ Import Namespace="ZoomLa.BLL" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>在线支付</title>
    <link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
    <link href="../User/css/commentary.css" rel="stylesheet" type="text/css" />
    <link href="../User/css/default1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <asp:PlaceHolder ID="form1" runat="server">
        <table class="border" align="center" cellspacing="1">
            <tr class="title">
                <td>
                    <strong>在线支付操作（确认支付款项)</strong>
                </td>
            </tr>
            <tr>
                <td class="tdbg">
                    <div class="p_center">
                        <table width="500" cellspacing="1" cellpadding="2" style="background-color: #CCCCCC;">
                            <tr class="title">
                                <td colspan="2">
                                    <b>确 认 款 项</b>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td style="width: 30%" align="right">
                                    支付平台：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblPayPlatform" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    支付序列号：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblOid" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    支付金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblPayMoney" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    手续费：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblRate" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    实际划款金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblvMoney" runat="server"> </asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td colspan="2">
                                    点击“确认支付”按钮后，将进入在线支付界面。
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td colspan="5">
                                    <asp:Label ID="LblHiddenValue" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </asp:PlaceHolder>
</body>
</html>
<script runat="server"> 
    protected void Page_Load(object sender, EventArgs e)
    {
        B_PayPlat bll = new B_PayPlat();
        B_Payment pay = new B_Payment();
        B_Delivier deliver = new B_Delivier();
        B_UserOrderList oll = new B_UserOrderList();

        string v_mid = "";                 //商户编号
        string v_url = "";                 //支付动作完成后返回到该url，支付结果以POST方式发送
        string MD5Key = "";        //MD5安全私钥
        decimal vmoney = 0;           //支付金额 
        string v_amount = "";              //实际支付金额
        int payPlatId = 0;           //支付平台ID
        string paymentNum = "";       //支付序号
        string selleremail = "";       //卖家email
        double delitype = 0;          //物流价格
        string deliname = "";           //物流方式
        B_User buser = new B_User();
        int payid = DataConverter.CLng(Request.QueryString["PayID"]);
        M_Payment pinfo = pay.GetPamentByID(payid);
        if (pinfo.IsNull)
        {
            function.WriteErrMsg("<li>没有找到对应的支付信息</li>");
        }

        payPlatId = pinfo.PayPlatID;
        vmoney = pinfo.MoneyPay;
        v_amount = pinfo.MoneyTrue.ToString("f2");
        paymentNum = pinfo.PaymentNum;

        System.Data.DataTable ordertable = oll.GetOrderbyOrderNo(paymentNum);


        int DeliveryID = 0; //送货方式ID

        if (ordertable != null && ordertable.Rows.Count > 0)
        {
            DeliveryID = DataConverter.CLng(ordertable.Rows[0]["Delivery"]);
        }
        M_Delivier delivierinfo = deliver.GetDelivierByid(DeliveryID);

        delitype = delivierinfo.delitype;
        deliname = delivierinfo.deliname;

        M_PayPlat plat = bll.GetPayPlatByid(payPlatId);
        if (!plat.IsNull)
        {
            v_mid = plat.AccountID;
            MD5Key = plat.MD5Key;
            selleremail = plat.SellerEmail;
        }
        else
        {
            function.WriteErrMsg("<li>没有找到对应的支付平台信息！</li>");
        }

        StringBuilder v_urlBuilder = new StringBuilder();    //构造返回URL
        StringBuilder strHiddenField = new StringBuilder();
        StringBuilder md5Builder = new StringBuilder();
        string applicationName = pay.GetApplicationName();
        if (!applicationName.EndsWith("/"))
        {
            applicationName = applicationName + "/";
        }
        v_urlBuilder.Append("http://");
        v_urlBuilder.Append(applicationName);
        int payclass = bll.GetPayPlatByid(payPlatId).PayClass;
        string v_ShowResultUrl = v_urlBuilder.ToString() + "PayOnline/ShowReturn.aspx?";
        string gateway = "";
        

        //Response.Write(payclass);
        //Response.End();
        switch (payclass)
        {

            case 1:    //支付宝即时到账
                gateway = "https://www.alipay.com/cooperate/gateway.do";

                string partner = v_mid;		//partner		合作伙伴ID			保留字段                
                string subject = paymentNum;	//subject		商品名称
                string body = pinfo.Remark;		//body			商品描述
                string total_fee1 = v_amount;                      //总金额					0.01～50000.00
                string show_url = "www.alipay.com";
                string seller_email = selleremail;             //卖家账号
                string key = MD5Key;              //partner账户的支付宝安全校验码    
                v_urlBuilder.Append("PayOnline/PayResultAlipayInstant.aspx?");
                v_url = v_urlBuilder.ToString();
                //v_ShowResultUrl = v_ShowResultUrl + "?PaymentNum=" + paymentNum;
                string return_url1 = v_ShowResultUrl; //服务器通知返回接口
                string notify_url = v_url; //服务器通知返回接口
                string out_trade_no = paymentNum;
                string service = "create_direct_pay_by_user";
                string sign_type = "MD5";
                string payment_type = "1";
                string _input_charset = "utf-8";
                md5Builder.Append("discount=0");
                md5Builder.Append("&notify_url=" + v_url);
                md5Builder.Append("&out_trade_no=" + out_trade_no);
                md5Builder.Append("&partner=" + partner);
                md5Builder.Append("&payment_type=1");
                md5Builder.Append("&price=" + total_fee1);
                md5Builder.Append("&quantity=1");
                md5Builder.Append("&return_url=" + return_url1);
                md5Builder.Append("&seller_email=" + seller_email);
                md5Builder.Append("&service=create_direct_pay_by_user");
                md5Builder.Append("&subject=" + out_trade_no);
                md5Builder.Append(key);
                string sign = StringHelper.MD5(md5Builder.ToString()).ToLower();

                strHiddenField.Append("<input type='hidden' name='service' value='create_direct_pay_by_user'>\n");
                strHiddenField.Append("<input type='hidden' name='discount' value='0'>\n");
                strHiddenField.Append("<input type='hidden' name='quantity' value='1'>\n");
                strHiddenField.Append("<input type='hidden' name='partner' value='" + partner + "'>\n");
                strHiddenField.Append("<input type='hidden' name='sign_type' value='MD5'>\n");
                strHiddenField.Append("<input type='hidden' name='subject' value='" + subject + "'>\n");
                strHiddenField.Append("<input type='hidden' name='payment_type' value='1'>\n");
                strHiddenField.Append("<input type='hidden' name='price' value='" + total_fee1 + "'>\n");
                strHiddenField.Append("<input type='hidden' name='seller_email' value='" + seller_email + "'>\n");
                strHiddenField.Append("<input type='hidden' name='return_url' value='" + return_url1 + "'>\n");
                strHiddenField.Append("<input type='hidden' name='notify_url' value='" + v_url + "'>\n");
                strHiddenField.Append("<input type='hidden' name='out_trade_no' value='" + out_trade_no + "'>\n");
                strHiddenField.Append("<input type='hidden' name='sign' value='" + sign + "'>\n");
                strHiddenField.Append("<input type='hidden' name='Package' value='" + Request.QueryString["Package"] + "'>\n");
                break;
            case 2: //快钱即时到帐

                gateway = "https://www.99bill.com/gateway/recvMerchantInfoAction.htm";
                //人民币网关账户号
                ///请登录快钱系统获取用户编号，用户编号后加01即为人民币网关账户号。
                string merchantAcctId = selleremail;

                //人民币网关密钥
                ///区分大小写.请与快钱联系索取
                key = MD5Key;

                //字符集.固定选择值。可为空。
                ///只能选择1、2、3.
                ///1代表UTF-8; 2代表GBK; 3代表gb2312
                ///默认值为1
                string inputCharset = "1";

                //接受支付结果的页面地址.与[bgUrl]不能同时为空。必须是绝对地址。
                ///如果[bgUrl]为空，快钱将支付结果Post到[pageUrl]对应的地址。
                ///如果[bgUrl]不为空，并且[bgUrl]页面指定的<redirecturl>地址不为空，则转向到<redirecturl>对应的地址
                string pageUrl = v_ShowResultUrl;

                v_urlBuilder.Append("PayOnline/PayResultAlipayInstant.aspx?");
                v_url = v_urlBuilder.ToString();
                //服务器接受支付结果的后台地址.与[pageUrl]不能同时为空。必须是绝对地址。
                ///快钱通过服务器连接的方式将交易结果发送到[bgUrl]对应的页面地址，在商户处理完成后输出的<result>如果为1，页面会转向到<redirecturl>对应的地址。
                ///如果快钱未接收到<redirecturl>对应的地址，快钱将把支付结果post到[pageUrl]对应的页面。
                string bgUrl = v_url;

                //网关版本.固定值
                ///快钱会根据版本号来调用对应的接口处理程序。
                ///本代码版本号固定为v2.0
                string version = "v2.0";

                //语言种类.固定选择值。
                ///只能选择1、2、3
                ///1代表中文；2代表英文
                ///默认值为1
                string language = "1";

                //签名类型.固定值
                ///1代表MD5签名
                ///当前版本固定为1
                string signType = "1";

                //支付人姓名
                ///可为中文或英文字符
                string payerName = "payerName";

                //支付人联系方式类型.固定选择值
                ///只能选择1
                ///1代表Email
                string payerContactType = "1";

                //支付人联系方式
                ///只能选择Email或手机号
                string payerContact = "";

                //商户订单号
                ///由字母、数字、或[-][_]组成
                string orderId = paymentNum;// DateTime.Now.ToString("yyyyMMddHHmmss");

                //订单金额
                ///以分为单位，必须是整型数字
                ///比方2，代表0.02元
                double moneys = DataConverter.CDouble(v_amount);
                moneys = moneys * 100;
                string orderAmount = DataConverter.CLng(moneys).ToString();

                //订单提交时间
                ///14位数字。年[4位]月[2位]日[2位]时[2位]分[2位]秒[2位]
                ///如；20080101010101
                string orderTime = DateTime.Now.ToString("yyyyMMddHHmmss");

                //商品名称
                ///可为中文或英文字符
                string productName = paymentNum;

                //商品数量
                ///可为空，非空时必须为数字
                string productNum = "1";

                //商品代码
                ///可为字符或者数字
                string productId = paymentNum;

                //商品描述
                string productDesc = pinfo.Remark;

                //扩展字段1
                ///在支付结束后原样返回给商户
                string ext1 = paymentNum;

                //扩展字段2
                ///在支付结束后原样返回给商户
                string ext2 = "";

                //支付方式.固定选择值
                ///只能选择00、10、11、12、13、14
                ///00：组合支付（网关支付页面显示快钱支持的各种支付方式，推荐使用）10：银行卡支付（网关支付页面只显示银行卡支付）.11：电话银行支付（网关支付页面只显示电话支付）.12：快钱账户支付（网关支付页面只显示快钱账户支付）.13：线下支付（网关支付页面只显示线下支付方式）.14：B2B支付（网关支付页面只显示B2B支付，但需要向快钱申请开通才能使用）
                string payType = "00";

                //银行代码
                ///实现直接跳转到银行页面去支付,只在payType=10时才需设置参数
                ///具体代码参见 接口文档银行代码列表
                string bankId = "";

                //同一订单禁止重复提交标志
                ///固定选择值： 1、0
                ///1代表同一订单号只允许提交1次；0表示同一订单号在没有支付成功的前提下可重复提交多次。默认为0建议实物购物车结算类商户采用0；虚拟产品类商户采用1
                string redoFlag = "0";

                //快钱的合作伙伴的账户号
                ///如未和快钱签订代理合作协议，不需要填写本参数
                string pid = "";

                //生成加密签名串
                ///请务必按照如下顺序和规则组成加密串！
                String signMsgVal = "";
                signMsgVal = appendParam(signMsgVal, "inputCharset", inputCharset);
                signMsgVal = appendParam(signMsgVal, "pageUrl", pageUrl);
                signMsgVal = appendParam(signMsgVal, "bgUrl", bgUrl);
                signMsgVal = appendParam(signMsgVal, "version", version);
                signMsgVal = appendParam(signMsgVal, "language", language);
                signMsgVal = appendParam(signMsgVal, "signType", signType);
                signMsgVal = appendParam(signMsgVal, "merchantAcctId", v_mid);//merchantAcctId
                signMsgVal = appendParam(signMsgVal, "payerName", payerName);
                signMsgVal = appendParam(signMsgVal, "payerContactType", payerContactType);
                signMsgVal = appendParam(signMsgVal, "payerContact", payerContact);
                signMsgVal = appendParam(signMsgVal, "orderId", orderId);
                signMsgVal = appendParam(signMsgVal, "orderAmount", orderAmount);
                signMsgVal = appendParam(signMsgVal, "orderTime", orderTime);
                signMsgVal = appendParam(signMsgVal, "productName", productName);
                signMsgVal = appendParam(signMsgVal, "productNum", productNum);
                signMsgVal = appendParam(signMsgVal, "productId", productId);
                signMsgVal = appendParam(signMsgVal, "productDesc", productDesc);
                signMsgVal = appendParam(signMsgVal, "ext1", ext1);
                signMsgVal = appendParam(signMsgVal, "ext2", ext2);
                signMsgVal = appendParam(signMsgVal, "payType", payType);
                signMsgVal = appendParam(signMsgVal, "bankId", bankId);
                signMsgVal = appendParam(signMsgVal, "redoFlag", redoFlag);
                signMsgVal = appendParam(signMsgVal, "pid", pid);
                signMsgVal = appendParam(signMsgVal, "key", key);
                string signMsg = GetMD5(signMsgVal, "utf-8").ToUpper();

                strHiddenField.Append("<input type='hidden' name='inputCharset' value='" + inputCharset + "'>\n");
                strHiddenField.Append("<input type='hidden' name='bgUrl' value='" + bgUrl + "'>\n");
                strHiddenField.Append("<input type='hidden' name='pageUrl' value='" + pageUrl + "'>\n");
                strHiddenField.Append("<input type='hidden' name='version' value='" + version + "' >\n");
                strHiddenField.Append("<input type='hidden' name='language' value='" + language + "'>\n");
                strHiddenField.Append("<input type='hidden' name='signType' value='" + signType + "'>\n");
                strHiddenField.Append("<input type='hidden' name='signMsg' value='" + signMsg + "'>\n");
                strHiddenField.Append("<input type='hidden' name='merchantAcctId' value='" + v_mid + "'>\n");
                strHiddenField.Append("<input type='hidden' name='payerName' value='" + payerName + "'>\n");
                strHiddenField.Append("<input type='hidden' name='payerContactType' value='" + payerContactType + "'>\n");
                strHiddenField.Append("<input type='hidden' name='payerContact' value='" + payerContact + "'>\n");
                strHiddenField.Append("<input type='hidden' name='orderId' value='" + orderId + "'>\n");
                strHiddenField.Append("<input type='hidden' name=\"orderAmount\" value=\"" + orderAmount + "\">\n");
                strHiddenField.Append("<input type='hidden' name='orderTime' value='" + orderTime + "'>\n");
                strHiddenField.Append("<input type='hidden' name='productName' value='" + productName + "'>\n");
                strHiddenField.Append("<input type='hidden' name='productNum' value='" + productNum + "'>\n");
                strHiddenField.Append("<input type='hidden' name='productId' value='" + productId + "'>\n");
                strHiddenField.Append("<input type='hidden' name='productDesc' value='" + productDesc + "'>\n");
                strHiddenField.Append("<input type='hidden' name='ext1' value='" + ext1 + "'>\n");
                strHiddenField.Append("<input type='hidden' name='ext2' value='" + ext2 + "'>\n");
                strHiddenField.Append("<input type='hidden' name='payType' value='" + payType + "'>\n");
                strHiddenField.Append("<input type='hidden' name='bankId' value='" + bankId + "'>\n");
                strHiddenField.Append("<input type='hidden' name='redoFlag' value='" + redoFlag + "'>	\n");
                strHiddenField.Append("<input type='hidden' name='pid' value='" + pid + "'>	\n");
                strHiddenField.Append("<input type='hidden' name='Package' value='" + Request.QueryString["Package"] + "'>\n");
                break;

            case 3:    //银联在线
                gateway = "https://pay3.chinabank.com.cn/PayGate";
                //必要的交易信息
                string wv_amount = v_amount;       // 订单金额
                string wv_moneytype = "CNY";    // 币种
                string wv_md5info;      // 对拼凑串MD5私钥加密后的值
                string wv_mid = v_mid;		 // 商户号
                v_urlBuilder.Append("PayOnline/PayReceive.aspx?PayID=" + payid);
                v_url = v_urlBuilder.ToString();
                string wv_url = v_url;		 // 返回页地址
                string wv_oid = paymentNum;		 // 推荐订单号构成格式为 年月日-商户号-小时分钟秒

                //两个备注

                // wv_mid = "1001";				 商户号，这里为测试商户号20000400，替换为自己的商户号即可
                // wv_url = "http://localhost/chinabank/Receive.aspx";  商户自定义返回接收支付结果的页面
                // MD5密钥要跟订单提交页相同，如Send.asp里的 key = "test" ,修改""号内 test 为您的密钥
                string wkey = MD5Key;				 // 如果您还没有设置MD5密钥请登陆我们为您提供商户后台，地址：https://merchant3.chinabank.com.cn/
                // 登陆后在上面的导航栏里可能找到“B2C”，在二级导航栏里有“MD5密钥设置”
                // 建议您设置一个16位以上的密钥或更高，密钥最多64位，但设置16位已经足够了
                wv_amount = v_amount;       // 订单金额
                wv_moneytype = "CNY";    // 币种
                //对拼凑串MD5私钥加密后的值
                wv_mid = v_mid;		 // 商户号
                //v_url = v_ShowResultUrl;
                wv_url = v_url;		 // 返回页地址
                wv_oid = paymentNum;		 // 推荐订单号构成格式为 年月日-商户号-小时分钟秒

                if (wv_oid == null || wv_oid.Equals(""))
                {
                    DateTime dt = DateTime.Now;
                    string wv_ymd = dt.ToString("yyyyMMdd"); // yyyyMMdd
                    string wtimeStr = dt.ToString("HHmmss"); // HHmmss
                    wv_oid = wv_ymd + wv_mid + wtimeStr;
                }
                string text = wv_amount + wv_moneytype + wv_oid + wv_mid + wv_url + wkey; // 拼凑加密串
                wv_md5info = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(text, "md5").ToUpper();
                //收货信息
                //wv_rcvname = Request["v_rcvname"];
                //wv_rcvaddr = Request["v_rcvaddr"];
                //wv_rcvtel = Request["v_rcvtel"];
                //wv_rcvpost = Request["v_rcvpost"];
                //wv_rcvemail = Request["v_rcvemail"];
                //wv_rcvmobile = Request["v_rcvmobile"];
                //订货人信息
                //wv_ordername = Request["v_ordername"];
                //wv_orderaddr = Request["v_orderaddr"];
                //wv_ordertel = Request["v_ordertel"];
                //wv_orderpost = Request["v_orderpost"];
                //wv_orderemail = Request["v_orderemail"];
                //wv_ordermobile = Request["v_ordermobile"];
                //wremark1 = Request["remark1"];
                //wremark2 = Request["remark2"];
                strHiddenField.Append("<input type='hidden' name='v_md5info' value='" + wv_md5info + "'>\n");
                strHiddenField.Append("<input type='hidden' name='v_mid' value='" + wv_mid + "'>\n");
                strHiddenField.Append("<input type='hidden' name='v_oid' value='" + wv_oid + "'>\n");
                strHiddenField.Append("<input type='hidden' name='v_amount' value='" + wv_amount + "' >\n");
                strHiddenField.Append("<input type='hidden' name='v_moneytype' value='" + wv_moneytype + "'>\n");
                strHiddenField.Append("<input type='hidden' name='v_url' value='" + wv_url + "'>\n");
                //以下几项只是用来记录客户信息，可以不用，不影响支付 
                strHiddenField.Append("<input type='hidden' name='v_rcvname' value='" + "" + "'>\n");
                strHiddenField.Append("<input type='hidden' name='v_rcvaddr' value='" + "" + "'>\n");
                strHiddenField.Append("<input type='hidden' name='v_rcvtel' value='" + "" + "'>\n");
                strHiddenField.Append("<input type='hidden' name='v_rcvpost' value='" + "" + "' >\n");
                strHiddenField.Append("<input type='hidden' name='v_rcvemail' value='" + "" + "'>\n");
                strHiddenField.Append("<input type='hidden' name='v_rcvmobile' value='" + "" + "'>\n");
                strHiddenField.Append("<input type='hidden' name='v_ordername' value='" + "" + "' >\n");
                strHiddenField.Append("<input type='hidden' name='v_orderaddr' value='" + "" + "'>\n");
                strHiddenField.Append("<input type='hidden' name='v_ordertel' value='" + "" + "'>\n");
                strHiddenField.Append("<input type='hidden' name='v_orderpost' value='" + "" + "' >\n");
                strHiddenField.Append("<input type='hidden' name='v_orderemail' value='" + "" + "'>\n");
                strHiddenField.Append("<input type='hidden' name='v_ordermobile' value='" + "" + "'>\n");
                strHiddenField.Append("<input type='hidden' name='Package' value='" + Request.QueryString["Package"] + "'>\n");
                break;
            case 4:    //财付通在线支付
                gateway = "http://service.tenpay.com/cgi-bin/v3.0/payservice.cgi";
                //商户号
                string bargainor_id = v_mid;
                //密钥
                string keey = MD5Key;
                //当前时间 yyyyMMdd
                string date = DateTime.Now.ToString("yyyyMMdd");

                //生成订单10位序列号，此处用时间和随机数生成，商户根据自己调整，保证唯一
                string strReq = "" + DateTime.Now.ToString("HHmmss") + tenpay.TenpayUtil.BuildRandomStr(4);

                //商户订单号，不超过32位，财付通只做记录，不保证唯一性
                string sp_billno = strReq;

                //财付通订单号，10位商户号+8位日期+10位序列号，需保证全局唯一
                string transaction_id = bargainor_id + date + strReq;

                //创建PayRequestHandler实例
                tenpay.PayRequestHandler reqHandler = new tenpay.PayRequestHandler(Context);

                //设置密钥
                reqHandler.setKey(keey);

                //初始化
                reqHandler.init();

                //-----------------------------
                //设置支付参数
                //-----------------------------
                reqHandler.setParameter("bargainor_id", bargainor_id);			//商户号
                reqHandler.setParameter("sp_billno", paymentNum);				//商家订单号
                reqHandler.setParameter("transaction_id", transaction_id);		//财付通交易单号
                reqHandler.setParameter("return_url", v_ShowResultUrl);				//支付通知url
                reqHandler.setParameter("desc", "订单号：" + paymentNum);	//商品名称
                reqHandler.setParameter("attach", "payclass=" + payclass + "||payid=" + payid);	//商家数据包，原样返回
                reqHandler.setParameter("total_fee", (DataConverter.CDouble(v_amount)*100).ToString() );						//商品金额,以分为单位
                
                
                //用户ip,测试环境时不要加这个ip参数，正式环境再加此参数
                //reqHandler.setParameter("spbill_create_ip",Page.Request.UserHostAddress);

                //获取请求带参数的url
                string requestUrl = reqHandler.getRequestURL();
                //string a_link = "<a target=\"_blank\" href=\"" + requestUrl + "\">" + "财付通支付" + "</a>";
                //Response.Write(a_link);
                //get实现方式
                reqHandler.getRequestURL();
                //Response.Write("<form method=\"get\" action=\"" + reqHandler.getGateUrl() + "\" >\n");
                Hashtable ht = reqHandler.getAllParameters();
                foreach (DictionaryEntry de in ht)
                {
                    strHiddenField.Append("<input type=\"hidden\" name=\"" + de.Key + "\" value=\"" + de.Value + "\" >");
                    //Response.Write("<input type=\"hidden\" name=\"" + de.Key + "\" value=\"" + de.Value + "\" >\n");
                }
                //Response.Write("<input type=\"submit\" value=\"财付通支付\" >\n</form>\n");
                //获取debug信息
                //string debuginfo = reqHandler.getDebugInfo();
                //Response.Write("<br/>" + debuginfo + "<br/>");
                //重定向到财付通支付
                //reqHandler.doSend();
                
                
                //string porNum = v_mid;
                //string total_fee = v_amount;
                //string desc = v_mid;
                //spbill_create_ip = System.Net.Dns.GetHostAddresses(System.Net.Dns.GetHostName())[0].ToString();
                //attach = transaction_id;
                ////连接sign签名规则顺序
                //sign = "cmdno=" + cmdno + "&date=" + Date + "&bargainor_id=" + bargainor_id
                //+ "&transaction_id=" + Transaction_id + "&sp_billno=" + sp_billno + "&total_fee="
                //+ total_fee + "&fee_type=" + fee_type + "&return_url=" + return_url + "&attach=" + Attach + "&spbill_create_ip=" + spbill_create_ip + "&key=" + keys;
                //sign = MD5Encrypt(sign, keys);
                //gateway = "http://service.tenpay.com/cgi-bin/v3.0/payservice.cgi";
                ////strHiddenField.Append("<form method=\"post\" action=\"http://service.tenpay.com/cgi-bin/v3.0/payservice.cgi\">");
                //strHiddenField.Append("<input type='hidden' name='cmdno' value='" + cmdno + "'/>\n");
                //strHiddenField.Append("<input type='hidden' name='date'  value='" + date + "' />\n");
                //strHiddenField.Append("<input type='hidden' name='bank_type'   value='" + bank_type + "' />\n");
                //strHiddenField.Append("<input type='hidden' name='desc'  value='" + desc + "' />\n");
                //strHiddenField.Append("<input type='hidden'name='purchaser_id'  value='" + purchaser_id + "' />\n");
                //strHiddenField.Append("<input type='hidden' name='bargainor_id'  value='" + bargainor_id + "' />\n");
                //strHiddenField.Append("<input type='hidden' name='transaction_id'  value='" + transaction_id + "' />\n");
                //strHiddenField.Append("<input type='hidden' name='sp_billno'  value='" + sp_billno + "' />\n");
                //strHiddenField.Append("<input type='hidden' name='total_fee'  value='" + total_fee + "'/>\n");
                //strHiddenField.Append("<input type='hidden' name='fee_type'  value='" + fee_type + "'/>\n");
                //strHiddenField.Append("<input type='hidden' name='return_url' value='http://localhost/tenpayApp/return_url.aspx' />\n");
                //strHiddenField.Append("<input type='hidden' name='attach'  value='" + attach + "' />\n");
                //strHiddenField.Append("<input type='hidden' name='spbill_create_ip'  value='" + spbill_create_ip + "' />\n");
                //strHiddenField.Append("<input type='hidden' name='cs'  value='" + cs + "' />\n");
                //strHiddenField.Append("<input type='hidden' name='sign'  value='" + sign + "' />\n");
                break;
            case 6:
                gateway = "https://www.yeepay.com/app-merchant-proxy/node";
                string p1_MerId = "10000432521";           //商家ID
                string keyValue = "8UPp0KE8sq73zVP370vko7C39403rtK1YwX40Td6irH216036H27Eb12792t";  // 商家密钥
                // 商户订单号,选填.
                //若不为""，提交的订单号必须在自身账户交易中唯一;为""时，易宝支付会自动生成随机的商户订单号.
                string p2_Order = paymentNum;
                // 支付金额,必填.
                //单位:元，精确到分.    
                string p3_Amt = v_amount;
                string p4_Cur = "CNY";                   //交易币种,固定值"CNY".
                string p5_Pid = paymentNum;              //商品名称   //用于支付时显示在易宝支付网关左侧的订单产品信息.
                string p6_Pcat = paymentNum;            //商品种类
                string p7_Pdesc = "商品描述";           //商品描述
                string p8_Url = v_ShowResultUrl;     //商户接收支付成功数据的地址,支付成功后易宝支付会向该地址发送两次成功通知.
                string p9_SAF = "0";                          //送货地址  //为“1”: 需要用户将送货地址留在易宝支付系统;为“0”: 不需要，默认为 ”0”.
                string pa_MP = "商户扩展信息";                         //商户扩展信息           //商户可以任意填写1K 的字符串,支付成功时将原样返回.
                string pd_FrpId = "";                               //银行编码 //默认为""，到易宝支付网关.若不需显示易宝支付的页面，直接跳转到各银行、神州行支付、骏网一卡通等支付页面，该字段可依照附录:银行列表设置参数值.
                string pr_NeedResponse = "1";                //应答机制 //为"1": 需要应答机制;为"0": 不需要应答机制.
                string hmac = com.yeepay.Buy.CreateBuyUrl(p1_MerId, keyValue, p2_Order, p3_Amt, p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP, pd_FrpId, pr_NeedResponse);

                strHiddenField.Append("<input type='hidden' name='p1_MerId' value='" + p1_MerId + "'>\n");
                strHiddenField.Append("<input type='hidden' name='p2_Order' value='" + p2_Order + "'>\n");
                strHiddenField.Append("<input type='hidden' name='p3_Amt' value='" + p3_Amt + "'>\n");
                strHiddenField.Append("<input type='hidden' name='p4_Cur' value='" + p4_Cur + "'>\n");
                strHiddenField.Append("<input type='hidden' name='p5_Pid' value='" + p5_Pid + "'>\n");
                strHiddenField.Append("<input type='hidden' name='p6_Pcat' value='" + p6_Pcat + "'>\n");
                strHiddenField.Append("<input type='hidden' name='p7_Pdesc' value='" + p7_Pdesc + "'>\n");
                strHiddenField.Append("<input type='hidden' name='p8_Url' value='" + p8_Url + "'>\n");
                strHiddenField.Append("<input type='hidden' name='p9_SAF' value='" + p9_SAF + "'>\n");
                strHiddenField.Append("<input type='hidden' name='pa_MP' value='" + pa_MP + "'>\n");
                strHiddenField.Append("<input type='hidden' name='pd_FrpId' value='" + pd_FrpId + "'>\n");
                strHiddenField.Append("<input type='hidden' name='pr_NeedResponse' value='" + pr_NeedResponse + "'>\n");
                strHiddenField.Append("<input type='hidden' name='hmac' value='" + hmac + "'>\n");
                strHiddenField.Append("<input type='hidden' name='Package' value='" + Request.QueryString["Package"] + "'>\n");

                break;
            case 9:

                gateway = "https://payment.chinapay.com/pay/TransGet";
                // 支付交易
                ZoomLa.Components.BankPay bp = new ZoomLa.Components.BankPay();
                bp.PayChecked(v_amount, "http://" + Request.Url.Authority + "/UnionPay/Chinapay_Bgreturn.aspx", "http://" + Request.Url.Authority + "/UnionPay/Chinapay_Pgreturn.aspx", pinfo.PaymentID.ToString(), paymentNum);
                bp.GotoBankPage(strHiddenField);
                break;
            case 11:
                gateway = "https://www.paypal.com/cgi-bin/webscr";

                //               strHiddenField.Append("<input type='image' src='https://www.sandbox.paypal.com/en_US/i/logo/paypal_logo.gif' border='0' name='submit' alt='PayPal is the safer, easier way to pay - PayPal'>\n");
                strHiddenField.Append("<input type='hidden' name='cmd' value='_xclick'>\n");
                strHiddenField.Append("<input type='hidden' name='business' value='" + selleremail + "'>\n");
                strHiddenField.Append("<input type='hidden' name='item_name' value='BoAo International Trading '>\n");  //商品名
                strHiddenField.Append("<input type='hidden' name='item_number' value='" + pinfo.PaymentNum + "'>\n"); // 订单号
                strHiddenField.Append("<input type='hidden' name='amount' value='" + v_amount + "'>\n");  //价格
                strHiddenField.Append("<input type='hidden' name='quantity' value='1'>\n");
                strHiddenField.Append("<input type='hidden' name='currency_code' value='USD'>\n");
                strHiddenField.Append("<input type='hidden' name='cancel_return' value='http://127.0.0.1:761/manage'>\n");
                strHiddenField.Append("<input type='hidden' name='return' value='http://zoomla.cn'>\n");
                strHiddenField.Append("<input type='hidden' name='Package' value='" + Request.QueryString["Package"] + "'>\n");
                break;
            default:
                function.WriteErrMsg("<li>选择的支付平台未集成，请重新选择另外的支付平台！</li>");
                break;
        }
        string endFrom;
        string newForm = "<form method=\"post\" action='" + gateway + "' id=\"form2\" target='_blank'>";
        if (gateway == "https://www.paypal.com/cgi-bin/webscr")
        {
            endFrom = "<input type=\"image\" src=\"../../Skin/blue/Images/paypal.gif\" border=\"0\" name=\"submit\" alt=\"PayPal is the safer, easier way to pay - PayPal\">  <input type=\"button\" class=\"inputbutton\" id=\"Cancel\" value=\"取消支付\" onclick=\"window.location.href='/User/PreViewOrder.aspx?menu=Cartinfo'\" /></form>";
        }
        else
        {
            endFrom = "<input type=\"submit\" id=\"submit\" value=\"确认支付\">  <input type=\"button\" class=\"inputbutton\" id=\"Cancel\" value=\"取消支付\" onclick=\"window.location.href='/User/PreViewOrder.aspx?menu=Cartinfo'\" /></form>";
        }
        ///User/Info/Payment.aspx

        string m_HiddenValue = newForm + strHiddenField.ToString() + endFrom;
        //给页面赋值
        LblPayPlatform.Text = plat.PayPlatName;
        LblOid.Text = pinfo.PaymentNum;


        LblPayMoney.Text = Convert.ToDecimal(vmoney).ToString("F2") + " 元";

        LblRate.Text = plat.Rate.ToString() + " %";
        LblvMoney.Text = v_amount + " 元";
        LblHiddenValue.Text = m_HiddenValue;
    }

    //功能函数。将变量值不为空的参数组成字符串
    String appendParam(String returnStr, String paramId, String paramValue)
    {

        if (returnStr != "")
        {

            if (paramValue != "")
            {

                returnStr += "&" + paramId + "=" + paramValue;
            }

        }
        else
        {

            if (paramValue != "")
            {
                returnStr = paramId + "=" + paramValue;
            }
        }

        return returnStr;
    }
    //功能函数。将变量值不为空的参数组成字符串。结束

    /// <summary>
    /// 生成随机字符串，返回值是由参数pwdchars中的字符组成
    /// </summary>
    public static string MakeRandomString(string pwdchars, int pwdlen)
    {
        StringBuilder builder = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < pwdlen; i++)
        {
            int num = random.Next(pwdchars.Length);
            builder.Append(pwdchars[num]);
        }
        return builder.ToString();
    }
    
    private static string GetMD5(string encypStr)
    {
        string retStr;
        System.Security.Cryptography.MD5CryptoServiceProvider m5 = new System.Security.Cryptography.MD5CryptoServiceProvider();

        //创建md5对象
        byte[] inputBye;
        byte[] outputBye;

        //使用GB2312编码方式把字符串转化为字节数组．
        inputBye = Encoding.GetEncoding("gb2312").GetBytes(encypStr);

        outputBye = m5.ComputeHash(inputBye);

        retStr = System.BitConverter.ToString(outputBye);
        retStr = retStr.Replace("-", "").ToUpper();
        return retStr;
    }

    private static string GetMD5(string dataStr, string codeType)
    {
        System.Security.Cryptography.MD5 md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
        byte[] t = md5.ComputeHash(System.Text.Encoding.GetEncoding(codeType).GetBytes(dataStr));
        System.Text.StringBuilder sb = new System.Text.StringBuilder(32);
        for (int i = 0; i < t.Length; i++)
        {
            sb.Append(t[i].ToString("x").PadLeft(2, '0'));
        }
        return sb.ToString();
    }

</script>
