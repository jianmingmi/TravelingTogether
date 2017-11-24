package widget.response;

/**
 * author:jmm
 * date:2017/5/25 19:02
 * e-mail:jianmingmi@foxmail.com
 * <p>
 * des:返回实体类
 */
public class ApiResponse {
    private int code;
    private String msg;
    private Object data;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

}