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
${MyProfile4}                 //span[.='Мой профиль' and @class="css-12cisdp e6pb4it0"]

${MyProfile3}                 //span[.='Мой профиль' and @class="react-ssr-app-btob-1345oul e6pb4it0"]

${SalesHeader}               //div[@class="css-st5l3k e1sj978x0"]/div[1]
${SalesHeader2}              //a[@data-meta-name="ProfileMenu_Item" and @href="/profile/orders/" and @class="css-1k0cnlg e1mnvjgw0"]
${SalesHeaderGarbage}        //span[.='Корзина' and @class="css-1345oul e6pb4it0"]
${SalesItemCompare}          //span[.='Сравнение товаров' and @class="css-1345oul e6pb4it0"]
${SalesFavorite}             //span[.='Избранное' and @class="css-1345oul e6pb4it0"]
${Bonus}                     //span[.='Бонусы' and @class="css-1345oul e6pb4it0"]

${Activity}                     //span[.='Активность' and @class="css-1345oul e6pb4it0"]
${Activity2}                     //span[.='Активность' and @class="css-o3b0tg e6pb4it0"]

${ActivityLent}                 //span[.='Лента' and @class="css-1345oul e6pb4it0"]
${ActivityLent2}                 //span[.='Лента' and @class="css-o3b0tg e6pb4it0"]
${ActivityObz}                  //span[.='Обзоры' and @class="css-1345oul e6pb4it0"]
${ActivityObzComment}           //span[.='Комментарии к обзорам' and @class="css-1345oul e6pb4it0"]
${ActivityRecall}               //span[.='Отзывы' and @class="css-1345oul e6pb4it0"]
${ActivityMessages}             //span[.='Сообщения' and @class="css-1345oul e6pb4it0"]
${ActivityViO}                  //span[.='Вопросы и ответы' and @class="css-1345oul e6pb4it0"]
${ActivityPhotos}               //span[.='Фотографии' and @class="css-o3b0tg e6pb4it0"]
${ActivityConfig}               //span[.='Конфигурации' and @class="css-o3b0tg e6pb4it0"]
${ActivityConfigComment}        //span[.='Комментарии к конфигурациям' and @class="css-1345oul e6pb4it0"]
${ActivityConfigReq}            //span[.='Заявки на подбор конфигурации' and @class="css-o3b0tg e6pb4it0"]
${ActivityConfigReqComment}     //span[.='Комментарии к заявкам на подбор конфигурации' and @class="css-o3b0tg e6pb4it0"]

${ExpertPanel}            //span[.='Панель эксперта' and @class="css-1345oul e6pb4it0"]
${ProfileDelivery}        //span[.='Доставка' and @class="css-1345oul e6pb4it0"]
${ProfileWarranty}        //span[.='Гарантийный отдел' and @class="css-1345oul e6pb4it0"]
${SetupProfile}           //span[.='Настройки профиля' and @class="css-1345oul e6pb4it0"]
${LKBuisness}             //span[.='Кабинет для бизнеса' and @class="css-1345oul e6pb4it0"]

*** Test Cases ***
Успешная авторизация:
  Open Browser   https://www.citilink.stage.citilink.lt     chrome     options=add_argument("--ignore-certificate-errors")
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

#Прощелкивание всех элементов в раскрывающемся списке Заказы:
Открытие списка заказов:
    Wait until page contains element    ${SalesHeader}
    Click Element    ${SalesHeader}
    Wait until page contains    Сравнение товаров
    Click Element    ${SalesHeader2}
    Wait Until Page Contains    Развернуть все заказы
    Go back
    Wait until page contains    Профиль
Открытие корзины:
    Click Element    ${SalesHeaderGarbage}
    Wait Until Page Contains    В корзине нет товаров
Возврат в "профиль":
    Go back
    Wait until page contains    Профиль
Сравнение товаров:
    Wait until page contains element    ${SalesHeader}
    Click Element    ${SalesHeader}
    Wait until page contains    Сравнение товаров
    Click Element    ${SalesItemCompare}
    Wait until page contains    Нет товаров для сравнения
    Go back
    Wait until page contains    Профиль
Проверка Избранное:
    Wait until page contains element    ${SalesHeader}
    Click Element    ${SalesHeader}
    Wait until page contains    Сравнение товаров
    Click Element    ${SalesFavorite}
    Wait until page contains    В списке желаемых покупок нет товаров
    Go back
    Wait until page contains    Профиль
Проверка "бонусы":
    Click element    ${Bonus}
    Wait until page contains    Мой статус
Проверка "панель эксперта":

    Click element    ${ExpertPanel}
    Wait until page contains    Панель Эксперта у вас неактивна
    Sleep    2s
Проверка "Доставка":

    Click element    ${ProfileDelivery}
    Wait until page contains    Получатели
    Sleep    2s

Проверка "Гарантийный отдел":

    Click element   ${ProfileWarranty}
    Wait until page contains    Проверка статуса товара, сданного на гарантийное обслуживание
    Sleep    2s

Проверка "Настройки профиля":

    Click element    ${SetupProfile}
    Wait until page contains    Личные данные
    Sleep    2s

Проверка "Кабинет для бизнеса":

    Click element    ${LKBuisness}
    Wait until page contains    Представителям компаний
    Go back
    Wait until page contains element    ${MyProfile}
    Click element    ${MyProfile}
    Wait until page contains    Дата сгорания бонусов
    Sleep    2s

Проверка "активность"- "Лента":
    Click element    ${Activity}
    Wait until page contains element    ${ActivityLent}
    Click element    ${ActivityLent}
    Wait until page contains    Вы пока не оставили
    Go back
    Wait until page contains element    ${MyProfile4}
    Click element    ${MyProfile4}
    Wait until page contains    Профиль
    Sleep    2s

Проверка "активность"- "Комментарии к обзорам":
    Wait until page contains element   ${Activity}
    Click element    ${Activity}
    Click element    ${ActivityObzComment}
    Wait until page contains    Комментариев к обзорам нет
    Sleep    2s
    Go back
    Wait until page contains element    ${MyProfile4}
    Wait until page contains    Профиль























