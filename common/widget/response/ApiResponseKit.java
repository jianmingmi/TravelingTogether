package widget.response;

import constant.SysConstant;
import util.JmmUtils;

/**
 * author:jmm
 * date:2017/5/25 19:02
 * e-mail:jianmingmi@foxmail.com
 * <p>
 * des:返回实体类
 */
public class ApiResponseKit {
    private static ApiResponse apiResponse;

    /**
     * 单例
     */
    private static ApiResponseKit apiResponseKit;

    private ApiResponseKit() {
    }

    public static ApiResponseKit me() {
        if (apiResponseKit == null) {
            synchronized (ApiResponseKit.class) {
                apiResponseKit = new ApiResponseKit();
            }
        }
        if (apiResponse == null) {
            synchronized (ApiResponse.class) {
                apiResponse = new ApiResponse();
            }
        }
        return apiResponseKit;
    }


    /**
     * 获取失败响应
     */
    public static ApiResponse getErrorResponse(String msg) {
        if (JmmUtils.isStrEmpty(msg)) {
            msg = SysConstant.ResponseMsg.ERROR;
        }
        return getResponse(SysConstant.ResponseCode.ERROR, msg, null);
    }

    /**
     * 获取成功响应
     */
    public static ApiResponse getSuccessResponse(Object data) {
        return getResponse(SysConstant.ResponseCode.SUCCESS, SysConstant.ResponseMsg.SUCCESS, data);
    }

    /**
     * 获取响应
     */
    public static ApiResponse getResponse(int code, String msg, Object data) {
        apiResponse.setCode(code);
        apiResponse.setMsg(msg);
        apiResponse.setData(data);
        return apiResponse;
    }
}