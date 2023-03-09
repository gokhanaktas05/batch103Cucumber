@failed_scenario
Feature: hooks_test
  Background: googlea_git
    Given kullanici google gider
@testrunner
  Scenario: TC01_google_iphone_arama
    When kullanici "iphone" için arama yapar
    When ekran görüntüsü al
    Then sonuclarda iphone oldugunu dogrular
    Then driver i kapat
@testrunner

  Scenario: TC02_google_tesla_arama
    When kullanici "tesla" için arama yapar
    Then kullanici tesla icin arama yapar
    Then ekran görüntüsü al
    Then driver i kapat
