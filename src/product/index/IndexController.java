package product.index;

import base.BaseController;
import product.test.model.Test;

import java.util.List;

/**
 * Created by Administrator on 2017/11/12.
 */
public class IndexController extends BaseController {
    public void index(){
        renderText("hello");
    }
}
