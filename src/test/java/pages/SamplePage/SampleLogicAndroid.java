package pages.SamplePage;

public class SampleLogicAndroid extends SampleAbstract {

    public SampleLogicAndroid() {
        super();
    }

    @Override
    public void sampleClickOnSampleElement() {
        waitForVisibility(SAMPLE_ELEMENT);
        SAMPLE_ELEMENT.click();
    }
}
