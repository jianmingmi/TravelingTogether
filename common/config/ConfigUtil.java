package config;

import constant.SysConstant;
import org.dom4j.Element;
import util.XmlUtils;

/**
 * author:jmm
 * date:2017/5/25 23:54
 * e-mail:jianmingmi@foxmail.com
 * <p>
 * des:config工具类
 */
public class ConfigUtil {

    private static Element rootElement;
    private static String classPath = SysConstant.Path.ROOT_PATH + "\\WEB-INF\\classes\\";
    private static String fileName = "config.xml";

    /**
     * 单例
     */
    private static ConfigUtil configUtil;

    private ConfigUtil() {
        if (rootElement == null) {
            rootElement = XmlUtils.getRootElementByFilePath(classPath + fileName);
        }
    }

    public static ConfigUtil getInstance() {
        if (configUtil == null) {
            synchronized (ConfigUtil.class) {
                configUtil = new ConfigUtil();
            }
        }
        return configUtil;
    }

    /**
     * 获取值
     */
    public String getString(String element) {
        if (rootElement == null) {
            rootElement = XmlUtils.getRootElementByFilePath(classPath + fileName);
        }
        Element tempElement = rootElement.element(element);
        if (tempElement == null) {
            return null;
        }
        return tempElement.getStringValue();
    }

    public boolean getBoolean(String element) {
        if (rootElement == null) {
            rootElement = XmlUtils.getRootElementByFilePath(classPath + fileName);
        }
        Element tempElement = rootElement.element(element);
        if (tempElement == null) {
            return false;
        }
        String stringValue = tempElement.getStringValue();
        return Boolean.valueOf(stringValue);
    }
}
