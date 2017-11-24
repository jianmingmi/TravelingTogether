
package util;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * author:jmm
 * date:2017/1/11 11:25
 * e-mail:jianmingmi@foxmail.com
 */
public class JmmUtils {

    // ====================================================手机号正则==========================================================

    /**
     * 是否为手机号
     */
    public static boolean isPhoneNumber(String phoneNumber) {
        // 使用正则表达式判断是否为手机号
        Pattern pattern = Pattern.compile("^(0|86|17951)?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$");
        Matcher matcher = pattern.matcher(phoneNumber);
        return matcher.matches();
    }

    /**
     * 获取随机四位验证码
     */
    public static String getRandomCode() {
        Random random = new Random();
        String code = "";
        for (int i = 0; i < 4; i++) {
            int temp = random.nextInt(10);
            code += temp;
        }
        return code;
    }

    // ====================================================获取泛型参数类型==========================================================

    public static <T> T getTObject(Object o, int index) {
        Type type = o.getClass().getGenericSuperclass();
        if (type instanceof ParameterizedType) {
            ParameterizedType paramType = (ParameterizedType) type;
            Type[] args = paramType.getActualTypeArguments();
            if (args != null && args.length > 0) {
                Type arg = args[index];
                if (arg instanceof Class) {
                    try {
                        return ((Class<T>) arg).newInstance();
                    } catch (InstantiationException e) {
                        e.printStackTrace();
                    } catch (IllegalAccessException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return null;
    }

    public static Class getGenericType(Object o, int index) {
        Type genType = o.getClass().getGenericSuperclass();
        if (!(genType instanceof ParameterizedType)) {
            return Object.class;
        }
        Type[] params = ((ParameterizedType) genType).getActualTypeArguments();
        if (index >= params.length || index < 0) {
            throw new RuntimeException("Index outof bounds");
        }
        if (!(params[index] instanceof Class)) {
            return Object.class;
        }
        return (Class) params[index];
    }

    // ====================================================验证为空==========================================================

    /**
     * 验证String为空
     */
    public static boolean isStrEmpty(String str) {
        if (str == null || "".equals(str)) {
            return true;
        }
        return false;
    }

    /**
     * 验证List
     */
    public static boolean isListEmpty(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    /**
     * 验证Map
     */
    public static boolean isMapEmpty(Map<?, ?> map) {
        return map == null || isListEmpty(map.keySet());
    }

    // ====================================================是否为闰年==========================================================

    /**
     * 是否为闰年
     */
    public static boolean isRunyear(int year) {
        if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {//是闰年
            return true;
        } else {
            return false;
        }
    }
}
