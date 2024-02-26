# Created by Иван at 24.02.2024
*** Settings ***
Library  SeleniumLibrary
Library  inn_generator.py
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
${CompLegForm3}          //div[.='Коммерческая организация' and @class='e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0']
${CompLegForm4}          //div[.='Госучереждение' and @class='e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0']
${CompLegForm5}          //div[.='Банк' and @class='e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0']
${CompInn}               //input[@name='Company_inn']


#Кнопка "продолжить на первой странице добавления новой компании"
${CompRegNext1}         //button[@class='e4uhfkv0 react-ssr-app-btob-gh3izc e4mggex0' and @data-meta-disabled="false"]
${CompRegNext1_2}         //button[@class='e4uhfkv0 react-ssr-app-btob-gh3izc e4mggex0' and @data-meta-disabled="true"]
# Список полей после заполнения ИНН и правовой формы:
# Поля "организации":
${CompanyName}           //input[@name='Company_companyName' and @class="react-ssr-app-btob-1u9ewb3 ecmx7fl0"]
${LegalCompanyName}      //input[@name='Company_legalCompanyName' and @class="react-ssr-app-btob-1u9ewb3 ecmx7fl0"]
${CompanyOGRN}           //input[@name='Company_ogrn' and @class="react-ssr-app-btob-1u9ewb3 ecmx7fl0"]
${ApplyCookies}         //button[@class='e4uhfkv0 react-ssr-app-btob-1lxdbiq e4mggex0']
${CompanySize}          //input[@name="Company_companySize"]
${CompanySize1}         //div[.='от 0 до 15' and @class='e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0']
${CompanySize2}         //div[.='от 16 до 50' and @class='e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0']
${CompanySize3}         //div[.='от 51 до 1000' and @class='e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0']
${CompanySize4}         //div[.='1000 +' and @class='e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0']
${CompanyIndustry}      //input[@name='Company_industry' and @class="react-ssr-app-btob-1u9ewb3 ecmx7fl0"]
#Отрасль:
${CompanyIndustrySelect}      //div[@class='e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0'][contains(text(),'Банк')]
${CompanyIndustry1}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Банк')]
${CompanyIndustry2}               //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Власть')]
${CompanyIndustry3}               //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'ИМ, розничный магазин')]
${CompanyIndustry4}               //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Корпорация')]
${CompanyIndustry5}               //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Медицина')]
${CompanyIndustry6}               //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Нотариус')]
${CompanyIndustry7}               //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Образование')]
${CompanyIndustry8}               //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Общественное питание')]
${CompanyIndustry9}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Оказание услуг (прочее)')]
${CompanyIndustry10}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Оптовик')]
${CompanyIndustry11}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Производство')]
${CompanyIndustry12}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Прочее')]
${CompanyIndustry13}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Рекламные агентства/СМИ')]
${CompanyIndustry14}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Системный администратор')]
${CompanyIndustry16}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Страхование, финансовые услуги')]
${CompanyIndustry17}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Строительство')]
${CompanyIndustry18}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Торговые организации')]
${CompanyIndustry19}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Транспорт')]
${CompanyIndustry20}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Услуги населению')]
${CompanyIndustry21}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Услуги связи')]
${CompanyIndustry22}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Финансовые/бизнес услуги')]
${CompanyIndustry23}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Частные медицинские услуги')]
${CompanyIndustry24}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Частные образовательные услуги')]
${CompanyIndustry25}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Услуги населению/ЖКХ')]
${CompanyIndustry26}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Санаторно-курортная сфера')]
${CompanyIndustry27}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Культурно-развлекательный досуг')]
${CompanyIndustry28}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Отели/хостелы/общежития')]
${CompanyIndustry29}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Туристические агентства')]
${CompanyIndustry30}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Добыча, обработка сырья')]
${CompanyIndustry31}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Обеспечение безопасности')]
${CompanyIndustry32}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Спорт и активный отдых')]
${CompanyIndustry33}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Производство/строительство')]
${CompanyIndustry34}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Пищевая промышленность')]
${CompanyIndustry35}              //div[@class="e1i7snhg0 react-ssr-app-btob-zb5ocs e17hwyhm0"][contains(text(),'Смешанный тип')]


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
  Open Browser   https://www.citilink.stage.citilink.lt   chrome     options=add_argument("--ignore-certificate-errors")
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
    Wait until page contains    Представителям компаний
    Click element    ${RegNewCompany}
    Wait until page contains    Добавить компанию

Заполнение "Правовая форма":
        Click element    ${CompLegForm}
        Wait until page contains element    ${CompLegForm3}
        Click element    ${CompLegForm3}
            Click element    ${CompLegForm}
            Wait until page contains element    ${CompLegForm4}
            Click element    ${CompLegForm4}
                Click element    ${CompLegForm}
                Wait until page contains element    ${CompLegForm5}
                Click element    ${CompLegForm5}
                 Click element    ${CompLegForm}
                 Wait until page contains element    ${CompLegForm2}
                 Click element    ${CompLegForm2}


Заполнение ИНН:
    Input text  ${CompInn}   ${EMPTY}
    Wait until page contains element    ${CompRegNext1_2}
        Input text  ${CompInn}   sd2``sd
        Wait until page contains    Поле должно содержать только цифры
            Input text  ${CompInn}   5454
            Wait until page contains    Поле должно содержать не менее 10 символов
                Input text  ${CompInn}   545465545454
                Click element  ${CompRegNext1_2}
                    ${random_inn}=    Get Random INN FL
                    Input text  ${CompInn}   ${random_inn}
                    Sleep    5s
                    Click element  ${CompRegNext1}

