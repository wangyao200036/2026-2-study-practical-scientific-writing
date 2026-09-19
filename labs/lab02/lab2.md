---
title: "Отчёт по лабораторной работе №2"
author: "Ван Яо"

lang: ru-RU
toc-title: "Содержание"

bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

toc: true
toc-depth: 2
lof: true
lot: true
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt

polyglossia-lang:
  name: russian
  options:
    - spelling=modern
    - babelshorthands=true
polyglossia-otherlangs:
  name: english

babel-lang: russian
babel-otherlangs: english

mainfont: Times New Roman
romanfont: Times New Roman
sansfont: Arial
monofont: Courier New
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9

biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric

figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"

indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float}
  - \floatplacement{figure}{H}
---

# Цель работы

Изучить базовую структуру документа Latex, научиться создавать и компилировать простые '.tex' файлы в PDF, а также освоить специальные символы, используемые для управления latex.



# Ход лабораторной работы

## 2.1 Структура документа LaTeX

### 2.1.1 Первый документ

Создан файл "first.tex" со следующим содержимым:

<img src="https://github.com/wangyao200036/2026-2-study-practical-scientific-writing/raw/main/pic/2.1.1.png" style="zoom:67%;" />

компиляция выполнена командой:

```
pdflatex first.tex
```

В результате получен файл `first.pdf`, содержащий текст документа и автоматически добавленный номер страницы.

### 2.1.2 Что получилось

Изучена базовая структура документыа LaTeX:

| часть          | расположение                                | назначение                                      |
| -------------- | ------------------------------------------- | ----------------------------------------------- |
| преамбула      | до `\begin{document}`                       | настройка класса документа, подключение пакетов |
| тело документа | между `\begin{document}` и `\end{document}` | содержимое документа                            |

Основные элементы:

- `\documentclass{article}` — задаёт класс документа
- `\usepackage[T1]{fontenc}` — подключает пакет кодировки шрифта
- Пустая строка разделяет абзацы
- Несколько пробелов подряд воспринимаются как один




### 2.1.3 Комментарии и сноски

Создан файл "first2.tex" со следующим содержимым:

<img src="https://github.com/wangyao200036/2026-2-study-practical-scientific-writing/raw/main/pic/2.1.3.png" style="zoom:67%;" />

Особенности:

- `\footnote{...}` добавляет сноску
- Опции `[a4paper,12pt]` задают формат страницы и размер шрифта

### 2.1.4 «Жёсткий» пробел

Изучен символ ~ -«Жёсткий» пробел. который не переносится на новую строку:

```
See Section~2 for detials .
```

Это полезно при создании перекрёстных ссылок.

## 2.2 Запуск LaTeX

### Способ 1: из командной строки

```
pdflatex first.tex
```




### Способ 2: в среде VS Code

- Crtl + Alt + B — компиляция
- Crtl + Alt + V — просмотр PDF


## 2.3 Специальные символы


### Специальные символы и их экранирование

| Символ | Назначение             | Короткая команда | Длинная команда    |
| ------ | ---------------------- | ---------------- | ------------------ |
| {      | обязательный аргумент  | `\{`             | `\textbraceleft`   |
| }      | обязательный аргумент  | `\}`             | `\textbraceright`  |
| $      | математический режим   | `\$`             | `\textdollar`      |
| %      | комментарий            | `\%`             | —                  |
| &      | разделитель в таблицах | `\&`             | —                  |
| #      | параметр макроса       | `\#`             | —                  |
| _      | нижний индекс          | `\_`             | `\textunderscore`  |
| \      | начало команды         | —                | `\textbackslash`   |
| ^      | верхний индекс         | —                | `\textasciicircum` |
| ~      | жёсткий пробел         | —                | `\textasciitilde`  |



### Демонстрация специальных символов

Создан файл "special.tex" 

<img src="https://github.com/wangyao200036/2026-2-study-practical-scientific-writing/raw/main/pic/2.3.png" style="zoom:50%;" />



# Выводы

1. Теоретические знания:
Изучена базовая структура документа LaTeX: преамбула и тело документа. Понято назначение класса документа, пакетов и окружений.

1. Практические навыки:
Созданы и успешно скомпилированы несколько простых документов LaTeX. Освоены команды компиляции через командную строку и в среде VS Code.

1. Результат:
   Изучены специальные символы LaTeX и способы их экранирования в обычном тексте.

   
   
   
# Литература
1. Документация LaTeX Project. https://www.latex-project.org/help/documentation/
2. Learn LaTeX. https://www.learnlatex.org/
3. LaTeX Wikibook. https://en.wikibooks.org/wiki/LaTeX

