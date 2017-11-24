package widget.plugin;

import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import config.ConfigUtil;
import product.test.model.Test;
import product.user.model.User;

/**
 * author:jmm
 * date:2017/5/25 23:48
 * e-mail:jianmingmi@foxmail.com
 * <p>
 * des:添加orm映射
 */
public class ApiOrmMapping {
    public static void addMapping(ActiveRecordPlugin arp) {

        // 显示sql
        arp.setShowSql(true);

        // 测试表
        arp.addMapping(Test.TABLE_NAME, Test.class);
        // 用户表
        arp.addMapping(User.TABLE_NAME, User.class);
    }
}
