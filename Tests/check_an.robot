*** Settings ***
Library  SeleniumLibrary

*** Variables ***

#MainPage

${catalogButton}    //div[@data-meta-name= 'UserButtonContainer' and @class= 'css-1vb2hqj e38q5fc0']
${closePopUp}  //button[@class = 'e1nu7pom0 css-cmjyur e4mggex0' and @data-meta-name= 'Popup__close-button']
${inputLogin}    //span[contains(text(),'Войти')]/parent::div/parent::div[@class='css-1vb2hqj e38q5fc0']
${inputPassword}    //input[@name='pass']/ancestor::span
${enterButton}    //button[@class= 'e4uhfkv0 css-1nvnwij e4mggex0' and @data-meta-disabled= 'false']
${lkButton}    //div[@class='css-1cs774w e10bp8150']/div[1]/div
${profileMenuButtonMain}    //a[@data-meta-name='ProfileMenu_Item_Мой профиль']
${profileMenuButtonDelivery}    //a[@data-meta-name='ProfileMenu_Item_Доставка']

#ProfilePage

${profileMenuButtonProfile}    //a[@href='/profile/delivery/']
${profileMenuButtonAddAdress}    //span[text()='Добавить адрес']/parent::span/parent::button
${profileMenuButtonAddReciever}    //span[text()='Добавить получателя']/parent::span/parent::button

#Заполнение формы нового адреса

${inputAdressCity}    //div[@class='css-0 eskt9ku0']/div[1]//input
${inputAdressCityName}    Мос
${inputAdressCityName2}    Зеленогр
${inputAdressCityPick}    //div[contains(text(),'
${closeExpr}    ')]
${inputAdressCityPick2}    //div[contains(text(),'
${inputAdressStreet}    //div[@class='css-0 eskt9ku0']/div[2]//input
${inputAdressStreetPick}    //div[contains(text(),'
${inputAdressStreetName}    Каширское
${inputAdressStreetPick2}    //div[contains(text(),'
${inputAdressStreetName2}    Радио
${inputAdressHouse}    //div[@class='css-0 eskt9ku0']/div[3]//input
${inputAdressHouseName}    23
${inputAdressHouseName2}    10
${inputAdressBuilding}    //div[@class='css-0 eskt9ku0']/div[4]//input
${inputAdressBuildingName}    3
${inputAdressBuildingName2}    11
${inputAdressCorpus}    //div[@class='css-0 eskt9ku0']/div[5]//input
${inputAdressCorpusName}    2
${inputAdressCorpusName2}    12
${inputAdressEntrance}    //div[@class='css-0 eskt9ku0']/div[6]//input
${inputAdressEntranceName}    5
${inputAdressEntranceName2}    13
${inputAdressFloor}    //div[@class='css-0 eskt9ku0']/div[7]//input
${inputAdressFloorName}    12
${inputAdressFloorName2}    14
${inputAdressApartment}    //div[@class='css-0 eskt9ku0']/div[8]//input
${inputAdressapArtmentName}    69
${inputAdressapArtmentName2}    15
${addButton}    //div[@class='css-0 el7xabe0']/button
${editAdressButton}    //h4[text()='Адреса']/parent::div//label[1]//button[1]
${deleteAdressButton}    //h4[text()='Адреса']/parent::div//label[1]//button[2]
${saveEditAdressButton}    //div[@class='css-0 el7xabe0']/button[1]
${cancelEditAdresddButton}    //div[@class='css-0 el7xabe0']/button[2]
${yesDeleteAdressButton}    //div[@class='css-1ej6fkx e1x4yvjg0']//button[1]
${cancelDeleteAdressButton}    //div[@class='css-1ej6fkx e1x4yvjg0']//button[2]
${exitPopUpButton}    //div[@class='css-98aaly eo8oahl0']/button

#    Добавление получателя

