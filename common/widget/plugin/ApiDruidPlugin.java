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

        return new DruidPlugin(
                PropKit.get("DB_url"),
                PropKit.get("DB_username"),
                PropKit.get("DB_password")
        );

    }
}
