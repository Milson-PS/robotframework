*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#кнопка "Войти" с главной страницы(ссылка):
${catalogButton}    //div[@data-meta-name= 'UserButtonContainer' and @class= 'css-1vb2hqj e38q5fc0']
${enterButton}     //button[@class= 'e4uhfkv0 css-1nvnwij e4mggex0']

*** Test Cases ***

Успешная авторизация:
  Open Browser   https://www.citilink.stage.citilink.lt     chrome     options=add_argument("--ignore-certificate-errors")
  Maximize Browser Window
  Click Element    ${catalogButton}
  Input Text    login    test30@example.com
  Input Password    pass    Qwe123
  Wait Until Page Contains Element    ${enterButton}
  Click Element     ${enterButton}
  Close Browser

Запуск браузера и формы авторизации:
  Open Browser   https://www.citilink.ru/    chrome     options=add_argument("--ignore-certificate-errors")
  Maximize Browser Window
   Page should contain    Войти
   Click Element    ${catalogButton}

Пустой логин:
  Input Text    login    ${EMPTY}
  Input Password    pass    yfujhirtcbltkrjh
  Wait Until Page Contains Element    ${enterButton}
  Click Element     ${enterButton}
  Wait Until Page Contains      Регистрация     timeout=7s

Некорректный номер телефона
  Input Text    login    79210021200l
  Input Password    pass    yfujhirtcbltkrjh
  Wait Until Page Contains  Введите правильный телефон или email

Некорректный email с кирилицей:
  Input Text    login    79210@yu.rrrrява
  Input Password    pass    yfujhirtcbltkrjh
  Wait Until Page Contains  Введите правильный телефон или email

Email латиницей,но некорректный формат почты:
  Input Text    login    79210@yu.@.@.@sdsd@zsd@.rr
  Input Password    pass    yfujhirtcbltkrjh
  Wait Until Page Contains  Введите правильный телефон или email

Неверный логин или пароль
  Input Text    login    79210021200
  Input Password    pass    yfujhirtcbltkr%%
  Wait Until Page Contains Element    ${enterButton}
  Click Element     ${enterButton}
  Wait Until Page Contains    Забыли пароль

  Close Browser



*** Keywords ***