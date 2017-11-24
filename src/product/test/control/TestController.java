package product.test.control;

import base.BaseController;
import product.test.model.Test;

import java.util.List;

/**
 * Created by Administrator on 2017/11/12.
 */
public class TestController extends BaseController {
    public void index() {
        List<Test> beans = Test.dao.find("select * from " + Test.TABLE_NAME);
        setAttr("beans", beans);
        renderJsp("/jsp/test/list.jsp");
    }

    public void addOrUpdate() {
        Test bean = getModel(Test.class, "", true);
        if (bean.getInt("id") != null) {
            bean.update();
        } else {
            bean.save();
        }
        redirect("/test");
    }

    public void del(){
        Test.dao.deleteById(getParaToInt(0));
        redirect("/test");
    }

    public void getBeanById(){
        Integer id = getParaToInt(0);
        setAttr("bean", Test.dao.findById(id));
        renderJsp("/jsp/test/form.jsp");
    }


}
