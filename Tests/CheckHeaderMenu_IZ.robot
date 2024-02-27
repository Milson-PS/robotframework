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
${ApplyCookies}                //span[.='Я согласен' and @class='css-1xdhyk6 e1hf2t4f0']

${SalesHeader}               //div[@class="css-st5l3k e1sj978x0"]/div[1]
${SalesHeader2}              //a[@data-meta-name="ProfileMenu_Item" and @href="/profile/orders/" and @class="css-1k0cnlg e1mnvjgw0"]
${SalesHeaderGarbage}        //span[.='Корзина' and @class="css-1345oul e6pb4it0"]
${SalesItemCompare}          //span[.='Сравнение товаров' and @class="css-1345oul e6pb4it0"]
${SalesFavorite}             //span[.='Избранное' and @class="css-1345oul e6pb4it0"]
#формы на главной странице со спец предложениями
${TopCatalog1}                //div[@class='app-catalog-1lfclxx e1we4plj0 is-selected']
${TopCatalog2}         //img[@class='ekkbt9g0 app-catalog-19kq0pi e1fcwjnh0']
${TopCatalog3}         //div[@class='app-catalog-l6xrso ef8ukn0']//div[1]//a[1]//picture[1]//img[1]
${TopCatalog4}         //div[@class='app-catalog-0 e10r978y0']//div[2]//a[1]//picture[1]//img[1]
${TopCatalog5}         //div[@class='app-catalog-0 e10r978y0']//div[3]//a[1]//picture[1]//img[1]
${TopCatalog6}         //div[@class='app-catalog-1s3gah5 eov2hg20']
${TopCatalog7}         //div[@class='app-catalog-k2s7fr ewfzjvd0']
#кнопки главного меню Headera главной страницы
${TopSelect}        (//div[@class='css-1wyvf5z eyoh4ac0'])[2]
${HeaderCompare}    (//div[@class='css-1wyvf5z eyoh4ac0'])[3]
${HeaderGarbage}    (//div[@class='css-1wyvf5z eyoh4ac0'])[4]
${HeaderForCompanies}     //span[contains(text(),'Юридическим лицам')]
${HeaderLog}        //span[contains(text(),'Журнал')]
${HeaderPromotion}        //span[contains(text(),'Акции')]
${HeaderConfigurator}     //span[contains(text(),'Конфигуратор')]
${HeaderDelivery}         //span[contains(text(),'Доставка')]
${HeaderShops}            //span[contains(text(),'Магазины')]
#Обратная связь:
${HeaderFeedback}               //span[contains(text(),'Обратная связь')]
${HFeedback_asktype}           (//div[@class='css-kkggk9 e15krpzo8'])[2]
${HFeedback_asktype_problem}    //div[contains(text(),'оставить жалобу')]
${HFeedback_asktype_message}    //textarea[@name='askQuestion_message']
${HFeedback_asktype_email}      //input[@name='askQuestion_email']
${HFeedback_asktype_orderId}    //input[@name='askQuestion_orderId']
${HFeedback_nextButton}         //button[@class='e4uhfkv0 css-1o61ewn e4mggex0']
${HFeedback_2_UL}               //label[contains(text(),'Я юридическое лицо')]
${HFeedback_2_CompanyName}      //input[@name='askQuestion_companyName']
${HFeedback_2_UserName}             //input[@name='askQuestion_userName']
${HFeedback_2_City}             //input[@name='askQuestion_spaceId']
${HFeedback_2_SendButton}       //button[@class='e4uhfkv0 css-1nvnwij e4mggex0']




*** Test Cases ***
Успешная авторизация:
  Open Browser   https://www.citilink.stage.citilink.lt/    chrome     options=add_argument("--ignore-certificate-errors")
  Maximize Browser Window
  Click Element    ${catalogButton}
  Input Text    login    test30@example.com
  Input Password    pass    Qwe123
  Wait Until Page Contains Element    ${enterButton}
  Click Element          ${enterButton}
Проверка наличия "спецпредложений на главной странице":

    Wait until page contains element    ${TopCatalog1}
    Wait until page contains element    ${TopCatalog2}
    Wait until page contains element    ${TopCatalog3}
    Wait until page contains element    ${TopCatalog4}
    Wait until page contains element    ${TopCatalog5}
    Wait until page contains element    ${TopCatalog6}
    Wait until page contains element    ${TopCatalog7}

Проверка "кликабельности" кнопок главной страницы пользователя:
    Wait until page contains    Журнал
Выпадающее меню профиля активно:
    Click element    ${EnterProfile}
    Wait until page contains element  ${EnterProfile2}
Открытие "Избранное":
        Wait until page contains element    ${TopSelect}
        Click element    ${TopSelect}
        Wait until page contains    В списке желаемых покупок нет товаров
        Sleep    3s
    Go back
    Wait until page contains    Журнал

Принять куки:
  Click element   ${ApplyCookies}

Открытие "Сравнение":
    Click element    ${HeaderCompare}
    Wait until page contains    Сравнение товаров
    Sleep    3s
        Go back
        Wait until page contains    Журнал
Открытие "Корзина":

    Click element    ${HeaderGarbage}
        Wait until page contains    В корзине нет товаров
        Sleep    3s
    Go back
    Wait until page contains    Журнал
Открытие "Акции":
    Click element    ${HeaderPromotion}
        Wait until page contains    Акции для бизнеса
        Sleep    3s
    Go back
    Wait until page contains    Популярные категории

Открытие "Конфигуратор":
    Click element    ${HeaderConfigurator}
        Wait until page contains    Конфигуратор ПК
        Sleep    3s
    Go back
    Wait until page contains    Популярные категории

Открытие "Доставка":
    Click element    ${HeaderDelivery}
        Wait until page contains   Мы благодарны Вам за выбор
        Sleep    3s
    Go back
    Wait until page contains    Популярные категории

Открытие "Магазины":
    Click element    ${HeaderShops}
        Wait until page contains    Адреса магазинов и пунктов выдачи
        Sleep    3s
    Go back
    Wait until page contains    Популярные категории


Открытие формы первая часть "Обратная связь":
    Click element    ${HeaderFeedback}
        Wait until page contains    Сообщение до 2000 символов
        Sleep    3s
    Wait until page contains element    ${HFeedback_asktype}
    Input text    ${HFeedback_asktype_message}      Это тестовый текст для "якобы" жалобы(проверка поля) при необходимости расширить текст до 2002 символов
    Input text    ${HFeedback_asktype_email}        zamaraev.i@citilink.ru
    Input text    ${HFeedback_asktype_orderId}      D00000099
    Click element    ${HFeedback_asktype}
    Click element    ${HFeedback_asktype_problem}
    Click element    ${HFeedback_nextButton}


Вторая часть "обратная связь":

    Click element    ${HFeedback_2_UL}
    Wait until page contains element    ${HFeedback_2_CompanyName}
    Input text    ${HFeedback_2_UserName}        Иван
    Input text    ${HFeedback_2_City}            Псков
    Input text    ${HFeedback_2_CompanyName}     Ромашка
    Wait until page contains element    ${HFeedback_2_SendButton}
    Sleep    5s
    Go back
    Go back
    Sleep    5s




