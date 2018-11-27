##第1章 课程介绍
####1-2 技术选型介绍
MySQL
ElasticSearch

##第2章 项目设计
####2-2 _数据库设计
E-R图

##第3章 环境搭建
####3-2 后端框架搭建
集成
JPAConfig
application.properties

####3-3 集成单元测试及H2
User
UserRepository
UserRepositoryTest
application-test.properties 配置h2内存数据库

####3-4 前端集成
WebMvcConfig 配置Thymeleaf
index.html
HomeController

spring-boot-devtools：SpringBoot自带热加载开发工具
setting中需要勾选：Build project automatically
control+shift+alt+/  registry 勾选 compiler.automake.allow.when.app.running

##第4章 架构设计
####4-3 API结构设计_标准制定
ApiResponse_

####4-4 API结构设计_异常拦截器
```
server.error.whitelabel.enabled=false
```

AppErrorController

####4-5 功能性页面开发
```
# 前端页面不需要热加载
spring.devtools.restart.exclude=templates/**,static/**
```

##第5章 后台管理模块实现
####5-1 业务与功能分析设计
H-ui.admin 后台模板

####5-2 后台登录功能实现
```
        // 支持SpringSecurity方言
        SpringSecurityDialect securityDialect = new SpringSecurityDialect();
        templateEngine.addDialect(securityDialect);
```
WebSecurityConfig
AdminController
AuthProvider
IUserService
UserServiceImpl
登录逻辑

####5-3 权限控制
退出登录逻辑
没有权限，不同的路径跳不同的入口,管理员登录和用户登录入口
LoginUrlEntryPoint
WebSecurityConfig

####5-4 验证失败逻辑处理
LoginAuthFailHandler

##第6章 房源信息管理模块实现
6-1 业务与功能分析设计_
6-2 基于七牛云的图片上传
6-3 基于七牛云的图片上传_本地上传
6-4 基于七牛云的图片上传_上云1
6-5 基于七牛云的图片上传_上云2
6-6 新增房源信息功能实现_上
6-7 新增房源信息功能实现_中
6-8 新增房源信息功能实现_下
6-9 房源浏览功能实现_基本开发
6-10 房源浏览功能实现_分页实现
6-11 房源浏览功能实现_多维度排序
6-12 编辑功能实现_上
6-13 编辑功能实现_下
6-14 审核功能实现

##第7章 基础功能实现
7-1 功能与分析设计
7-2 默认排序实现（上）
7-3 默认排序实现（下）
7-4 其他维度排序实现
7-5 房源信息详情页

##第8章 搜索引擎实现
8-1 业务与功能分析
8-2 ES与MySQL技术选型对比
8-3 索引结构设计（上）
8-4 索引结构设计（下）
8-5 索引构建_核心逻辑（上）
8-6 索引构建_核心逻辑（下）
8-7 索引构建-消息中间件介绍
8-8 索引构建_异步实现
8-9 搜索引擎_上
8-10 搜索引擎_下
8-11 中文分词_问题描述
8-12 中文分词_巧解之道
8-13 Search-as-you-type
8-14 小区房源统计功能
8-15 搜索引擎优化

##第9章 基于百度地图的找房功能
9-1 _业务与功能分析
9-2 _基于ES的地图点聚合（上）
9-3 _基于ES的地图点聚合（下）
9-4 地图鼠标事件应用
9-5 基于地址获取经纬度的开发实现
9-6 基于ES的地图查询功能
9-7 基于ES的视野数据源绑定
9-8 基于百度LBS的云麻点_POI数据增删改（上）
9-9 基于百度LBS的云麻点_POI数据增删改（下）
9-10 基于百度LBS的云麻点_POI数据应用

##第10章 会员系统
10-1 业务与功能分析_
10-2 免注册登录_核心逻辑
10-3 免注册登录_阿里云实现-
10-4 会员中心
10-5 用户预约功能（上）
10-6 用户预约功能（下）
10-7 经纪人完成预约功能
10-8 _api权限拦截器
10-9 _基于美洽的客服系统

##第11章 ElasticSearch优化
11-1 索引结构优化
11-2 配置优化
11-3 基于Nginx实现负载均衡
11-4 安全控制_基本认证
11-5 安全控制_选择性认证
11-6 基于SpringSchedule的监控任务
11-7 基于SpringMail的报警系统

##第12章 基于ELK的应用分析
####12-1 _业务与功能分析设计_
####12-2 Logstash应用_日志采集
####12-3 Logstash应用_Nginx日志拆解入库
####12-4 _数据可视化分析_全局流量趋势
####12-5 _数据可视化分析_房源访问流量趋势图

##第13章 项目上线
####13-1 _单元测试覆盖率报告.mov_音频
####13-2 _线上线下配置分离

##第14章 课程总结
####14-1 _课程总结
