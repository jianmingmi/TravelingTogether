package product.user.model;

import com.jfinal.plugin.activerecord.Model;

/**
 * Created by Administrator on 2017/11/12.
 */
public class User extends Model<User> {
    public static final String TABLE_NAME = "user";
    public static final User dao = new User();
}
