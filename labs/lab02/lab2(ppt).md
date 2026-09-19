---
lang: ru-RU
title: Лабораторная работа №2
author: Wang Yao
institute: RUDN University, Moscow, Russian Federation
date: 18 Septembe, 2026 Moscow

toc: false
slide_level: 2
theme: CambridgeUS
colortheme: beaver
fonttheme: structurebold
header-includes: 
 - \usepackage{fontspec}
 - \setmainfont{DejaVu Serif}
 - \setsansfont{DejaVu Sans}
 - \setmonofont{DejaVu Sans Mono}
aspectratio: 43
section-titles: true
---

# Цель работы

Изучить базовую структкру документа LaTeX, научиться и компилировать простые ".tex"файл в PDF, а также освоить специальные символы, используемые для управления LaTeX.



---

# Ход лабораторной работы



## Первый документ LaTeX

**Структура файла "first.tex"**

<img src="https://github.com/wangyao200036/2026-2-study-practical-scientific-writing/raw/main/pic/2.1.1.png" style="zoom:67%;" />

**Компиляция:**

```
pdflatex first.tex
```

**Результат**: файл `first.pdf` с текстом и номером страницы.

---

## Структура документа LaTeX

**Два основные части:**

- **Превмбула** - до `\begin{document}`
  - настройка класса документа
  - подключение пакетов
- **Тело документа** - между `\begin{document}` и `\end{document}`
  - содержимое документа

**Ключевые команды:**

- `\documentclass{article}` — 
- `\usepackage[T1]{fontenc}`










---

## Абзацы и пробелы

Разделение абзацев:

- Одна или несколько пустых строк разделяют абзациы

Правила пробелов:

- Несколько пробелов подряд = один пробел
- `~` — «жёсткий» пробел, не переносится
- Полезен для перекрёстных ссылок

**Пример**:

```
See Section~2 for details.
```




---

## Комментарии и сноски

**Комментарии начинаются с %:**

```
% The documment class with option
\documnetclass[a4paper,12pt]{article}
```

**Сноски:**

```
This is a simple document\footnote{with a footnote}.
```

**Опции документа**:

- `[a4paper]` — формат страницы
- `[12pt]` — размер шрифта


---

## Запуск LaTeX

### Способ 1: из командной строки

```
pdflatex first.tex
```




### Способ 2: в среде VS Code

- Crtl + Alt + B — компиляция
- Crtl + Alt + V — просмотр PDF

**Важно**: `.tex` файлы — это простой текст.

---

## Специальные символы LaTeX

| Символ  | Назначение             |
| ------- | ---------------------- |
| `\`     | начало команды         |
| `{` `}` | обязательные аргументы |
| `$`     | математический режим   |
| `%`     | комментарий            |
| `&`     | разделитель в таблицах |
| `#`     | параметр макроса       |
| `_`     | нижний индекс          |
| `^`     | верхний индекс         |
| `~`     | жёсткий пробел         |





---

## Экранирование специальных символов

**Короткая команда** (математика и текст):

- `\{` `\}` `\$` `\%` `\&` `\#` `\_`

**Длинная команда** (только текст):

- `\textbraceleft` `\textbraceright`
- `\textdollar` `\textunderscore`
- `\textbackslash`
- `\textasciicircum` `\textasciitilde`

**Исключения**: для `\`, `^`, `~` нет коротких команд




---

## Демонстрация специальных символов

**Пример кода**:

<img src="https://github.com/wangyao200036/2026-2-study-practical-scientific-writing/raw/main/pic/2.3.png" style="zoom:50%;" />

**Результат**: символы выводятся как обычный текст.






# Вывод

В ходе лабораторной работы изучена базовая структура документа LaTeX:

- **Преамбула и тело документа** — основные части любого `.tex` файла
- **Комментарии** — начинаются с `%`
- **Специальные символы** — требуют экранирования
- **Компиляция** — возможна через командную строку и VS Code

---

## Основные выводы:

- LaTeX-документ — это обычный текстовый файл с командами
- Структура документа строго определена: преамбула + тело
- Специальные символы играют ключевую роль в управлении LaTeX
- Правильное использование `\` и `{}` — основа работы с LaTeX



# Литература

1. Документация LaTeX Project. https://www.latex-project.org/help/documentation/

1. Learn LaTeX. https://www.learnlatex.org/

1. LaTeX Wikibook. https://en.wikibooks.org/wiki/LaTeX

   