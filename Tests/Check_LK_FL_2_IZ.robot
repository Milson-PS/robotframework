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
${SalesHeaderGarbage}        //span[.='Корзина' and @class="css-1345oul e6pb4it0"]
${SalesItemCompare}          //span[.='Сравнение товаров' and @class="css-1345oul e6pb4it0"]
${SalesFavorite}             //span[.='Избранное' and @class="css-1345oul e6pb4it0"]
${Bonus}                     //span[.='Бонусы' and @class="css-1345oul e6pb4it0"]

${Activity}                     //span[.='Активность' and @class="css-1345oul e6pb4it0"]
${Activity2}                     //span[.='Активность' and @class="css-o3b0tg e6pb4it0"]

${ActivityLent}                 //span[.='Лента' and @class="css-1345oul e6pb4it0"]
${ActivityLent2}                 //span[.='Лента']
${ActivityObz}                  //a[.='Обзоры' and @href="https://www.citilink.ru/profile/0FF153FB-BECD-4466-88C6-E4F65A757569/reviews/"]
${ActivityObzComment}           //span[.='Комментарии к обзорам' and @class="css-1345oul e6pb4it0"]
${ActivityRecall}               //https://www.citilink.ru/profile/0FF153FB-BECD-4466-88C6-E4F65A757569/opinions/
${ActivityMessages}             //span[.='Сообщения' and @class="css-1345oul e6pb4it0"]
${ActivityViO}                  //span[.='Вопросы и ответы' and @class="css-1345oul e6pb4it0"]
${ActivityPhotos}               //span[.='Фотографии' and @class="css-1345oul e6pb4it0"]
${ActivityConfig}               //span[.='Конфигурации' and @class="css-o3b0tg e6pb4it0"]
${ActivityConfigComment}        //span[.='Комментарии к конфигурациям']
${ActivityConfigReq}            //a[.='Заявки на подбор конфигурации' and @href="https://www.citilink.ru/profile/0FF153FB-BECD-4466-88C6-E4F65A757569/requests/"]
${ActivityConfigReqComment}     //a[.='Комментарии к заявкам на подбор конфигурации' and @href="https://www.citilink.ru/profile/0FF153FB-BECD-4466-88C6-E4F65A757569/disc/request/"]
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
  Input Text    login    79210021200
  Input Password    pass    yfujhirtcbltkrjhjkm
  Wait Until Page Contains Element    ${enterButton}
  Click Element     ${enterButton}
Вход в Профиль:
    Click element    ${EnterProfile}
    Click element    ${EnterProfile2}
    Wait until page contains    Настройки профиля

Проверка "активность"- "Сообщения":
    Wait until page contains element   ${Activity}
    Click element    ${Activity}
    Wait until page contains element    ${ActivityLent}
    Click element    ${ActivityMessages}
    Wait until page contains    У вас нет сообщений
    Go back
    Wait until page contains element    ${MyProfile4}
    Click element    ${MyProfile4}
    Wait until page contains    Профиль
    Sleep    2s
Проверка "активность"- "Вопросы и ответы":
    Wait until page contains element   ${Activity}
    Click element    ${Activity}
    Wait until page contains element    ${ActivityLent}
    Click element    ${ActivityViO}
    Wait until page contains    Мои вопросы
    Sleep    2s
Проверка "активность"- "Фотографии":

    Click element    ${ActivityPhotos}
    Wait until page contains    Ни одной фотографии не загружено
    Go back
    Wait until page contains element    ${MyProfile2}
    Click element    ${MyProfile2}
    Wait until page contains    Профиль
    Sleep    2s
Проверка "активность"- "Конфигурации":
    Wait until page contains element   ${Activity2}
    Click element    ${Activity2}
    Wait until page contains element    ${ActivityLent2}
    Click element    ${ActivityConfig}
    Wait until page contains    Конфигураций нет
    Go back
    Wait until page contains    Профиль
    Sleep    2s
Проверка "активность"- "Комментарии к конфигурациям":
    Wait until page contains element   ${Activity}
    Click element    ${Activity}
    Wait until page contains element    ${ActivityLent}
    Click element    ${ActivityConfigComment}
    Wait until page contains    Комментариев к конфигурациям нет
    Sleep    2s
Проверка "активность"- "Заявки на подбор конфигурации":

    Click element    ${ActivityConfigReq}
    Wait until page contains    Заявок на подбор конфигурации нет

Проверка "активность"- "Комментарии к заявкам на подбор конфигурации":

    Click element    ${ActivityConfigReqComment}
    Wait until page contains    Комментариев к заявкам на подбор конфигурации нет
    Sleep    2s

Проверка "активность"- "обзоры":

    Click element    ${ActivityObz}
    Wait until page contains    Нет ни одного опубликованного
    Sleep    2s
    Go back
Проверка "активность"- "Отзывы":

    Go to    https://www.citilink.ru/profile/0FF153FB-BECD-4466-88C6-E4F65A757569/opinions/
    Wait until page contains    Помогите пользователям
    Sleep    2s