Отображение всех полей для регистрации организации:
   Wait until page contains    Банковские реквизиты

Заполнение полей компании(нет проверки на корректность заполнения данных):
    Input text    ${CompanyName}    Ромашка
    Input text    ${LegalCompanyName}   Цветочки
Проверка корректного заполнения ОГРН:
    Input text    ${CompanyOGRN}    рпарп
    Wait until page contains        Поле должно содержать только цифры
    Input text    ${CompanyOGRN}    21
    Wait until page contains        Поле должно содержать не менее 13 символов
    Input text    ${CompanyOGRN}    1073854673232

Принять куки:
    Click element   ${ApplyCookies}

Размер компании:

    Click element  ${CompanySize}
    Sleep    5s
    Wait until page contains element    ${CompanySize1}
    Click element    ${CompanySize1}
    Click element    ${CompanyName}


Отрасль:

    Click element    ${CompanyIndustry}
    Wait until page contains element    ${CompanyIndustrySelect}
    Click element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry2}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry3}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry4}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry5}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry6}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry7}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry8}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry9}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry10}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry11}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry12}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry13}
           Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry14}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry16}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry17}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry18}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry19}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry20}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry21}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry22}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry23}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry24}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry25}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry26}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry27}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry28}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry29}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry30}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry31}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry32}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry33}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry34}
            Click element    ${CompanyIndustry}
        Wait until page contains element    ${CompanyIndustrySelect}
        Click element    ${CompanyIndustry35}

        Sleep    7s

Юридический адрес:
    Input text    ${CompanyIndex}   ыфв,
    Wait until page contains    Поле должно содержать только цифры
    Input text    ${CompanyIndex}    180000
#на следующих полях нет проверки на  корректность заполнения:
    Input text    ${CompanyCiti}    Псков
    Input text    ${CompanyStreet}    Ленина
    Input text    ${CompanyHouse}    13
    Input text    ${CompanyBuilding}        1
    Input text    ${CompanyHousing}    66
    Input text    ${CompanyApartment}        33
    Input text    ${CompanyAdditionalInfo}        тут живет Карлсон
    sleep       6s

Банковские реквизиты:
    Input text    ${CompanyBik}    фывыа
    Wait until page contains    Поле должно содержать только цифры
    Input text    ${CompanyBik}    45
    Wait until page contains    Поле должно содержать 9 символов
    Input text    ${CompanyBik}    044525593
    Input text    ${CompanyBankAccount}     апа
    Wait until page contains    Поле должно содержать только цифры
    Input text    ${CompanyBankAccount}     40702810902820001311
    Sleep       6s

Контакты:

    Input text    ${CompanyContactPerson}    Пупкин Василий Петрович
        Input text    ${CompanyContactPlaceHolder}      792
            Wait until page contains    Поле должно содержать 11 цифр
        Input text    ${CompanyContactPlaceHolder}      79210021200
    Input text    ${CompanyCorpEmail}      ыв
     Wait until page contains    Поле может содержать латинские буквы, цифры, символы . @ ! # $ % & ' * + - / = ? ^ _ ` { | } ~
        Input text    ${CompanyCorpEmail}      asd
     Wait until page contains    Укажите полный адрес электронной почты
        Input text    ${CompanyCorpEmail}      asd@
     Wait until page contains    Укажите почтовый домен
        Input text    ${CompanyCorpEmail}      asd@s
     Wait until page contains    Укажите корректный почтовый домен
    Input text    ${CompanyCorpEmail}      zamaraev.i@citilink.ru

    Input text    ${CompanyUserPosition}    Тестировщик
    Input text    ${CompanyDirectorFullName}   Иванов Петр Сидорович


    Input text    ${CompanyDirectorEmail}      ыв
     Wait until page contains    Поле может содержать латинские буквы, цифры, символы . @ ! # $ % & ' * + - / = ? ^ _ ` { | } ~
        Input text    ${CompanyDirectorEmail}     asd
     Wait until page contains    Укажите полный адрес электронной почты
        Input text    ${CompanyDirectorEmail}      asd@
     Wait until page contains    Укажите почтовый домен
        Input text    ${CompanyDirectorEmail}      asd@s
     Wait until page contains    Укажите корректный почтовый домен
        Input text    ${CompanyDirectorEmail}   zamaraev.i@citilink.ru
    Input text    ${CompanyChiefAccountantFullName}  Смирнова Клава Авдотьевна

    Input text    ${CompanyChiefAccountantEmail}     ыв
     Wait until page contains    Поле может содержать латинские буквы, цифры, символы . @ ! # $ % & ' * + - / = ? ^ _ ` { | } ~
        Input text    ${CompanyChiefAccountantEmail}    asd
     Wait until page contains    Укажите полный адрес электронной почты
        Input text    ${CompanyChiefAccountantEmail}     asd@
     Wait until page contains    Укажите почтовый домен
        Input text    ${CompanyChiefAccountantEmail}      asd@s
     Wait until page contains    Укажите корректный почтовый домен

    Input text    ${CompanyChiefAccountantEmail}  zamaraev.i@citilink.ru
    Wait until page contains element    ${ButtonNext2}
    Sleep       10s