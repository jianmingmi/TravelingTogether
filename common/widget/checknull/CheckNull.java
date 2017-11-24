package widget.checknull;

import java.lang.annotation.*;

@Documented
@Inherited
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface CheckNull {
    String[] check();
}