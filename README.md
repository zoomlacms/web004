[目录]

<!-- TOC -->

- [Zoomla!逐浪CMS卓越出品](#zoomla逐浪cms卓越出品)
    - [逐浪官方开源精品全站项目003：大型旅游门户+地理位置跟踪与点评全站源码](#逐浪官方开源精品全站项目003大型旅游门户地理位置跟踪与点评全站源码)
    - [本项目介绍](#本项目介绍)
- [开放性说明](#开放性说明)
    - [使用说明](#使用说明)
- [接口文档](#接口文档)
    - [ZoomlaCLI-Studio接口使用说明](#zoomlacli-studio接口使用说明)
    - [本程序目录结构](#本程序目录结构)
- [系统运行效果图](#系统运行效果图)

<!-- /TOC -->


<p align="center">
  <a href="http://www.z01.com/">
    <img src="https://code.z01.com/img/zoomla_logo.svg" width="600">
  </a>
</p>
<br>


# Zoomla!逐浪CMS卓越出品

## 逐浪官方开源精品全站项目003：大型旅游门户+地理位置跟踪与点评全站源码



Zoomla!逐浪CMS：中文业界alexa排名第一的CMS系统|专注.net与windows平台企业级研发，集成内容管理、webfont、商城、店铺、黄页、教育、考试、3D、三维全景、混合现实、CRM、ERP、OA、论坛、贴吧等为一体，打造国内高端的CMS产品典范。

官网：www.z01.com

免费下载：www.z01.com/mb

视频教程：www.z01.com/mtv

模板资源：www.z01.com/mb

逐浪字库： http://f.ziti163.com

zico中文图标库：http://ico.z01.com


QQ交流群号：
[![加入QQ群](https://img.shields.io/badge/一群-541450128-blue.svg?style=for-the-badge&logo=appveyor)](https://jq.qq.com/?_wv=1027&k=5qIayyX)  [![加入QQ群](https://img.shields.io/badge/二群-541450128-blue.svg?style=for-the-badge&logo=appveyor)](https://jq.qq.com/?_wv=1027&k=5Ephzpq)   [![加入QQ群](https://img.shields.io/badge/三群-601781959-blue.svg?style=for-the-badge&logo=appveyor)](https://jq.qq.com/?_wv=1027&k=50a28BK) 


官方QQ客服：
[![官方QQ客服1](https://img.shields.io/badge/官方QQ客服1-524979923-red.svg?style=for-the-badge&logo=appveyor)](http://wpa.qq.com/msgrd?v=3&uin=745151353&site=qq&menu=yes)  [![官方QQ客服2](https://img.shields.io/badge/官方QQ客服2-1799661890-red.svg?style=for-the-badge&logo=appveyor)](http://wpa.qq.com/msgrd?v=3&uin=1799661890&site=qq&menu=yes) 

## 本项目介绍

这是一个服务于旅游行业的的全站系统，移动优先，全面支持响应式，是国家高新科技重点项目、火炬项目，其特征包括：
- 服务端基于Zoomla!逐浪CMS开发
- 前端web呈现基于Boostrap 
- map地图组件基于百度地图
- 支持chrome和现代化浏览器，兼容IE11与EDGE浏览器
- 完美支持微信与小程序接入与二次开发
- 集成游客发布推荐旅游景点，大型门户应用，对接地图实时位置。
- 高端地图与特产销售门户平台

# 开放性说明
本项目基于Zoomla!逐浪CMS接口与VueCLI结合开发，如果您不需要其中的远程提交表单（访客留言）则可以单独编译，忽略逐浪CMS接口部份，依然可以正常运行，非常方便。
有道是：

- 建网站,选逐浪。
- 易上手,功能棒。
- 质量好,服务善。
- 高性能,最划算。

## 使用说明

- 1.后台路径：`/admin/login.aspx` 或`/admin/login`
- 2.脚本框架：.net 4.0 集成模式（即IIS进程池应选为集成模式）。
- 3.数据库：MSSQL 2005(推荐使用MSSQL2016)
- 4.最低操作系统：windows server 2012
- 5.根目录下data.bak为数据库还原文件，还原即可。
- 6.`/config/ConnectionStrings.config`为数据库配置连接。
- 7.`/Template`为模板配置目录，在此配置模板即可。
- 8.后台超级管理员默认帐号名为：`admin`，密码：`admin888`，如果登录上，请在数据库上执行下面语法即可恢复初始`admin888`密码：
```
update zl_manager set adminpassword='7fef6171469e80d32c0559f88b377245' where adminid=1  --重设后台admin密码为admin888
```





# 接口文档
## ZoomlaCLI-Studio接口使用说明
 [ZoomlaCLI-Studio接口使用说明](源码与接口使用说明/ZoomlaCLI-Studio接口使用说明.md)
## 本程序目录结构
 [本程序目录结构](源码与接口使用说明/本程序目录结构.md)

# 系统运行效果图
![系统效果图1](demo-show-系统效果图/01.jpg)
![系统效果图2](demo-show-系统效果图/02.jpg)
![系统效果图3](demo-show-系统效果图/03.jpg)
![系统效果图4](demo-show-系统效果图/04.jpg)
![系统效果图5](demo-show-系统效果图/05.jpg)
![系统效果图6](demo-show-系统效果图/06.jpg)
![系统效果图6](demo-show-系统效果图/07.jpg)
![系统效果图6](demo-show-系统效果图/08.jpg)
![系统效果图6](demo-show-系统效果图/09.jpg)
![系统效果图6](demo-show-系统效果图/10.jpg)
![系统效果图6](demo-show-系统效果图/11.jpg)
![系统效果图6](demo-show-系统效果图/12.jpg)
![系统效果图6](demo-show-系统效果图/13.jpg)
