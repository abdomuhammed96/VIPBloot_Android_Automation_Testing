package pages.MainPage;

public abstract class MainPageAbstract extends MainPO {

    public MainPageAbstract() {
        super();
    }

    public abstract void sampleClickOnSampleElement();

    public abstract void scrollAndClickOnSampleElementByName(String name);

    public abstract void captureAndCompareEvents();

    public abstract boolean captureAndCompareParameter(String key, String value, int eventIndex);

}