${addRecieverName}    //div[@class='css-0 e1rmg5120']/div[1]//input
${RecieverName}    сальвадор
${RecieverName2}    дали
${addRecieverSurname}    //div[@class='css-0 e1rmg5120']/div[2]//input
${RecieverSurname}    пабло
${RecieverSurname2}    пикассо
${addRecieverPhone}    //div[@class='css-0 e1rmg5120']/div[3]//input
${RecieverPhone}    79876541232
${RecieverPhone2}    79876541233
${addRecieverAlterPhone}    //div[@class='css-0 e1rmg5120']/div[4]//input
${RecieverAlterPhone}    79876541234
${RecieverAlterPhone2}    79876541235
${addReciever}    //div[@class='css-0 e1bg2yhp0']/button
${editRecieverButton}    //h4[text()='Получатели']/parent::div//label[1]//button[1]
${deleteRecieverButton}    //h4[text()='Получатели']/parent::div//label[1]//button[2]
${saveEditRecieverButton}    //div[@class='css-0 e1bg2yhp0']/button[1]
${cancelEditRecieverButton}    //div[@class='css-0 e1bg2yhp0']/button[2]
${yesDeleteRecieverButton}    //div[@class='css-0 e2tmuw30']/button[1]
${cancelDeleteRecieverButton}    //div[@class='css-0 e2tmuw30']/button[2]
${testNumber}    1
${testSymbol}    а

#Проверки
${createdAdressCheck}    //span[contains(text(),'12')]/preceding::span[contains(text(),(5))]/preceding::span[contains(text(),'23') and contains(text(),'Москва') and contains(text(),'Каширское')]/parent::div
${editedAdressCheck}    //span[contains(text(),'14')]/preceding::span[contains(text(),(13))]/preceding::span[contains(text(),'10') and contains(text(),'Зеленоград') and contains(text(),'улица Радио')]/parent::div
${createdAdressPartialCheck}    //span[contains(text(),'23') and contains(text(),'Москва') and contains(text(),'Каширское')]/parent::div
${editedAdressPartialCheck1}    //span[contains(text(),'${inputAdressHouseName2}') and contains(text(),'${inputAdressCityName2}') and contains(text(),'${inputAdressStreetName2}')]/parent::div
${addButtonAdressDisabled}    //div[@class='css-0 el7xabe0']/button[@data-meta-disabled='true']
${createdRecieverCheck}    //span[contains(text(),(541232))]/preceding::span[contains(text(),'сальвадор пабло')]/parent::div
${addButtonRecieverDisabled}    //div[@class='css-0 e1bg2yhp0']/button[@data-meta-disabled='true']
${editedRecieverCheck}    //span[contains(text(),(541233))]/preceding::span[contains(text(),'дали пикассо')]/parent::div

*** Test Cases ***

Добавление нового адреса(все поля)

  startBrowserAndMaximize
  loginAndEnterLk
  Click Element    xpath=${profileMenuButtonAddAdress}
  sleep    2s
  fillAdress    ${inputAdressCityName}  ${inputAdressCityPick}    ${closeExpr}   ${inputAdressStreetName}  ${inputAdressStreetPick}  ${inputAdressHouseName}  ${inputAdressBuildingName}  ${inputAdressCorpusName}  ${inputAdressEntranceName}   ${inputAdressFloorName}   ${inputAdressapArtmentName}
  wait until page contains element   xpath=${addButton}
  Click Element    xpath=${addButton}
  sleep    1s
  reload page
  wait until page contains element    xpath=${createdAdressCheck}
  sleep    1s
  deleteAdress
  close browser

Добавление нового адреса(только обязательные поля)

  startBrowserAndMaximize
  loginAndEnterLk
  Click Element    xpath=${profileMenuButtonAddAdress}
  sleep    2s
  fillAdressPartial    ${inputAdressCityName}  ${inputAdressCityPick}    ${closeExpr}   ${inputAdressStreetName}  ${inputAdressStreetPick}  ${inputAdressHouseName}
  wait until page contains element   xpath=${addButton}
  Click Element    xpath=${addButton}
  sleep    1s
  reload page
  wait until page contains element    xpath=${createdAdressPartialCheck}
  sleep    1s

  deleteAdress
  close browser

