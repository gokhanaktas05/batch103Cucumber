@personel_olusturma
  Feature:personel_olusturma

    Scenario Outline: TC01_personel_olustur
      Given kullanıcı "https://editor.datatables.net/" gider
      When kullanıcı New butonuna tıklar
      And kullanıcı first name "<firstname>" girer
      And ekran görüntüsü al
      And kullanıcı Last name "<Lastname>" girer
      And kullanıcı Position "<Positions>" girer
      And kullanıcı Office "<Office>" girer
      And kullanıcı Extension "<Extension>" girer
      And kullanıcı Start Date "<StartDate>" girer
      And kullanıcı Salary "<Salary>" girer
      And kullanıcı create butonuna tıklar
      And kullanıcı search "<firstname>" girer
      And kullanıcı sonucu "<firstname>" dogrular
      Then close the application


      Examples: personel_bilgileri
      |firstname|Lastname|Positions|Office|Extension|StartDate|Salary|
      |  hamza  |aktas   |Manager  |amasya|123      |2023-03-01|100000|
      |  aygul  |aktas   |teacher  |kazan|1234      |2023-03-01|100000|
      |  gokhan  |aktas   |hotel  |amasya|123      |2023-03-01|100000|
