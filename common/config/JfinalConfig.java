package config;

import com.jfinal.config.*;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.template.Engine;
import widget.plugin.ApiDruidPlugin;
import widget.plugin.ApiOrmMapping;
import widget.router.PageRouter;

/**
 * author:jmm
 * date:2017/3/13 17:28
 * e-mail:jianmingmi@foxmail.com
 */
public class JfinalConfig extends JFinalConfig {
    /**
     * 配置常量
     */
    @Override
    public void configConstant(Constants constants) {
        // 设置最大容量
        constants.setMaxPostSize(1024 * 1024 * 100);
        // 设置读取配置文件
        PropKit.use("config.properties");
        // 开发模式
        constants.setDevMode(PropKit.getBoolean("IS_DEV"));
        // 字符编码
        constants.setEncoding("UTF-8");
    }

    /**
     * 配置路由
     */
    @Override
    public void configRoute(Routes routes) {
        routes.add(new PageRouter());
    }

    /**
     * 模板引擎配置
     */
    @Override
    public void configEngine(Engine engine) {

    }

    /**
     * 配置插件
     */
    @Override
    public void configPlugin(Plugins plugins) {
        // 配置C3p0数据库连接池插件
//        C3p0Plugin c3p0Plugin = new C3p0Plugin(url, name, password);
//        me.add(druidPlugin);

        // 配置Druid数据库连接池插件
        DruidPlugin druidPlugin = ApiDruidPlugin.createDruidPlugin();
        plugins.add(druidPlugin);

        // 配置ActiveRecord插件
        ActiveRecordPlugin arp = new ActiveRecordPlugin(druidPlugin);
        // 是否显示sql
        arp.setShowSql(PropKit.getBoolean("IS_SHOW_SQL"));
        // 添加orm映射
        ApiOrmMapping.addMapping(arp);

        plugins.add(arp);
    }

    /**
     * 配置全局拦截器
     */
    @Override
    public void configInterceptor(Interceptors interceptors) {

    }

    /**
     * 配置处理器
     */
    @Override
    public void configHandler(Handlers handlers) {

    }
}
