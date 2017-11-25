TravelingTogether系统启动教程

1.common、resources、src设为源码包（在模块设置中）
    common库存放基本代码
    resources是存放配置文件
    src存放功能产品以及启动文件

2.源码编译路径修改为
    xxx/TravelingTogether/web/WEB-INF/classes（classes文件夹没有需要手动创建）

3.创建中心数据库，创建sql位于
    xxx/TravelingTogether/web/readme/create.sql

4.配置参数文件，文件路径位于
    xxx/TravelingTogether/config.properties
        IS_JMM选项为用户选项
            true是jmm用户
            false是桃子用户