package stepdefinitions;

import io.cucumber.java.en.Then;
import utilities.ReusableMethods;

import java.io.IOException;

public class GenelStepDefinition {
    @Then("ekran görüntüsü al")
    public void ekran_görüntüsü_al() throws IOException {
        ReusableMethods.getScreenshot("Ekran goruntusu al");
    }
}