Добавление нового адреса(без обязательных полей - город)

  startBrowserAndMaximize
  loginAndEnterLk
  Click Element    xpath=${profileMenuButtonAddAdress}
  sleep    2s
  fillAdressPartialNoCity    ${inputAdressCityName}  ${inputAdressCityPick}    ${closeExpr}   ${inputAdressStreetName}  ${inputAdressStreetPick}  ${inputAdressHouseName}  ${inputAdressBuildingName}  ${inputAdressCorpusName}  ${inputAdressEntranceName}   ${inputAdressFloorName}   ${inputAdressapArtmentName}
  press keys    xpath=${inputAdressCity}    ${testNumber}
  press keys    xpath=${inputAdressCity}    BACKSPACE
  sleep    2s
  element should be disabled    xpath=${addButton}
  sleep    1s
  close browser

Добавление нового адреса(без обязательных полей - улица)

  startBrowserAndMaximize
  loginAndEnterLk
  Click Element    xpath=${profileMenuButtonAddAdress}
  sleep    2s
  fillAdressPartialNoStreet    ${inputAdressCityName}  ${inputAdressCityPick}    ${closeExpr}   ${inputAdressStreetName}  ${inputAdressStreetPick}  ${inputAdressHouseName}  ${inputAdressBuildingName}  ${inputAdressCorpusName}  ${inputAdressEntranceName}   ${inputAdressFloorName}   ${inputAdressapArtmentName}
  press keys    xpath=${inputAdressStreet}     ${testSymbol}
  press keys    xpath=${inputAdressStreet}    BACKSPACE
  sleep    2s
  element should be disabled    xpath=${addButton}
  sleep    1s
  close browser

Добавление нового адреса(без обязательных полей - дом)

  startBrowserAndMaximize
  loginAndEnterLk
  Click Element    xpath=${profileMenuButtonAddAdress}
  sleep    2s
  fillAdressPartialNoHouse    ${inputAdressCityName}  ${inputAdressCityPick}    ${closeExpr}   ${inputAdressStreetName}  ${inputAdressStreetPick}  ${inputAdressHouseName}  ${inputAdressBuildingName}  ${inputAdressCorpusName}  ${inputAdressEntranceName}   ${inputAdressFloorName}   ${inputAdressapArtmentName}
  press keys    xpath=${inputAdressHouse}     ${testNumber}
  press keys    xpath=${inputAdressHouse}    BACKSPACE
  sleep    2s
  element should be disabled    xpath=${addButton}
  close browser

Редактирование адреса(все поля)

  startBrowserAndMaximize
  loginAndEnterLk
  Click Element    xpath=${profileMenuButtonAddAdress}
  sleep    2s
  fillAdress    ${inputAdressCityName}  ${inputAdressCityPick}    ${closeExpr}   ${inputAdressStreetName}  ${inputAdressStreetPick}  ${inputAdressHouseName}  ${inputAdressBuildingName}  ${inputAdressCorpusName}  ${inputAdressEntranceName}   ${inputAdressFloorName}   ${inputAdressapArtmentName}
  wait until page contains element   xpath=${addButton}
  Click Element    xpath=${addButton}
  sleep    1s
  reload page
  wait until page contains element    xpath=${editAdressButton}
  CLICK ELEMENT    xpath=${editAdressButton}
  sleep    1s
  fillAdress    ${inputAdressCityName2}  ${inputAdressCityPick2}  ${closeExpr}  ${inputAdressStreetName2}  ${inputAdressStreetPick2}  ${inputAdressHouseName2}  ${inputAdressBuildingName2}    ${inputAdressCorpusName2}  ${inputAdressEntranceName2}   ${inputAdressFloorName2}   ${inputAdressapArtmentName2}
  wait until page contains element   xpath=${saveEditAdressButton}
  Click Element    xpath=${saveEditAdressButton}
  sleep    2s
  wait until page contains element    xpath=${editedAdressCheck}
  reload page

  wait until page contains element    xpath=${deleteAdressButton}
  deleteAdress
  close browser

