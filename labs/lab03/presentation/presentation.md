---
## Front matter
lang: ru-RU
title: Лабораторная работа 2
subtitle: Дискреционное разграничение прав в Linux. Два пользователя
author:
  - Юрченко Артём Алексеевич
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 22 сентября 2023

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---


## Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}
  * Юрченко Артём Алексеевич
  * студент кафедры математического модулирования и искусственного интеллекта
  * Российский университет дружбы народов
  * [1032201660@rudn.ru](mailto:1032201659@rudn.ru)
:::
::: {.column width="30%"}



:::
::::::::::::::
# Вводная часть


## Цели и задачи

Целью данной работы является получение практических навыков работы в консоли с атрибутами файлов для групп пользователей.

1. Создать новую учетную запись guest2.

2. Выполнить ряд операций в новой и старой учетных записях.

3. Сформировать таблицу "Установленные права и разрешенные действия".

4. Сформировать таблицу "Минимальные права для совершения операций".


# Результаты выполнения работы

Уточним имя пользователя, его группу, кто входит в неё и к каким группам принадлежит он сам.

![Вывод информации о пользователе в консоли guest](image/screenshot_6.png){#fig:006 width=40%}

![Вывод информации о пользователе в консоли guest2](image/screenshot_7.png){#fig:007 width=40%}

Заметим, что все команды выводят одинаковую информацию, но в разных форматах

## Ход работы

Сравним полученную информацию с содержимым файла /etc/group.

![Содержимое файла /etc/group](image/screenshot_8.png){#fig:008 width=20%}

Видим информацию о группе, ее id и название подгруппы.

## Ход работы

От имени пользователя guest2 выполним регистрацию пользователя guest2 в группе guest

![Регистрация пользователя guest2 в группе guest](image/screenshot_9.png){#fig:009 width=90%}

## Ход работы

От имени пользователя guest изменим права директории /home/guest, разрешив все действия для пользователей группы

![Изменение прав директории /home/guest](image/screenshot_10.png){#fig:010 width=90%}

## Ход работы

От имени пользователя guest снимем с директории /home/guest/dir1 все атрибуты

![Снятие с директории /home/guest/dir1 всех атрибутов](image/screenshot_11.png){#fig:011 width=90%}

## Ход работы

Заполним таблицу «Установленные права и разрешённые действия».

![Фрагмент таблицы 3.1](image/screenshot_12.png){#fig:012 width=90%}

## Ход работы

Заполним таблицу «Минимальные права для совершения операций».

![Таблица 3.2](image/screenshot_13.png){#fig:013 width=50%}


## Результаты

В рамках данной лабораторной работы были получены практические навыки работы в консоли с атрибутами файлов для групп пользователей.