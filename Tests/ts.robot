*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Library           inn_generator.py
*** Variables ***
${browser}    Chrome
#Страница_входа
${main_page}   https://www.citilink.ru
#Логин пароль stage
#${login}    test30@example.com
#${password}   Qwe123
#Логин пароль бой
${login}     79118952395
${password}    qwertyu
#кнопка "Войти" с главной страницы(ссылка):
${catalogButton}    //div[@data-meta-name= 'UserButtonContainer' and @class= 'css-1vb2hqj e38q5fc0']

#кнопка "Профиль" с авторизованной страницы
${Profile}          //div[@class= 'css-1wyvf5z eyoh4ac0']

#Кнопка_смены_пользователя
${change_user}      //div[@class='css-0 e70b7rb0']//a[1]

#Кнопка_подтверждения_регистрации
${the_login_button_submit}    xpath=//button[@class='e4uhfkv0 css-1nvnwij e4mggex0']

#Страница_входа_поле_логин
${login_input_field}   login
#Страница_входа_поле_Пароль
${login_pass_field}     pass

#Кнопка_профиля_пользователя
${profile}             //a[@data-meta-name='ProfileMenu_Item_Мой профиль']
${switch_profile}      xpath=//span[.='Переключить профиль']
#меню_профиля_кнопка_доставка
${main_page_deleviry}      //a[@href='/profile/delivery/']
#меню_профиля_кнопка_доставка_добавить_получателя
${add_receiver}       xpath=//span[.='Добавить получателя']
${my_profile}         //a[contains(@class,'UserMenu__menu-link')][contains(text(),'Мой профиль')]
${add_counterparty_continue}    xpath=//span[contains(text(),'Продолжить')]
${сontinue_without_details}     xpath=//span[.='Продолжить без реквизитов']

#Форма_получатель
${receiver_name}        xpath=//input[@placeholder='Имя']
${receiver_surname}     xpath=//input[@placeholder='Фамилия']
${receiver_number}      xpath=//input[@placeholder='Телефон']
${receiver_number_2}    xpath=//input[@placeholder='Телефон запасной']
${receiver_add}         xpath=//button[@class='e4uhfkv0 css-1ov9jhq e4mggex0']
${receiver_save}        xpath=//button[@class='e4uhfkv0 css-1ov9jhq e4mggex0']
${receiver_re}          //div[@class='css-jlytuc ehrfmql0']/label[1]//button[1]
${delete_receiver_Button}    //div[@class='css-jlytuc ehrfmql0']/label[1]//button[2]
${delete_receiver_Button_yes}    //div[@class='css-1ej6fkx e1x4yvjg0']//button[1]
${delete_receiver_Button_canceled}    //div[@class='css-1ej6fkx e1x4yvjg0']//button[2]

#Профиль_юрлицо
${legal_company}            //a[@data-meta-name='ProfileMenu_Item_Компании']                 #компании
${add_counterparty}         //span[contains(text(),'Добавить контрагента')]                  #добавить контрагента
${legal_company_form}       //input[@name='Contractor_legalForm']                            #правовая форма
${company_form_ip}          //div[contains(text(),'ИП')]                                     #ип
${form_continue}            //span[contains(text(),'Продолжить')]                            #продолжить
${legal_invoice_orders}     //a[contains(text(),'Заказы / Счета')]                           #заказы/счета
${legal_bonuses}            //a[@data-meta-name='ProfileMenu_Item_Бонусы']                   #бонусы
${legal_el_licenses}        //a[@data-meta-name='ProfileMenu_Item_Заказы / Счета']           #эл лицензии
${legal_delivery}           //a[@data-meta-name='ProfileMenu_Item_Доставка']                 #доставка
${legal_staff}              //a[@data-meta-name='ProfileMenu_Item_Сотрудники']               #сотрудники
${legal_exit_form}          //span[@class='e1ys5m360 e106ikdt0 css-1ny71b e1gjr6xo0']        #выйти
#Компания
${company_form_ip}           //div[contains(text(),'ИП')]
${legal_field_inn}           //input[@name='Contractor_inn']                                  #инн
${legal_staff_text}          //div[@class='main_content_inner']                               #поле ввода инн
${legal_name_company}        //input[@name='Contractor_legalCompanyName']                     #юридическое наименоваение компании
${legal_OGRN}                //input[@name='Contractor_ogrn']                                 #огрн
#Юридический адрес
${legal_index}               //input[@name='Contractor_index']                                #индекс
${legal_city}                //input[@name='Contractor_city']                                 #город
${legal_street}              //input[@name='Contractor_street']                               #улица
${legal_building}            //input[@name='Contractor_building']
${legal_housing}             //input[@name='Contractor_housing']
${legal_apartment}           //input[@name='Contractor_apartment']
${legal_house}               //input[@name='Contractor_house']
${legal_additional}          //input[@name='Contractor_additionalInfo']
#Банковские реквизиты
${legal_bik}                 //input[@name='Contractor_bik']                                  #бик
${legal_bankName}            //input[@name='Contractor_bankName']                             #наименование банка
${legal_bankCity}            //input[@name='Contractor_bankCity']
${leagal_cor}                        //input[@placeholder='301']
${legal_bankAccount}         //input[@name='Contractor_bankAccount']                          #Расчетный счет
#Контакты
${legal_contactPerson}       //input[@name='Contractor_contactPerson']
${legal_placeholder}         //input[@placeholder='+7 ХХХ ХХХ-ХХ-ХХ']
${legal_corpEmail}           //input[@name='Contractor_corpEmail']
${legal_userPosition}        //input[@name='Contractor_userPosition']
${legal_directorFullName}    //input[@name='Contractor_directorFullName']
${legal_directorEmail}       //input[@name='Contractor_directorEmail']
${legal_directorEmail}       //input[@name='Contractor_directorEmail']
${legal_chiefAccountant}     //input[@name='Contractor_chiefAccountantFullName']
${legal_AccountantEmail}     //input[@name='Contractor_chiefAccountantEmail']

