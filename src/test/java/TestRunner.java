import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;


@RunWith(Cucumber.class)
@CucumberOptions(
        monochrome = true,
        features = {"src/test/resources/features"},

        /* Android RN */
//        features = {"src/test/resources/features/AndroidRN_MainFeature",
//                "src/test/resources/features/AndroidRN_NavigationPage",
//                "src/test/resources/features/AndroidRN_UITracking"},

        /* WEB */
//        features = {"src/test/resources/features/WEB_MainFeatures"},

        plugin = {"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"},
        glue = {"stepdefs", "utils", "pages", "core", "base"}
)
public class TestRunner {

    @BeforeClass
    public static void setup() {

    }
}
