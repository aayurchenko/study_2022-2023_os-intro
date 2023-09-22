---
## Front matter
title: "Лабораторная работа № 1"
subtitle: "Установка и конфигурация операционной системы на виртуальную машину"
author: "Юрченко Артём Алексеевич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
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
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной работы является приобретение практических навыков
установки операционной системы на виртуальную машину, настройки минимально необходимых для дальнейшей работы сервисов.

# Задание

Установить и настроить ОС Linux на виртуальную машину.

# Выполнение лабораторной работы

1. Создадим виртуальную машину (Рис. @fig:001).

![Окно создания виртуальной машины](image/screenshot_1.png){#fig:001 width=90%}

2. Запустим виртуальную машину и дождемся загрузки ОС. После этого проведем первичную настройку системы (Рис. @fig:002).

![Окно настройки ОС](image/screenshot_3.png){#fig:002 width=90%}

3. После запуска ОС откроем терминал и выведем некоторую информацию о нашей конфигурации (Рис. @fig:003 - Рис. @fig:009).

![Версия ядра Linux](image/screenshot_4.png){#fig:003 width=90%}

![Частота процессора ](image/screenshot_5.png){#fig:004 width=90%}

![Модель процессора ](image/screenshot_6.png){#fig:005 width=90%}

![Объем доступной оперативной памяти ](image/screenshot_7.png){#fig:006 width=90%}

![Тип обнаруженного гипервизора](image/screenshot_8.png){#fig:007 width=90%}

![Тип файловой системы корневого раздела](image/screenshot_9.png){#fig:008 width=90%}

![Последовательность монтирования файловых систем](image/screenshot_10.png){#fig:009 width=90%}

# Выводы

Были приобретены практические навыки установки операционной системы на виртуальную машину, настройки минимально необходимых для дальнейшей работы сервисов.