#текстовые атрибуты
${name}     Test
${name_1}   Ivan
${surname}  Testovich
${surname_1}  Ivanov
${number}   71114441111
${number2}  71114442222
${company_text}                      //h2[@class='e114sczy0 eml1k9j0 react-ssr-app-btob-148euz e1gjr6xo0']
${company_text_inn}                  613224381022
${legal_invoice_order_text}          //th[@class='number_of_order']
${legal_bonuses_text}                //span[@class='e1ys5m360 e106ikdt0 css-uq8n7d e1gjr6xo0']
${legal_el_licenses_text}            //strong[@class='Velvica__text Velvica__text_bold'][3]
${legal_delivery_text}               //h2[@class='e114sczy0 eml1k9j0 css-qy8up7 e1gjr6xo0']
${legal_name_company_text}           ООО Тестилище
${legal_OGRN_text}                   1176733010960
${legal_index_text}                  101001
${legal_city_text}                   Москва
${legal_street_text}                 Ленина
${legal_house_text}                  1
${legal_housing_text}                1
${legal_apartment_text}              1/2
${legal_additional_text}             Доп инфо
${legal_bik_text}                    182177756
${legal_bankName_text}               ВТБ (ПАО) в г. Москве
${legal_bankCity_text}               Москва
${legal_bankAccount_text}            40702810902820001311
${leagal_cor_text}                   40702810902820001310
${legal_contactPerson_text}          Тестов
${legal_placeholder_text}            +7 (141) 441-14-14
${legal_corpEmail_text}              milyukov.p@citilink.ru
${legal_userPosition_text}           Директор
${legal_directorFullName_text}       Тестов Т.Т
${legal_directorEmail_text}          milyukov.p@citilink.ru
${legal_chiefAccountant_text}        Тестова Н.И
${legal_AccountantEmail_text}        milyukov.p@citilink.ru


#Вызов генерации ИНН
${random_inn}=    Get Random INN FL     #ФИЗ лицо
${random_inn}=    Get Random INN UL     #ЮР лицо



*** Test Cases ***
Вход в лк
   Open browser     ${main_page}   ${browser}
   Maximize Browser Window
   click element       ${catalogButton}
   input text       ${login_input_field}    ${login}    # заменить на ${login}    для stage
   input password   ${login_pass_field}     ${password}   # заменить на ${password} для stage
   Wait Until Page Contains Element         ${the_login_button_submit}
   click element    ${the_login_button_submit}
   close browser

Смена пользователя
    Open browser     ${main_page}   ${browser}
    Maximize Browser Window
    click element       ${catalogButton}
    input text       ${login_input_field}    ${login}    # заменить на ${login}    для stage
    input password   ${login_pass_field}     ${password}   # заменить на ${password} для stage
    Wait Until Page Contains Element         ${the_login_button_submit}
    click element      ${the_login_button_submit}
    click element       ${Profile}
    click element       ${switch_profile}
    sleep    1s
    click element       ${change_user}
    sleep    2s
##Проверка навигации
#
#   click element       ${catalogButton}
#   click element    ${my_profile}
#   find element     ${name_profile}
#   sleep    4s
##invoice_orders
#   click element       ${Profile}
#   click element       ${legal_invoice_orders}
#   sleep    2s
#   get text            ${legal_invoice_order_text}
#   go back
##bonus
#   click element       ${Profile}
#   click element       ${legal_bonuses}
#   sleep    5s
#   get text            ${legal_bonuses_text}
#   go back
##licenses
#    click element       ${Profile}
#    click element       ${legal_el_licenses}
#    sleep    3s
#    get text            ${legal_el_licenses_text}
#    go back
##Delivery
#   click element       ${Profile}
#   click element       ${legal_delivery}
#   sleep    3s
#   get text            ${legal_delivery_text}
#   go back
##staff
#   click element       ${Profile}
#   click element       ${legal_staff}
#   sleep    3s
#   get text            ${legal_staff_text}
#   go back
##exit
#   click element       ${Profile}
#   click element    ${legal_exit_form}
#   sleep    2s



