# Проект автоматизации тестирования для <a target="_blank" href="https://citilink.ru/">Ситилинк</a> <img src="img/citilink.jpg" width="50" height="50"/>

## :open_book: Содержание:
- [Технологии и инструменты](#gear-в-проекте-используются-следующие-технологии-и-инструменты)
- [Что проверяем](#heavy_check_mark-что-проверяем)
- [Запуск тестов из терминала](#computer-запуск-тестов-из-терминала)
- [Отчеты](#bar_chart-отчеты-о-прохождении-тестов-доступны-в-allure)
- - [Allure](#-allure)
- - [Telegram](#-telegram)
- [Видео с прогоном тестов](#movie_camera-видео-с-прогоном-тестов)
- [Allure TestOps](#-проект-интегрирован-с-allure-testOps)

## :gear: В проекте используются следующие технологии и инструменты:

<p align="center">
<img src="img/allure.jpeg" width="50" height="50"  alt="Allure"/>
<img src="img/python.jpeg" width="50" height="50"  alt="python/>
<img src="img/robo.jpeg" width="50" height="50"  alt="robo"/>
<img src="img/logo/Jira.svg" width="50" height="50"  alt="Jira"/>
</p>

## :heavy_check_mark: Описание
В проекте автоматизирована проверка личного кабинета сайта Ситилинк. 

## :heavy_check_mark: Что проверяют UI тесты

> - Проверка заголовка гланой страницы ЛК
> - Проверка меню навигации 
> - Вход в ЛК
> - Смена пользователя
> - Добавление получателя 
> - Редактирование получателя 
> - Удаления получателя 
> - Добавления адреса 
> - Редактирования адреса
> - Удаления адреса




## :computer: Запуск тестов из терминала

Для локального запуска необходимо выполнить команду:
```
robot test.robot
```

## :bar_chart: Отчеты о прохождении тестов доступны в Allure

### <img width="3%" title="Allure" src="img/logo/Allure.svg"> Allure

#### Главная страница

<img src="img/screen/AllureMain.jpg" alt="Allure"/>

#### Графики

<img src="img/screen/AllureGraph.jpg" alt="Allure"/>

#### Тесты

<img src="img/screen/AllureTests.jpg" alt="Allure"/>

### <img width="3%" title="Telegram" src="img/logo/Telegram.svg"> Telegram

Настроена отправка отчета ботом в Telegram

<img src="img/screen/Bot.jpg" alt="Telegram"/>

## :movie_camera: Видео с прогоном тестов

В отчетах Allure для каждого теста прикреплен не только скриншот, но и видео прохождения теста

<p align="center">
  <img title="Video" src="img/gif/test.gif">
</p>

## Проект интегрирован с Allure TestOps
<img width="3%" title="Allure" src="img/logo/Allure_TO.svg"> 

#### Представлены тест-кейсы

<img src="img/screen/TOTest.jpg" alt="TO"/>

#### Представлены дашборды аналитики

<img src="img/screen/TODash.jpg" alt="TO"/>

#### Представлены запуски

<img src="img/screen/TOLaunch.jpg" alt="TO"/>

