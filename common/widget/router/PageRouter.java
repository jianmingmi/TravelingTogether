package widget.router;

import com.jfinal.config.Routes;
import product.index.IndexController;
import product.user.controller.UserController;

/**
 * author:jmm
 * date:2017/5/25 22:54
 * e-mail:jianmingmi@foxmail.com
 * <p>
 * des:页面路由
 */
public class PageRouter extends Routes {
    @Override
    public void config() {
        //index页面
        this.add("/", IndexController.class);

        // 测试页面
        this.add("/user", UserController.class);
    }
}
