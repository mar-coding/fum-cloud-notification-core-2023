package ir.fum.cloud.notification.core.domain.annotation.response.error;

import org.springframework.core.annotation.AliasFor;

import java.lang.annotation.*;

/**
 * InternalServerError response.
 * <p>
 * Annotating a service with this annotation will add an
 * ApiResponse to swagger spec with code of {@link this#CODE}
 */

@Documented
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface InternalServerError {

    String CODE = "500";

    @AliasFor("description")
    String value() default "خطای داخلی سرور!";

    @AliasFor("value")
    String description() default "خطای داخلی سرور!";

}