package pages.androidNative.UIEventsPage;

import com.google.gson.JsonObject;
import io.appium.java_client.MobileBy;
import io.appium.java_client.TouchAction;
import io.appium.java_client.touch.LongPressOptions;
import io.appium.java_client.touch.offset.ElementOption;
import io.appium.java_client.touch.offset.PointOption;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.touch.TouchActions;

import java.time.Duration;

import static io.appium.java_client.touch.LongPressOptions.longPressOptions;
import static io.appium.java_client.touch.offset.ElementOption.element;

public class AndroidNativeUIEventsPageLogic extends AndroidNativeUIEventsPageAbstract {
    TouchAction action;
    public AndroidNativeUIEventsPageLogic() {
        super();
    }



    @Override
    public void SelectElementFromSpinner(String key) throws InterruptedException {
        waitForVisibility(Spinner);
        Spinner.click();
        Thread.sleep(200);
        WebElement optionTwo=driver.findElement(By.xpath("/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView[2]"));
        optionTwo.click();
    }

 @Override
 public void ScrollToMyElement(String Name){

         driver.findElement(MobileBy.AndroidUIAutomator(
                 "new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().textContains(\""
                         + Name +
                         "\").instance(0))"));
         try { Thread.sleep(1000); } catch (Exception ign) {}
     }



    @Override
    public void DragAndDrop() {

         action = new TouchAction(driver);
        action.longPress(new LongPressOptions().withElement(new
                ElementOption().withElement(SourceDragAndDrop))).perform();
        action.moveTo(new ElementOption().withElement(DestDragAndDrop)).perform().release();

    }
    @Override
    public void Slide() {
        //Get start point of seekbar.
        int startX = Slider.getLocation().getX();

        //Get vertical location of seekbar.
        int yAxis = Slider.getLocation().getY();

        //Set slidebar move to position.
        // this number is calculated based on (offset + 3/4width)
        int moveToXDirectionAt = 70 + startX;

        //Moving seekbar using TouchAction class.
        // action=new TouchAction(driver);
        action = new TouchAction(driver).longPress(longPressOptions
                ().withElement(element(Slider)).withDuration(Duration.ofMillis(1000))).moveTo(PointOption.point(moveToXDirectionAt,yAxis)).release().perform();

        // action.longPress(startX,yAxis).release().perform();
    }

    public void SetStarsOnRatingApp()
    {
        //Locate fiveStarRatingbar.

        //Get start point of fiveStarRatingbar.
        int startX = RatingBar.getLocation().getX();
        System.out.println(startX);
        //Get end point of fiveStarRatingbar.
        int endX = RatingBar.getSize().getWidth();
        System.out.println(endX);
        //Get vertical location of fiveStarRatingbar.
        int yAxis = RatingBar.getLocation().getY();
        //Set fiveStarRatingbar tap position to set Rating = 4 star.
        //You can use endX * 0.2 for 1 star, endX * 0.4 for 2 star, endX * 0.6 for 3 star, endX * 0.8 for 4 star, endX * 1 for 5 star.
        int tapAt = (int) (endX * 0.4);
        //Set fiveStarRatingbar to Rating = 4 star using TouchAction class.
        action=new TouchAction(driver);
        action.press(PointOption.point(tapAt,yAxis)).release().perform();


    }


    @Override
    public void clickOnUIEventsPage(String arg0) {
        switch (arg0){
            case "Female_RadioButton":
                waitForVisibility(Female_RadioButton);
                Female_RadioButton.click();
                break;
            case "ON_OFF_btn":
                waitForVisibility(ON_OFF_btn);
                ON_OFF_btn.click();
                break;
            case "CalenderView":
                waitForVisibility(CalenderView);
                CalenderView.click();
                break;
            case "TouchListener":
                waitForVisibility(TouchListener);
                TouchListener.click();
                break;
            case "DatePicker":
                waitForVisibility(DatePicker);
                DatePicker.click();
                break;
            case "NumPicker":
                waitForVisibility(NumPicker);
                NumPicker.click();
                break;
            case "AlertDialog":
                waitForVisibility(AlertDialog);
                AlertDialog.click();
                break;
            case "TimePicker":
                waitForVisibility(TimePicker);
                TimePicker.click();
                break;
            case "Containers":
                waitForVisibility(Containers);
                Containers.click();
                break;
            case "CertainDate":
                waitForVisibility(CertainDateForCalenderView);
                CertainDateForCalenderView.click();
                break;
            case "OKButtonForDatePicker":
                waitForVisibility(OKButtonForDatePicker);
                OKButtonForDatePicker.click();
                break;
            case "OKButtonForAlert":
                waitForVisibility(OKButtonForAlert);
                OKButtonForAlert.click();
                break;
            case "CancelButtonForAlert":
                waitForVisibility(CancelButtonForAlert);
                CancelButtonForAlert.click();
                break;
            case "SelectingNumber":
                waitForVisibility(SelectingNumber);
                SelectingNumber.click();
                break;
            case "PopUpMenu":
                ScrollToMyElement("SETTINGS");
                waitForVisibility(PopUpMenu);
                PopUpMenu.click();
                break;
            case "SettingsForPopUpMenu":
                waitForVisibility(SettingsForPopUpMenu);
                SettingsForPopUpMenu.click();
                break;
            case "RelativeLayoutsForContainers":
                waitForVisibility( RelativeLayoutsForContainers);
                RelativeLayoutsForContainers.click();
                break;

            case "FrameLayoutsForContainers":
                waitForVisibility( FrameLayoutsForContainers);
                FrameLayoutsForContainers.click();
                break;


            case "DragAndDrop":
                ScrollToMyElement("SETTINGS");
                waitForVisibility(DragAndDrop);
                DragAndDrop.click();
                break;

            case "BasicUIElements":
                ScrollToMyElement("SETTINGS");
                waitForVisibility(BasicUIElements);
                BasicUIElements.click();
                break;

            case "ExpandableListView":
                ScrollToMyElement("SETTINGS");
                waitForVisibility( ExpandableListView);
                ExpandableListView.click();
                break;

            case "SelectingItemForExpandableView":
                waitForVisibility( SelectingItemForExpandableView);
                SelectingItemForExpandableView.click();
                break;

            case "SelectingSubItemForExpandableView":
                waitForVisibility( SelectingSubItemForExpandableView);
                SelectingSubItemForExpandableView.click();
                break;

            case "TextViewForBasicUIElements":
                waitForVisibility( TextViewForBasicUIElements);
                TextViewForBasicUIElements.click();
                break;



            default:
        }
    }
}