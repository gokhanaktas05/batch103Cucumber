@second_feature_search
  Feature: Second feature file

    Background: google_sayfasina_git
      Given kullanici google gider
@smoke
      Scenario: TC_01_bmw_arama
        When kullanici "bmw" için arama yapar
        Then sonuclarda "bmw" oldugunu dogrular
        Then driver i kapat
@smoke
    Scenario: TC_02_toyota_arama
      When kullanici "toyota" için arama yapar
      Then sonuclarda "toyota" oldugunu dogrular
      Then driver i kapat
@smoke
    Scenario: TC_03_mercedes_arama
      When kullanici "mercedes" için arama yapar
      Then sonuclarda "mercedes" oldugunu dogrular
      Then driver i kapat