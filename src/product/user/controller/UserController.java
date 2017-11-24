package product.user.controller;

import base.BaseController;
import product.user.model.User;

import java.util.List;

/**
 * Created by Administrator on 2017/11/12.
 */
public class UserController extends BaseController {
    public void register(){
        render("/index.html");
    }
    public void login(){
        render("/login.html");
    }
    public void submit(){
        String name = getPara("username");
        String password = getPara("password");

        List users = User.dao.find("SELECT * FROM user WHERE username = '"+name+"' AND password = '"+password+"'");
        setAttr("users", users);
        if(users.size() > 0){
            System.out.println("登录成功");
        }else{
            System.out.println("登录失败");
        }
        login();
    }
    public void add(){
        User user = getModel(User.class, "user");
        user.save();

        System.out.println("注册成功");
        login();
    }


}
