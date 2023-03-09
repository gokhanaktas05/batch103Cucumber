package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import pages.GooglePage;
import utilities.ConfigReader;
import utilities.Driver;

public class GoogleStepDefinations {
    GooglePage googlePage = new GooglePage();

    @Given("kullanici google gider")
    public void kullanici_google_gider() {
        //Write the Java Code
        Driver.getDriver().get(ConfigReader.getProperty("google_url"));
    }

    @When("kullanici iphone için arama yapar")
    public void kullanici_iphone_için_arama_yapar() {
        googlePage.searchbox.sendKeys("İphone" + Keys.ENTER);
    }

    @Then("sonuclarda iphone oldugunu dogrular")
    public void sonuclarda_iphone_oldugunu_dogrular() {

        Assert.assertTrue(Driver.getDriver().getTitle().contains("İphone"));
    }

    @Then("driver i kapat")
    public void driver_i_kapat() {
        Driver.closeDriver();
    }

    @When("kullanici teapot icin arama yapar")
    public void kullanici_teapot_icin_arama_yapar() {
        googlePage.searchbox.sendKeys("teapot" + Keys.ENTER);
    }

    @Then("sonuclarda teapot oldugunu dogrular")
    public void sonuclarda_teapot_oldugunu_dogrular() {
        Assert.assertTrue(Driver.getDriver().getTitle().contains("teapot"));
    }

    @When("kullanici tesla icin arama yapar")
    public void kullanici_tesla_icin_arama_yapar() {
        googlePage.searchbox.sendKeys("tesla"+Keys.ENTER);
    }

    @When("sonuclarda tesla oldugunu dogrular")
    public void sonuclarda_tesla_oldugunu_dogrular() {
    Assert.assertTrue(Driver.getDriver().getTitle().contains("tesla"));
    }
    @When("kullanici {string} için arama yapar")
    public void kullanici_için_arama_yapar(String string) {
      googlePage.searchbox.sendKeys(string+Keys.ENTER);
    }
    @Then("sonuclarda {string} oldugunu dogrular")
    public void sonuclarda_oldugunu_dogrular(String string) {
    Assert.assertTrue(Driver.getDriver().getTitle().contains(string));
    }

}