Редактирование адреса(только обязательные поля)

  startBrowserAndMaximize
  loginAndEnterLk
  Click Element    xpath=${profileMenuButtonAddAdress}
  sleep    2s
  fillAdressPartial    ${inputAdressCityName}  ${inputAdressCityPick}    ${closeExpr}   ${inputAdressStreetName}  ${inputAdressStreetPick}  ${inputAdressHouseName}
  wait until page contains element   xpath=${addButton}
  Click Element    xpath=${addButton}
  sleep    1s
  reload page
  wait until page contains element    xpath=${editAdressButton}
  CLICK ELEMENT    xpath=${editAdressButton}
  sleep    1s
  fillAdressPartial    ${inputAdressCityName2}  ${inputAdressCityPick2}  ${closeExpr}  ${inputAdressStreetName2}  ${inputAdressStreetPick2}  ${inputAdressHouseName2}
  wait until page contains element   xpath=${saveEditAdressButton}
  Click Element    xpath=${saveEditAdressButton}
  sleep    2s
  wait until page contains element    xpath=${editedAdressPartialCheck1}
  reload page

  wait until page contains element    xpath=${deleteAdressButton}
  deleteAdress
  close browser

Редактирование адреса(только обязательные поля+новые)

  startBrowserAndMaximize
  loginAndEnterLk
  Click Element    xpath=${profileMenuButtonAddAdress}
  sleep    2s
  fillAdressPartial    ${inputAdressCityName}  ${inputAdressCityPick}    ${closeExpr}   ${inputAdressStreetName}  ${inputAdressStreetPick}  ${inputAdressHouseName}
  wait until page contains element   xpath=${addButton}
  Click Element    xpath=${addButton}
  sleep    1s
  reload page
  wait until page contains element    xpath=${editAdressButton}
  CLICK ELEMENT    xpath=${editAdressButton}
  sleep    1s
  fillAdress    ${inputAdressCityName2}  ${inputAdressCityPick2}  ${closeExpr}  ${inputAdressStreetName2}  ${inputAdressStreetPick2}  ${inputAdressHouseName2}  ${inputAdressBuildingName2}    ${inputAdressCorpusName2}  ${inputAdressEntranceName2}   ${inputAdressFloorName2}   ${inputAdressapArtmentName2}
  wait until page contains element   xpath=${saveEditAdressButton}
  Click Element    xpath=${saveEditAdressButton}
  sleep    2s
  wait until page contains element    xpath=${editedAdressCheck}
  reload page

  wait until page contains element    xpath=${deleteAdressButton}
  deleteAdress
  close browser

Удаление адреса

  startBrowserAndMaximize
  loginAndEnterLk
  Click Element    xpath=${profileMenuButtonAddAdress}
  sleep    2s
  fillAdress    ${inputAdressCityName}  ${inputAdressCityPick}    ${closeExpr}   ${inputAdressStreetName}  ${inputAdressStreetPick}  ${inputAdressHouseName}  ${inputAdressBuildingName}  ${inputAdressCorpusName}  ${inputAdressEntranceName}   ${inputAdressFloorName}   ${inputAdressapArtmentName}
  wait until page contains element   xpath=${addButton}
  Click Element    xpath=${addButton}
  sleep    1s
  reload page
  wait until page contains element    xpath=${createdAdressCheck}
  sleep    1s
  deleteAdress
  sleep    1s
  wait until page does not contain element    xpath=${createdAdressCheck}
  sleep    1s
  close browser

Добавление нового получателя(все поля)

  startBrowserAndMaximize
  loginAndEnterLk
  wait until element is visible    xpath=${profileMenuButtonAddReciever}
  click element    xpath=${profileMenuButtonAddReciever}
  sleep    2s
  fillReciever    ${RecieverName}    ${RecieverSurname}    ${RecieverPhone}    ${RecieverAlterPhone}
  sleep    2s
  click element    xpath=${addReciever}
  sleep    1s
  reload page
  wait until page contains element    xpath=${createdRecieverCheck}
  sleep    1s

  deleteReciever
  close browser

Добавление нового получателя(только обязательные поля)

  startBrowserAndMaximize
  loginAndEnterLk
  wait until element is visible    xpath=${profileMenuButtonAddReciever}
  click element    xpath=${profileMenuButtonAddReciever}
  sleep    2s
  fillRecieverPartial    ${RecieverName}    ${RecieverSurname}    ${RecieverPhone}
  sleep    2s
  click element    xpath=${addReciever}
  sleep    1s
  reload page
  wait until page contains element    xpath=${createdRecieverCheck}
  sleep    1s

  deleteReciever
  close browser

