package product.test.model;

import com.jfinal.plugin.activerecord.Model;

/**
 * Created by Administrator on 2017/11/12.
 */
public class Test extends Model<Test> {
    public static final String TABLE_NAME = "test";
    public static final Test dao = new Test().dao();
}
