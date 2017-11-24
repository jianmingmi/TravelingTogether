package widget.checknull;


import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;
import widget.response.ApiResponseKit;

import java.lang.reflect.Method;

/**
 * author:jmm
 * date:2017/3/14 11:28
 * e-mail:jianmingmi@foxmail.com
 */
public class CheckNullInterceptor implements Interceptor {
    @Override
    public void intercept(Invocation invocation) {
        if (checkNull(invocation)) {
            invocation.invoke();
        }
    }

    private boolean checkNull(Invocation invocation) {
        Method method = invocation.getMethod();

        // 如果没有注解，返回
        if (!method.isAnnotationPresent(CheckNull.class)) {
            return true;
        }

        CheckNull annotation = method.getAnnotation(CheckNull.class);
        String[] check = annotation.check();

        if (check == null || check.length == 0) {
            return true;
        }

        Controller controller = invocation.getController();
        for (int i = 0; i < check.length; i++) {
            String para = controller.getPara(check[i]);
            if (para == null || para.equals("")) {
                controller.renderJson(ApiResponseKit.me().getErrorResponse(check[i] + " 不能为空"));
                return false;
            }
        }
        return true;
    }
}