Добавление нового получателя(без обязательных полей - имя)

  startBrowserAndMaximize
  loginAndEnterLk
  wait until element is visible    xpath=${profileMenuButtonAddReciever}
  click element    xpath=${profileMenuButtonAddReciever}
  sleep    2s
  fillRecieverPartialNoName    ${RecieverName}    ${RecieverSurname}    ${RecieverPhone}
  sleep    2s
  press keys    xpath=${addRecieverName}     ${testSymbol}
  sleep    2s
  press keys    xpath=${addRecieverName}    BACKSPACE
  sleep    2s
  element should be disabled    xpath=${addReciever}
  sleep    1s
  close browser

Добавление нового получателя(без обязательных полей - фамилия)

  startBrowserAndMaximize
  loginAndEnterLk
  wait until element is visible    xpath=${profileMenuButtonAddReciever}
  click element    xpath=${profileMenuButtonAddReciever}
  sleep    2s
  fillRecieverPartialNoSurname    ${RecieverName}    ${RecieverSurname}    ${RecieverPhone}
  sleep    2s
  press keys    xpath=${addRecieverSurname}      ${testSymbol}
  sleep    2s
  press keys    xpath=${addRecieverSurname}    BACKSPACE
  sleep    2s
  element should be disabled    xpath=${addReciever}
  sleep    1s
  close browser

Добавление нового получателя(без обязательных полей - телефон)

  startBrowserAndMaximize
  loginAndEnterLk
  wait until element is visible    xpath=${profileMenuButtonAddReciever}
  click element    xpath=${profileMenuButtonAddReciever}
  sleep    2s
  fillRecieverPartialNoPhone    ${RecieverName}    ${RecieverSurname}    ${RecieverPhone}
  sleep    2s
  press keys    xpath=${addRecieverPhone}     ${testNumber}
  sleep    2s
  press keys    xpath=${addRecieverPhone}    BACKSPACE
  sleep    2s
  element should be disabled    xpath=${addReciever}
  sleep    1s
  close browser

Редактирование получателя(все поля)

  startBrowserAndMaximize
  loginAndEnterLk
  wait until element is visible    xpath=${profileMenuButtonAddReciever}
  click element    xpath=${profileMenuButtonAddReciever}
  sleep    2s
  fillReciever    ${RecieverName}    ${RecieverSurname}    ${RecieverPhone}    ${RecieverAlterPhone}
  sleep    2s
  click element    xpath=${addReciever}
  sleep    1s
  reload page
  sleep    2s
  click element    xpath=${editRecieverButton}
  sleep    2s
  fillReciever    ${RecieverName2}    ${RecieverSurname2}    ${RecieverPhone2}    ${RecieverAlterPhone2}
  sleep    2s
  click element    xpath=${saveEditRecieverButton}
  sleep    2s
  reload page
  wait until page contains element    xpath=${editedRecieverCheck}
  sleep    1s

  deleteReciever
  close browser

Редактирование получателя(только обязательные поля)

  startBrowserAndMaximize
  loginAndEnterLk
  wait until element is visible    xpath=${profileMenuButtonAddReciever}
  click element    xpath=${profileMenuButtonAddReciever}
  sleep    2s
  fillRecieverPartial    ${RecieverName}    ${RecieverSurname}    ${RecieverPhone}
  sleep    2s
  click element    xpath=${addReciever}
  sleep    1s
  reload page
  sleep    2s
  click element    xpath=${editRecieverButton}
  sleep    2s
  fillRecieverPartial    ${RecieverName2}    ${RecieverSurname2}    ${RecieverPhone2}
  sleep    2s
  click element    xpath=${saveEditRecieverButton}
  sleep    2s
  reload page
  wait until page contains element    xpath=${editedRecieverCheck}
  sleep    1s

  deleteReciever
  close browser

