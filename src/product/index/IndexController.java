package product.index;

import base.BaseController;

/**
 * Created by Administrator on 2017/11/12.
 */
public class IndexController extends BaseController {
    public void index() {
        renderJsp("/jsp/index/main.jsp");
    }
}
