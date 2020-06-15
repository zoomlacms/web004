<!--
//********************************************************************************************
//    版权所有。
//    请尊重智慧财产权： 无论您对本程式 ExoBUD MP(II) 作任何修改、制作(或翻译)面板，请您
//    *必须*保留此段版权信息的内容，包括程序(及面板)原作者及中文化作者的名字和网站链接。
//
//    请不要将程式(或面板)原作者或中文化作者的名字改成您自己的名字，
//    然后以另一程式名称重新命名后在网上公开发表及散播本程式，因为这是严重的侵权行为。
//
//    这是免费程序，所以请不要使用在商业用途上。
//    另外，您也不可将本程序(全部或部份)复制到其他储存媒体(例如光碟)上作贩卖获利用途。
//
//    申明:因为使用本程序对你造成任何后果，程序原作者及中文化作者均不用对其负责。
//
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// 设定播放清单内容的相关说明
//
// 完整的设定格式: mkList("媒体文件路径","媒体标题","字幕文件路径","(f)");
// 一般的设定格式: mkList("媒体文件路径","媒体标题");
// 预设不播放某项目: mkList("媒体文件路径","媒体标题","", "f");
// 自动取得媒体信息: mkList("媒体文件路径");
//
// ════════════════════════════════════════════════════
//            以下为样本播放清单的内容，请在设定您的正式播放清单完毕后，将此部份删除或批注起来。
// ════════════════════════════════════════════════════

//例1: mkList("http://www.cuiz.net/music/mp3/dannigudan.mp3","当你孤单你会想起谁");
//说明 - 字幕文件 dannigudan.smi 存放在相同的数据夹，则无须设定「字幕文件位置」。
///例2: mkList("http://www.cuiz.net/music/mp3/dannigudan.mp3","当你孤单你会想起谁","abc.smi");
//说明 - 字幕文件存放在相同的文件夹，但文件名有别，须设定字幕文件名。
//例3: mkList("./mp3/dannigudan.mp3","演出者 - 歌名","http://xxxxx.net/lyric/xyz.smi");
//说明 - 字幕文件存放在不同的主机，必须使用绝对路径的方式来设定「字幕文件的位置」。
// -----------------------------------------------------------------------------------------
//以下链接到WWW.CUIZ.NET服务器上,可删除(播放清单内容实例)
document.write("<script language=\"JavaScript\" src=\"http://music.cuiz.net/exobudpl.js\"></script>");
mkList("http://www.starwork.net/playback/xqwy/xqwy.mp3","心情物语 片花 - 心情网络电台");
mkList("http://www.starwork.net/playback/yyss/yyss14.wma","音乐时尚 第14期 （新版） - NJ:李松");
mkList("http://www.starwork.net/playback/city/city05.wma","城市真精彩--单身者旅游（下） - NJ：可欣");
mkList("http://www.starwork.net/playback/yysy/yysy05.wma","乐言碎语第五期 魔法屋 - NJ:文欣");
mkList("http://www.starwork.net/playback/dcr/chenhao-20050529.wma","音乐稻草人NO.16 晨皓的私房歌（二） - NJ:晨皓");
mkList("http://www.starwork.net/playback/yyss/yyss13.wma","音乐时尚第13期(新版) - NJ:李松");
mkList("http://www.starwork.net/playback/fashion/fashion04.wma","时尚搜查队 第四期 - NJ：kelson");
mkList("http://www.51ting.net/radio/playback/pianhua/xinqing1.mp3","电台片花 - 心情网络电台");


//-->