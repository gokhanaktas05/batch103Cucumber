@scenario_outline
Feature: search_outline

  Background: google_sayfasina_git
    Given kullanici google gider
@regression
    Scenario Outline: <"search_item">_search
      When kullanici "<search_item>" için arama yapar
      Then sonuclarda "<search_item>" oldugunu dogrular
      Then driver i kapat

      Examples:test_data
      |search_item|
      |   teapot  |
      |   bmw     |
      |   toyota  |
      |  mercedes |