Редактирование получателя(только обязательные поля+новые)

  startBrowserAndMaximize
  loginAndEnterLk
  wait until element is visible    xpath=${profileMenuButtonAddReciever}
  click element    xpath=${profileMenuButtonAddReciever}
  sleep    2s
  fillRecieverPartial    ${RecieverName}    ${RecieverSurname}    ${RecieverPhone}
  sleep    2s
  click element    xpath=${addReciever}
  sleep    1s
  reload page
  sleep    2s
  click element    xpath=${editRecieverButton}
  sleep    2s
  fillReciever   ${RecieverName2}    ${RecieverSurname2}    ${RecieverPhone2}    ${RecieverAlterPhone2}
  sleep    2s
  click element    xpath=${saveEditRecieverButton}
  sleep    2s
  reload page
  wait until page contains element   xpath=${editedRecieverCheck}
  sleep    1s

  deleteReciever
  close browser

Удаление получателя


  startBrowserAndMaximize
  loginAndEnterLk
  wait until element is visible    xpath=${profileMenuButtonAddReciever}
  click element    xpath=${profileMenuButtonAddReciever}
  sleep    2s
  fillReciever    ${RecieverName}    ${RecieverSurname}    ${RecieverPhone}    ${RecieverAlterPhone}
  sleep    2s
  click element    xpath=${addReciever}
  sleep    1s
  reload page
  wait until page contains element    xpath=${createdRecieverCheck}
  sleep    1s
  deleteReciever
  wait until page does not contain element    xpath=${createdRecieverCheck}
  close browser

Регресс

  startBrowserAndMaximize
  loginAndEnterLk
  #
  #     Добавление нового адреса
  #
  Click Element    xpath=${profileMenuButtonAddAdress}
  sleep    2s
  fillAdress    ${inputAdressCityName}  ${inputAdressCityPick}    ${closeExpr}   ${inputAdressStreetName}  ${inputAdressStreetPick}  ${inputAdressHouseName}  ${inputAdressBuildingName}  ${inputAdressCorpusName}  ${inputAdressEntranceName}   ${inputAdressFloorName}   ${inputAdressapArtmentName}
  wait until page contains element   xpath=${addButton}
  Click Element    xpath=${addButton}
  sleep    1s
  reload page
  #
  #    Редактирование адреса
  #
  wait until page contains element    xpath=${editAdressButton}
  CLICK ELEMENT    xpath=${editAdressButton}
  sleep    1s
  fillAdress    ${inputAdressCityName2}  ${inputAdressCityPick2}  ${closeExpr}  ${inputAdressStreetName2}  ${inputAdressStreetPick2}  ${inputAdressHouseName2}  ${inputAdressBuildingName2}    ${inputAdressCorpusName2}  ${inputAdressEntranceName2}   ${inputAdressFloorName2}   ${inputAdressapArtmentName2}
  wait until page contains element   xpath=${saveEditAdressButton}
  Click Element    xpath=${saveEditAdressButton}
  sleep    2s
  #
  #     Удаление Адреса - Отмена
  #
  click element    xpath=${deleteAdressButton}
  sleep    2s
  click element    xpath=${cancelDeleteAdressButton}
  sleep    1s
  reload page
  sleep    1s
  #
  #     Удаление Адреса
  #
  wait until page contains element    xpath=${deleteAdressButton}
  deleteAdress
  sleep    2s
  #
  #     Добавление нового получателя
  #
  wait until element is visible    xpath=${profileMenuButtonAddReciever}
  click element    xpath=${profileMenuButtonAddReciever}
  sleep    2s
  fillReciever    ${RecieverName}    ${RecieverSurname}    ${RecieverPhone}    ${RecieverAlterPhone}
  sleep    2s
  click element    xpath=${addReciever}
  sleep    2s
  reload page
  sleep    2s
  #
  #     Редактирование нового получателя
  #
  click element    xpath=${editRecieverButton}
  sleep    2s
  fillReciever    ${RecieverName}    ${RecieverSurname}    ${RecieverPhone}    ${RecieverAlterPhone}
  sleep    2s
  click element    xpath=${cancelEditRecieverButton}
  sleep    2s
  reload page
  sleep    2s
  click element    xpath=${editRecieverButton}
  sleep    2s
  fillReciever    ${RecieverName2}    ${RecieverSurname2}    ${RecieverPhone2}    ${RecieverAlterPhone2}
  sleep    2s
  click element    xpath=${saveEditRecieverButton}
  sleep    2s
  reload page
  sleep    2s

  #
  #     Удаление нового получателя
  #
  click element    xpath=${deleteRecieverButton}
  sleep    2s
  click element    xpath=${cancelDeleteRecieverButton}
  sleep    2s
  reload page
  sleep    2s
  click element    xpath=${deleteRecieverButton}
  sleep    2s
  click element    xpath=${yesDeleteRecieverButton}
  sleep    2s
  reload page



