package widget.plugin;

import com.jfinal.kit.PropKit;
import com.jfinal.plugin.druid.DruidPlugin;

/**
 * author:jmm
 * date:2017/5/26 0:10
 * e-mail:jianmingmi@foxmail.com
 */
public class ApiDruidPlugin {
    public static DruidPlugin createDruidPlugin() {
//        boolean b = ConfigUtil.getInstance().getBoolean("isDbNet");

        boolean isJmm = PropKit.getBoolean("IS_JMM");

        String url = isJmm ? PropKit.get("DB_URL_JMM") : PropKit.get("DB_URL_TAOZI");
        String name = isJmm ? PropKit.get("DB_USERNAME_JMM") : PropKit.get("DB_USERNAME_TAOZI");
        String password = isJmm ? PropKit.get("DB_PASSWORD_JMM") : PropKit.get("DB_PASSWORD_TAOZI");

        return new DruidPlugin(url, name, password);
    }
}
