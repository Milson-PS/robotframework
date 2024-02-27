# Created by Иван at 18.02.2024
*** Settings ***
Library  SeleniumLibrary
*** Keywords ***

*** Variables ***
#кнопка "Войти" с главной страницы(ссылка):
${catalogButton}             //div[@data-meta-name= 'UserButtonContainer' and @class= 'css-1vb2hqj e38q5fc0']
${enterButton}               //button[@class= 'e4uhfkv0 css-1nvnwij e4mggex0']
${JAVASCRIPT_STOPLOADING}     window.stop();
${EnterProfile}              //div[@class='ez0atuc0 css-1tq23wq e17f7xo00']
${EnterProfile2}             //a[@data-meta-name='ProfileMenu_Item_Мой профиль']

${MyProfile}                 //span[.='Мой профиль' and @class="css-1345oul e6pb4it0"]
${MyProfile2}                 //span[.='Мой профиль' and @class="css-o3b0tg e6pb4it0"]
${MyProfile3}                 //span[.='Мой профиль' and @class="react-ssr-app-btob-1345oul e6pb4it0"]
${MyProfile4}                 //span[.='Мой профиль' and @class="css-12cisdp e6pb4it0"]

${SalesHeader}               //div[@class="css-st5l3k e1sj978x0"]/div[1]
${SalesHeader2}              //a[@data-meta-name="ProfileMenu_Item" and @href="/profile/orders/" and @class="css-1k0cnlg e1mnvjgw0"]

${LKBuisness}               //span[.='Кабинет для бизнеса' and @class="css-1345oul e6pb4it0"]
${RegNewCompany}            //a[.="Зарегистрировать компанию" and @class="react-ssr-app-btob-13fuyx9 e1yhwzjb0"]
${CompLegForm}           //input[@name='Company_legalForm']
${CompLegForm2}          //div[.='ИП' and @class='e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0']
${CompInn}               //input[@name='Company_inn']
#Кнопка "продолжить на первой странице добавления новой компании"
${CompRegNext1}         //button[@class='e4uhfkv0 react-ssr-app-btob-gh3izc e4mggex0']
# Список полей после заполнения ИНН и правовой формы:
# Поля "организации":
${CompanyName}           //input[@name='Company_companyName' and @class="react-ssr-app-btob-1977rpo ecmx7fl0"]
${LegalCompanyName}      //input[@name='Company_legalCompanyName' and @class="react-ssr-app-btob-1977rpo ecmx7fl0"]
${CompanyOGRN}           //input[@name='Company_ogrn' and @class="react-ssr-app-btob-1977rpo ecmx7fl0"]
${ApplyCookies}         //button[@class='e4uhfkv0 react-ssr-app-btob-1lxdbiq e4mggex0']
${CompanySize}          //input[@name="Company_companySize"]
${CompanySize1}         //div[.='от 16 до 50' and @class='e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0']
${CompanyIndustry}      //input[@name='Company_industry' and @class="react-ssr-app-btob-1977rpo ecmx7fl0"]
${CompanyIndustrySelect}      //div[@class='e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0'][contains(text(),'Банк')]

# Поля "Юридический адрес":
${CompanyIndex}                    //input[@name="Company_index"]
${CompanyIndex}                    //input[@name="Company_index"]
${CompanyIndex2}                    //span[contains(text(),'Индекс')]
${CompanyCiti}                     //input[@name='Company_city']
${CompanyStreet}                   //input[@name='Company_street']
${CompanyHouse}                    //input[@name='Company_house']
${CompanyBuilding}                 //input[@name='Company_building']
${CompanyHousing}                  //input[@name='Company_housing']
${CompanyApartment}                //input[@name='Company_apartment']
${CompanyAdditionalInfo}           //input[@name='Company_additionalInfo']
# Поля "Банковские реквизиты":
${CompanyBik}                 //input[@name='Company_bik']
${CompanyBankName}            //input[@name='Company_bankName']
${CompanyBankCity}            //input[@name='Company_bankCity']
${CompanyBankAccount}         //input[@name='Company_bankAccount']
# Поля "Контакты":
${CompanyContactPerson}                   //input[@name='Company_contactPerson']
${CompanyContactPlaceHolder}              //input[@placeholder='+7 ХХХ ХХХ-ХХ-ХХ']
${CompanyCorpEmail}                       //input[@name='Company_corpEmail']
${CompanyUserPosition}                    //input[@name='Company_userPosition']
${CompanyDirectorFullName}                //input[@name='Company_directorFullName']
${CompanyDirectorEmail}                   //input[@name='Company_directorEmail']
${CompanyChiefAccountantFullName}         //input[@name='Company_chiefAccountantFullName']
${CompanyChiefAccountantEmail}            //input[@name='Company_chiefAccountantEmail']

