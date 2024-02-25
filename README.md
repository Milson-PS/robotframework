# Проект автоматизации тестирования  <a target="_blank" href="https://citilink.ru/">Ситилинк</a> <img src="img/citi.jpeg" width="50" height="50"  alt="citi"/>

## :open_book: Содержание:
- [Технологии и инструменты](#gear-в-проекте-используются-следующие-технологии-и-инструменты)
- [Что проверяем](#heavy_check_mark-что-проверяем)
- [Запуск тестов из терминала](#computer-запуск-тестов-из-терминала)
- [Отчеты](#bar_chart-отчеты-о-прохождении-тестов-доступны-в-allure)
- [Allure TestOps](#-проект-интегрирован-с-allure-testOps)

## :gear: В проекте используются следующие технологии и инструменты:

<p align="center">
<img src="img/git.webp" width="50" height="50"  alt="git"/>
<img src="img/allure.jpeg" width="50" height="50"  alt="Allure"/>
<img src="img/py2.jpeg" width="50" height="50"  alt="python"/>
<img src="img/robo.jpeg"   width="50" height="50"  alt="robo"/>
</p>

## :heavy_check_mark: Описание
В проекте автоматизирована проверка личного кабинета сайта Ситилинк. 

## :heavy_check_mark: Что проверяют UI тесты

> - Проверка заголовка гланой страницы ЛК
> - Проверка меню навигации
> - Генерация ИНН
> - Вход в ЛК
> - Смена пользователя
> - Добавление получателя 
> - Редактирование получателя 
> - Удаления получателя 
> - Добавления адреса 
> - Редактирования адреса
> - Удаления адреса


## :computer: Запуск тестов 

Для запуска необходимо выполнить команду:
```
robot Имя_файла.robot
```
<img src="img/screen /ts1.gif" alt="gif" />



## :bar_chart: Отчеты о прохождении тестов доступны в Allure


#### Главная страница

<img src="img/screen /1.png" alt="Allure"/>

#### Графики

<img src="img/screen /2.png" alt="Allure"/> 

<img src="img/screen/ 3.png" alt="Allure"/>
<img src="img/screen/ 4.png" alt="Allure"/>
#### Тесты

<img src="img/screen/AllureTests.jpg" alt="Allure"/>


## :heavy_check_mark: Генерация ИНН 

> - Код на Python представляет собой набор функций для генерации и валидации ИНН.
> - Функция get_random_kno() возвращает случайный Код Налогового Органа.
> - Функции get_controls_inn_ul(inn) и get_controls_inn_fl(inn) используются для вычисления контрольных чисел для ИНН юридического лица и физического лица.
> - Функции get_random_inn_ul(kno) и get_random_inn_fl(kno) генерируют случайные ИНН для юридических и физических лиц соответственно, используя случайно выбранный Код Налогового Органа.
> - Функция validate_inn(inn) выполняет валидацию введенного ИНН.
> - После объявления функций, код вызывает функции для генерации случайных ИНН для юридических и физических лиц и выводит их на экран.
> - Вызов в robot framework:
> - ${random_inn}=    Get Random INN FL
> - input text      ${legal_field_inn}        ${random_inn}



