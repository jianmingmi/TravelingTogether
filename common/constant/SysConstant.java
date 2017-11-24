package constant;

import com.jfinal.kit.PathKit;

/**
 * author:jmm
 * date:2017/5/25 18:36
 * e-mail:jianmingmi@foxmail.com
 */
    public interface SysConstant {
        interface ResponseCode {
            int SUCCESS = 200;
            int ERROR = 500;
            int NOT_FOUND = 404;
            int OTHER = 110;
        }

    interface ResponseMsg {
        String SUCCESS = "请求成功";
        String ERROR = "请求失败";
    }

    interface Path {
        String ROOT_PATH = PathKit.getWebRootPath();
    }

}