*** Keywords ***
startBrowserAndMaximize
  Open Browser   http://citilink.stage.citilink.lt    chrome
  Maximize Browser Window

loginAndEnterLk
  Click Element    xpath=${catalogButton}
  input text    login    test30@example.com
  input text    pass  Qwe123
  wait until page contains element    xpath=${enterButton}
  Click Element    xpath=${enterButton}
  wait until page contains element    xpath=${lkButton}
  Click Element    xpath=${lkButton}
  wait until page contains element    xpath=${profileMenuButtonDelivery}
  Click Element    xpath=${profileMenuButtonDelivery}
  wait until page contains element    xpath=${profileMenuButtonAddAdress}

fillAdress
  [Arguments]  ${city}  ${citiPick}  ${closeExpr}  ${street}   ${streetPick}  ${house}  ${building}  ${corpus}  ${entrance}  ${floor}  ${apartment}
  input text    xpath=${inputAdressCity}    ${city}
  wait until page contains element    xpath=${citiPick}${city}${closeExpr}
  click Element    xpath=${citiPick}${city}${closeExpr}
  sleep    1s
  input text    xpath=${inputAdressStreet}     ${street}
  wait until page contains element    xpath=${streetPick}${street}${closeExpr}
  click Element    xpath=${streetPick}${street}${closeExpr}
  sleep    1s
  input text    xpath=${inputAdressHouse}    ${house}
  input text    xpath=${inputAdressBuilding}    ${building}
  input text    xpath=${inputAdressCorpus}    ${corpus}
  input text    xpath=${inputAdressEntrance}    ${entrance}
  sleep    1s
  input text    xpath=${inputAdressFloor}    ${floor}
  input text    xpath=${inputAdressApartment}    ${apartment}
  sleep    2s

fillReciever
  [Arguments]    ${name}    ${surname}    ${phone}    ${alterPhone}

  input text    xpath=${addRecieverName}    ${name}
  input text    xpath=${addRecieverSurname}    ${surname}
  input text    xpath=${addRecieverPhone}    ${phone}
  input text    xpath=${addRecieverAlterPhone}    ${alterPhone}

deleteAdress

  click element  ${deleteAdressButton}
  wait until page contains element    ${yesDeleteAdressButton}
  click element    ${yesDeleteAdressButton}
  sleep    1s

fillAdressPartial

  [Arguments]  ${city}  ${citiPick}  ${closeExpr}  ${street}   ${streetPick}  ${house}
  input text    xpath=${inputAdressCity}    ${city}
  wait until page contains element    xpath=${citiPick}${city}${closeExpr}
  click Element    xpath=${citiPick}${city}${closeExpr}
  sleep    1s
  input text    xpath=${inputAdressStreet}     ${street}
  wait until page contains element    xpath=${streetPick}${street}${closeExpr}
  click Element    xpath=${streetPick}${street}${closeExpr}
  sleep    1s
  input text    xpath=${inputAdressHouse}    ${house}
  sleep    2s
fillAdressPartialNoCity

  [Arguments]  ${city}  ${citiPick}  ${closeExpr}  ${street}   ${streetPick}  ${house}  ${building}  ${corpus}  ${entrance}  ${floor}  ${apartment}
  input text    xpath=${inputAdressCity}    ${city}
  wait until page contains element    xpath=${citiPick}${city}${closeExpr}
  click Element    xpath=${citiPick}${city}${closeExpr}
  sleep    1s
  input text    xpath=${inputAdressStreet}     ${street}
  wait until page contains element    xpath=${streetPick}${street}${closeExpr}
  click Element    xpath=${streetPick}${street}${closeExpr}
  sleep    1s
  input text    xpath=${inputAdressHouse}    ${house}
  input text    xpath=${inputAdressBuilding}    ${building}
  input text    xpath=${inputAdressCorpus}    ${corpus}
  input text    xpath=${inputAdressEntrance}    ${entrance}
  sleep    1s
  input text    xpath=${inputAdressFloor}    ${floor}
  input text    xpath=${inputAdressApartment}    ${apartment}
  clear element text    xpath=${inputAdressCity}
  sleep    2s

