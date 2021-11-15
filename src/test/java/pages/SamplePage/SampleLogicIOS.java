package pages.SamplePage;

public class SampleLogicIOS extends SampleAbstract {

    public SampleLogicIOS() {
        super();
    }

    @Override
    public void sampleClickOnSampleElement() {
        waitForVisibility(SAMPLE_ELEMENT);
        SAMPLE_ELEMENT.click();
    }
}