# Финальная кнопка "Продолжить"

${ButtonNext2}      //button[@class='e4uhfkv0 react-ssr-app-btob-gh3izc e4mggex0']
*** Test Cases ***
Успешная авторизация:
  Open Browser   https://www.citilink.stage.citilink.lt/    chrome     options=add_argument("--ignore-certificate-errors")
  Maximize Browser Window
  Click Element    ${catalogButton}
  Input Text    login    test30@example.com
  Input Password    pass    Qwe123
  Wait Until Page Contains Element    ${enterButton}
  Click Element     ${enterButton}
Вход в Профиль:
    Click element    ${EnterProfile}
    Click element    ${EnterProfile2}
    Wait until page contains    Настройки профиля
Вход в "Кабинет для бизнеса":

    Click element    ${LKBuisness}
    Wait until page contains    Компании
    Click element    ${RegNewCompany}
    Wait until page contains    Добавить компанию

Заполнение "Правовая форма":
    Click element    ${CompLegForm}
    Wait until page contains element    ${CompLegForm2}
    Click element    ${CompLegForm2}

Заполнение ИНН:
    Input text  ${CompInn}   887836906202
    Sleep    5s
    Click element  ${CompRegNext1}


Отображение всех полей для регистрации организации:
    Wait until page contains    Банковские реквизиты

Заполнение полей компании:
    Input text    ${CompanyName}    Ромашка
    Input text    ${LegalCompanyName}   Цветочки
    Input text    ${CompanyOGRN}    1073854673232

Принять куки:
    Click element   ${ApplyCookies}

Размер компании:
    Click element  ${CompanySize}
    Sleep    5s
    Wait until page contains element    ${CompanySize1}
    Click element    ${CompanySize1}

Отрасль:
    Click element    ${CompanyIndustry}
    Wait until page contains element    ${CompanyIndustrySelect}
    Click element    ${CompanyIndustrySelect}

Юридический адрес:
    Input text    ${CompanyIndex}    180000
    Input text    ${CompanyCiti}    Псков
    Input text    ${CompanyStreet}    Ленина
    Input text    ${CompanyHouse}    13
    Input text    ${CompanyBuilding}        1
    Input text    ${CompanyHousing}    66
    Input text    ${CompanyApartment}        33
    Input text    ${CompanyAdditionalInfo}        тут живет Карлсон
    sleep       6s

Банковские реквизиты:
    Input text    ${CompanyBik}    044525593
    Input text    ${CompanyBankAccount}     40702810902820001311
    Sleep       6s

Контакты:
    Input text    ${CompanyContactPerson}    Пупкин Василий Петрович
    Input text    ${CompanyContactPlaceHolder}      79210021200
    Input text    ${CompanyCorpEmail}      zamaraev.i@citilink.ru
    Input text    ${CompanyUserPosition}    Тестировщик
    Input text    ${CompanyDirectorFullName}   Иванов Петр Сидорович
    Input text    ${CompanyDirectorEmail}   zamaraev.i@citilink.ru
    Input text    ${CompanyChiefAccountantFullName}  Смирнова Клава Авдотьевна
    Input text    ${CompanyChiefAccountantEmail}  zamaraev.i@citilink.ru
    Wait until page contains element    ${ButtonNext2}
    Sleep       10s