fillAdressPartialNoStreet

  [Arguments]  ${city}  ${citiPick}  ${closeExpr}  ${street}   ${streetPick}  ${house}  ${building}  ${corpus}  ${entrance}  ${floor}  ${apartment}
  input text    xpath=${inputAdressCity}    ${city}
  wait until page contains element    xpath=${citiPick}${city}${closeExpr}
  click Element    xpath=${citiPick}${city}${closeExpr}
  sleep    1s
  input text    xpath=${inputAdressStreet}     ${street}
  wait until page contains element    xpath=${streetPick}${street}${closeExpr}
  click Element    xpath=${streetPick}${street}${closeExpr}
  sleep    1s
  input text    xpath=${inputAdressHouse}    ${house}
  input text    xpath=${inputAdressBuilding}    ${building}
  input text    xpath=${inputAdressCorpus}    ${corpus}
  input text    xpath=${inputAdressEntrance}    ${entrance}
  sleep    1s
  input text    xpath=${inputAdressFloor}    ${floor}
  input text    xpath=${inputAdressApartment}    ${apartment}
  clear element text    xpath=${inputAdressStreet}
  sleep    2s

fillAdressPartialNoHouse

  [Arguments]  ${city}  ${citiPick}  ${closeExpr}  ${street}   ${streetPick}  ${house}  ${building}  ${corpus}  ${entrance}  ${floor}  ${apartment}
  input text    xpath=${inputAdressCity}    ${city}
  wait until page contains element    xpath=${citiPick}${city}${closeExpr}
  click Element    xpath=${citiPick}${city}${closeExpr}
  sleep    1s
  input text    xpath=${inputAdressStreet}     ${street}
  wait until page contains element    xpath=${streetPick}${street}${closeExpr}
  click Element    xpath=${streetPick}${street}${closeExpr}
  sleep    1s
  input text    xpath=${inputAdressHouse}    ${house}
  input text    xpath=${inputAdressBuilding}    ${building}
  input text    xpath=${inputAdressCorpus}    ${corpus}
  input text    xpath=${inputAdressEntrance}    ${entrance}
  sleep    1s
  input text    xpath=${inputAdressFloor}    ${floor}
  input text    xpath=${inputAdressApartment}    ${apartment}
  clear element text    xpath=${inputAdressHouse}
  sleep    2s

deleteReciever
  wait until page contains element    xpath=${deleteRecieverButton}
  click element    xpath=${deleteRecieverButton}
  wait until page contains element    xpath=${yesDeleteRecieverButton}
  click element    xpath=${yesDeleteRecieverButton}
  sleep    1s

fillRecieverPartial
  [Arguments]    ${name}    ${surname}    ${phone}

  input text    xpath=${addRecieverName}    ${name}
  input text    xpath=${addRecieverSurname}    ${surname}
  input text    xpath=${addRecieverPhone}    ${phone}

fillRecieverPartialNoName
  [Arguments]    ${name}    ${surname}    ${phone}

  input text    xpath=${addRecieverName}    ${name}
  input text    xpath=${addRecieverSurname}    ${surname}
  input text    xpath=${addRecieverPhone}    ${phone}
  clear element text    xpath=${addRecieverName}

fillRecieverPartialNoSurname
  [Arguments]    ${name}    ${surname}    ${phone}

  input text    xpath=${addRecieverName}    ${name}
  input text    xpath=${addRecieverSurname}    ${surname}
  input text    xpath=${addRecieverPhone}    ${phone}
  sleep    1s
  clear element text    xpath=${addRecieverSurname}

fillRecieverPartialNoPhone
  [Arguments]    ${name}    ${surname}    ${phone}

  input text    xpath=${addRecieverName}    ${name}
  input text    xpath=${addRecieverSurname}    ${surname}
  input text    xpath=${addRecieverPhone}    ${phone}
  clear element text    xpath=${addRecieverPhone}