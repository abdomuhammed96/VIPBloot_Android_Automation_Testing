package pages.androidNative.UIEventsPage;

import com.google.gson.JsonObject;

public abstract class AndroidNativeUIEventsPageAbstract extends UIEventsPO {

    public AndroidNativeUIEventsPageAbstract() {
        super();
    }

    public abstract void SelectElementFromSpinner(String arg0) throws InterruptedException;

    public abstract void Slide();

    public abstract void ScrollToMyElement(String Name);

    public abstract void SetStarsOnRatingApp();

    public abstract void DragAndDrop();

    public abstract void clickOnUIEventsPage(String arg0);






}