Добавить контрагента ИП
    Open browser    ${main_page}   ${browser}
    Maximize Browser Window
    click element   ${catalogButton}
    input text      ${login_input_field}     ${login}    # заменить на ${login}    для stage
    input password  ${login_pass_field}      ${password}   # заменить на ${password} для stage
    Wait Until Page Contains Element         ${the_login_button_submit}
    click element   ${the_login_button_submit}
    click element   ${Profile}
    click element   ${legal_company}
    sleep    1s
 #   get text         ${company_text}
    click element   ${add_counterparty}
    sleep    1s
    click element   ${legal_company_form}
    sleep    1s
    click element   ${company_form_ip}
    sleep    2s
    ${random_inn}=    Get Random INN FL
    input text      ${legal_field_inn}        ${random_inn}
    sleep    2s
    click element   ${form_continue}
    sleep    5s
    input text      ${legal_name_company}       ${legal_name_company_text}
    input text      ${legal_OGRN}               ${legal_OGRN_text}
    input text      ${legal_index}              ${legal_index_text}
    input text      ${legal_city}               ${legal_city_text}
    input text      ${legal_street}             ${legal_street_text}
    input text      ${legal_house}              ${legal_house_text}
    input text      ${legal_housing}            ${legal_housing_text}
    input text      ${legal_apartment}          ${legal_apartment_text}
    input text      ${legal_additional}         ${legal_additional_text}
    input text      ${legal_bik}                ${legal_bik_text}
    sleep   3s
    input text      ${legal_bankName}            ${legal_bankName_text}
    sleep   3s
    input text      ${legal_bankCity}            ${legal_bankCity_text}
    sleep    3s
    input text      ${legal_bankAccount}         ${legal_bankAccount_text}
    input text      ${leagal_cor}                ${leagal_cor_text}
    sleep    3s
    input text      ${legal_contactPerson}       ${legal_contactPerson_text}
    input text      ${legal_placeholder}         ${legal_placeholder_text}
    input text      ${legal_corpEmail}           ${legal_corpEmail_text}
    input text      ${legal_userPosition}        ${legal_userPosition_text}
    input text      ${legal_directorFullName}    ${legal_directorFullName_text}
    input text      ${legal_directorEmail}       ${legal_directorEmail_text}
    input text      ${legal_chiefAccountant}     ${legal_chiefAccountant_text}
    input text      ${legal_AccountantEmail}     ${legal_AccountantEmail_text}
    sleep    2s
    click element   ${add_counterparty_continue}
    sleep    4s
    click element   ${сontinue_without_details}
#
#Добавить контрагента ЮР
#    Open browser    ${main_page}   ${browser}
#    Maximize Browser Window
#    click element   ${catalogButton}
#    input text      ${login_input_field}     ${login}    # заменить на ${login}    для st
#    input password  ${login_pass_field}      ${password}   # заменить на ${password} для
#    Wait Until Page Contains Element         ${the_login_button_submit}
#    click element   ${the_login_button_submit}
#    click element   ${Profile}
#    click element   ${legal_company}
#    sleep    1s
# #   get text         ${company_text}
#    click element   ${add_counterparty}
#    sleep    1s
#    click element   ${legal_company_form}
#    sleep    1s
#    click element   ${company_form_ip}
#    sleep    2s
#    ${random_inn}=    Get Random INN UL
#    input text      ${legal_field_inn}        ${random_inn}
#    sleep    2s
#    click element   ${form_continue}
#    sleep    5s
#    input text      ${legal_name_company}       ${legal_name_company_text}
#    input text      ${legal_OGRN}               ${legal_OGRN_text}
#    input text      ${legal_index}              ${legal_index_text}
#    input text      ${legal_city}               ${legal_city_text}
#    input text      ${legal_street}             ${legal_street_text}
#    input text      ${legal_house}              ${legal_house_text}
#    input text      ${legal_housing}            ${legal_housing_text}
#    input text      ${legal_apartment}          ${legal_apartment_text}
#    input text      ${legal_additional}         ${legal_additional_text}
#    input text      ${legal_bik}                ${legal_bik_text}
#    sleep   3s
#    input text      ${legal_bankName}            ${legal_bankName_text}
#    sleep   3s
#    input text      ${legal_bankCity}            ${legal_bankCity_text}
#    sleep    3s
#    input text      ${legal_bankAccount}         ${legal_bankAccount_text}
#    input text      ${leagal_cor}                ${leagal_cor_text}
#    sleep    3s
#    input text      ${legal_contactPerson}       ${legal_contactPerson_text}
#    input text      ${legal_placeholder}         ${legal_placeholder_text}
#    input text      ${legal_corpEmail}           ${legal_corpEmail_text}
#    input text      ${legal_userPosition}        ${legal_userPosition_text}
#    input text      ${legal_directorFullName}    ${legal_directorFullName_text}
#    input text      ${legal_directorEmail}       ${legal_directorEmail_text}
#    input text      ${legal_chiefAccountant}     ${legal_chiefAccountant_text}
#    input text      ${legal_AccountantEmail}     ${legal_AccountantEmail_text}
#    sleep    2s
#    click element   ${add_counterparty_continue}
#    sleep    4s
#    click element   ${сontinue_without_details}


















































































