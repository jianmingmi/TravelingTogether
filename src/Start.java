import com.jfinal.core.JFinal;

/**
 * author:jmm
 * date:2017/5/25 22:52
 * e-mail:jianmingmi@foxmail.com
 */
public class Start {
    // main启动
    public static void main(String[] args) {
        JFinal.start("web", 8090, "/");
    }

}
