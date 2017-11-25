package product.user.controller;

import base.BaseController;
import product.user.model.User;

/**
 * Created by Administrator on 2017/11/12.
 */
public class UserController extends BaseController {
    /**
     * 登录页面
     */
    public void login() {
        renderJsp("/login.jsp");
    }

    /**
     * 注册页面
     */
    public void register() {
        renderJsp("/register.jsp");
    }

    /**
     * 用户注册
     */
    public void doRegister() {
        User user = getModel(User.class, "", true);

        String userName = user.getStr("username");
        User tempUser = User.dao.findFirst("select 1 from " + User.TABLE_NAME + " where username = '" + userName + "'");
        /* 判断用户是否被注册 */
        if (tempUser != null) {
            setAttr("resgiterMsg", "用户已被注册");
            register();
            return;
        }

        /* 判断是否写入成功 */
        if (user.save()) {
            setAttr("resgiterMsg", "注册成功");
            login();
        } else {
            setAttr("resgiterMsg", "注册失败");
            register();
        }
    }

    /**
     * 用户登录(添加session)
     */
    public void doLogin() {
        User user = getModel(User.class, "", true);


        String userName = user.getStr("username");
        String password = user.getStr("password");
        User tempUser = User.dao.findFirst("select * from " + User.TABLE_NAME + " where username = '" + userName + "'");
        /* 判断是否有这个人 */
        if (tempUser == null) {
            setAttr("loginMsg", "无此人");
            login();
            return;
        }

        /* 判断密码是否正确 */
        if (!tempUser.getStr("password").equals(password)) {
            setAttr("loginMsg", "密码错误");
            login();
            return;
        }

        /* 存放loginSessionName */
        getSession().setAttribute("loginSessionName",userName);
        redirect("/");
    }

    /**
     * 用户登出(去除session)
     */
    public void doLogout() {
        /* 删除loginSessionName */
        getSession().setAttribute("loginSessionName","");
        redirect("/");
    }
}
