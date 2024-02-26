*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#кнопка "Войти" с главной страницы(ссылка):
${catalogButton}    //div[@data-meta-name= 'UserButtonContainer' and @class= 'css-1vb2hqj e38q5fc0']
${enterButton}     //button[@class= 'e4uhfkv0 css-1nvnwij e4mggex0']
${Registration}     //button[@class= 'ewr1ly40 css-17dwi0d e4mggex0']
${NameReg}          //input[@name='auth-by-registration_name' and @class= 'css-1u9ewb3 ecmx7fl0']
${EmailReg}         //input[@name='auth-by-registration_email' and @class= 'css-1u9ewb3 ecmx7fl0']
${PhoneReg}         //input[@name='auth-by-registration_phone' and @class= 'css-1u9ewb3 ecmx7fl0']
#кнопка "Профиль" с авторизованной страницы
${Profile}          //div[@class= 'css-1wyvf5z eyoh4ac0']
#поля для регистрации при существовании клубной карты
${ClubCardReg}      //input[@type='checkbox' and  @id='auth-by-registration_isCard']
${ClubCardNum}      //input[@type='text' and @name='auth-by-registration_cardNumber']
${ClubCardPin}      //input[@type='text' and @name='auth-by-registration_cardPinCode']
#Галка : я юридическое лицо
${IamB2BClient}     //input[@type='checkbox' and @id='auth-by-registration_isLegalEntity']

*** Test Cases ***

Запуск браузера:
  Open Browser   https://www.citilink.stage.citilink.lt   chrome     options=add_argument("--ignore-certificate-errors")
  Maximize Browser Window
Открытие формы регистрации:
  Click Element    ${catalogButton}
  Click Element    ${Registration}
#Проверка заполнения поля "Имя" при регистрации:
Некорректное имя:
  Input Text    ${NameReg}    Ив23""asd
  Wait Until Page Contains  Поле может содержать латинские и русские буквы, дефис, пробел
Корректное имя (латиница+кирилица):
  Input Text    ${NameReg}    Иван фывasd asd
  Wait Until page Does Not Contain      Поле может содержать латинские и русские буквы, дефис, пробел       timeout=2s
Корректное имя (латиница):
  Input Text    ${NameReg}    Ivan Ivanov
  Wait Until page Does Not Contain      Поле может содержать латинские и русские буквы, дефис, пробел       timeout=2s
Корректное имя (кириллица):
  Input Text    ${NameReg}    Иван
  Wait Until page Does Not Contain      Поле может содержать латинские и русские буквы, дефис, пробел       timeout=2s
 #Проверка заполнения поля Email при регистрации:
Заполненное и зачищенное поле Email:
  Input Text  ${EmailReg}     23a@er.ru
  Input Text  ${EmailReg}     ${EMPTY}

  Wait Until Page Contains    Обязательное поле
Ввод некорректного Email:
  Input Text    ${EmailReg}    23"@xx.ru
  Wait Until Page Contains    Поле может содержать латинские буквы, цифры, символы . @ ! # $ % & ' * + - / = ? ^ _ ` { | } ~
Ввод неполного Email:
  Input Text    ${EmailReg}      @citilink.ru
  Wait Until Page Contains  Укажите полный адрес электронной почты
Ввод некорректного доменного имени в Email:
  Input Text    ${EmailReg}     as@citilink.rr
  Wait Until Page Contains  Указанный почтовый домен не существует. Введите правильный домен.
Ввод уже зарегистрированного Email:
  Input Text    ${EmailReg}    zamaraev.i@citilink.ru
  Wait Until Page Contains    Этот адрес электронной почты уже используется. Попробуйте указать другой или пройдите процедуру восстановления
Ввод нового Email незарегистрированного в системе:
  Input Text    ${EmailReg}    123zamaraev.i@citilink.ru
  Wait Until Page does not Contain   Этот адрес электронной почты уже используется. Попробуйте указать другой или пройдите процедуру восстановления     timeout=2s
  Wait Until page Does Not Contain   Поле может содержать латинские буквы, цифры, символы . @ ! # $ % & ' * + - / = ? ^ _ ` { | } ~        timeout=2s
#Проверка ввода номера телефона при регистрации:
Ввод некорректного телефона1:
  Input Text    ${PhoneReg}    7
  Wait Until Page Contains      Поле должно содержать 11 цифр
Ввод существующего номера телефона:
  Input Text    ${PhoneReg}    73333333333
  Wait Until Page Contains      Этот номер телефона уже используется
Ввод нового номера телефона:
    Input Text    ${PhoneReg}    79998564546
    Wait Until Page does not Contain    Поле должно содержать 11 цифр       timeout=2s
    Wait Until Page does not Contain    Этот номер телефона уже используется. Попробуйте указать другой или пройдите процедуру восстановления       timeout=2s
#Проверка заполнения полей клубной карты( при нажатии на галку (Ввести номер и пин)
Открытие для заполнения новых полей при наличии клубной карты:
  Click Element    ${ClubCardReg}
  Wait Until Page Contains Element    ${ClubCardNum}
  Wait Until Page Contains Element    ${ClubCardPin}

Заполнениие поля номер клубной карты:
    Input Text    ${ClubCardNum}    23
    Wait Until Page Contains    Поле должно содержать не менее 6 символов
Пустое поле КК:
    Input Text    ${ClubCardNum}    ${EMPTY}
    Wait Until Page Contains    Поле должно содержать не менее 6 символов
Верное заполнения поля КК:
    Input Text    ${ClubCardNum}    1234567
    Wait Until Page does not Contain    Поле должно содержать не менее 6 символов

Заполнениие pin кода при наличии клубной карты:
    Input Text    ${ClubCardPin}     45
    Wait Until Page Contains    Поле должно содержать 4 символа
Пустое значение пинкода:
    Input Text    ${ClubCardPin}    ${EMPTY}
    Wait Until Page Contains    Поле должно содержать 4 символа
Верное заполнение поля пин-код:
    Input Text    ${ClubCardPin}      4545
    Wait Until Page Does Not Contain    Поле должно содержать 4 символа

Скрытие полей при отсутствии клубной карты:
  Click Element    ${ClubCardReg}
  Wait Until Page Does Not Contain Element    ${ClubCardNum}
  Wait Until Page Does Not Contain Element    ${ClubCardPin}

Проверка на галку "я юридическое лицо-ок":

    Click element    ${IamB2BClient}




