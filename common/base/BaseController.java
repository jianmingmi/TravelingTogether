package base;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import widget.checknull.CheckNullInterceptor;

/**
 * author:jmm
 * date:2017/3/13 19:25
 * e-mail:jianmingmi@foxmail.com
 */
@Before(CheckNullInterceptor.class)
public class BaseController extends Controller {

}
