---
title: "Отчёт по лабораторной работе №3"
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

Изучить математический режим LaTex и научиться набирать встроенные и выключенные формулы, освоить расширения пакета "amamath", изучить изменение шрифтов в математическом режиме, а также познакомиться с пакетами "mathtools" и "unicode-math".

# Ход лабораторной работы

## 3.1 Математический режим (Math mode)

### 3.1.1 Встроенный математический режим

Встроенный математический режим обозначается парой знаков доллара `$...$` или `\(...\)`.


Создан файл 3.1.1-math-inline.tex

```
\documentclass{article}
\usepackage[T1]{fontenc}
\begin{document}
A sentence with inline mathemaaatics: $y=mx+c$.

A second paragraph containing display math.
\[
y=mx+c
\]
See how the paragraph continues after the display.
\end{document}

```

**Особенности встроенного режима:**

- Пробелы игнорируются, правильные интервалы применяются автоматически
- Буквы отображаются курсивом
- Вертикальный размер формулы ограничивается, чтобы не нарушать межстрочный интервал
- Вся математика должна быть помечена как математика, даже одиночные символы

### 3.1.2 Верхние и нижние индексы

Создан файл 3.1.1-superscript.tex

```
\documentclass{article}
\usepackage[T1]{fontenc}
\begin{document}
Superscripts $a^{b}$ and subscripts $a_{b}$.
\end{document}
```

**Важно:** всегда использовать фигурные скобки `{}` для индексов, даже для одиночных символов.

### 3.1.3 Греческие буквы и функции

Создан файл 3.1.1-greek.tex

```
\documentclass{article}
\usepackage[T1]{fontenc}
\begin{document}
Some mathematics: $y = 2 \sin \theta^{2}$.
\end{document}

```

**Основные команды:**

- ```
  \sin,\cos,\log - функция
  ```

- ```
  \theta,\alpha,\beta - буквы
  ```

  



### 3.1.4 Выключной математический режим

Выключной режим используется для крупных уравнений и центрируется по умолчанию.

Создан файл 3.1.2-display.tex

```
\documentclass{article}
\usepackage[T1]{fontenc}
\begin{document}
A paragraph about a larger equation
\[
\int_{-\infty}^{+\infty} e^{-x^2} \, dx
\]
\end{document}
```





### 3.1.5 Создание пользовательской команды

Создан файл 3.1.2-diff.tex

```
\documentclass{article}
\usepackage[T1]{fontenc}
\begin{document}
A paragraph about a larger equation
\[
\int_{-\infty}^{+\infty} e^{-x^2} \, dx
\]
\end{document}
```





### 3.1.6 Нумерованные уравнения

Создан файл 3.1.2-equation.tex

```
\documentclass{article}
\usepackage[T1]{fontenc}
\begin{document}
A paragraph about a larger equation
\begin{equation}
\int_{-\infty}^{+\infty} e^{-x^2} \, dx
\end{equation}
\end{document}

```

Номер уравнения увеличивается автоматически, может быть с префиксом раздела,



## 3.2 Пакет amsmath

Пакет amsmath расширяет ядро LaTex и добавляет множество новых конструкций.

### 3.2.1 Окружение align*

Создан файл 3.2-amsmath-align.tex

```
\documentclass{article}
\usepackage[T1]{fontenc}
\usepackage{amsmath}
\begin{document}
Solve the following recurrence for $ n,k\geq 0 $:
\begin{align*}
Q_{n,0} &= 1 \quad Q_{0,k} = [k=0]; \\
Q_{n,k} &= Q Q_{n-1,k}+Q_{n-1,k-1}+\binom{n}{k},
 \quad\text{for $n$,$k>0$.}
\end{align*}
\end{document}

```

**Особенности:**

- `&` выравнивает уравнения по столбцам
- `\quad` добавляет немного пространства
- `\text{}` вставляет обычный текст внутрь математики
- `\binom{}{}` — биномиальный коэффициент
- Звёздочка `*` отключает нумерацию уравнений

### 3.2.2 Матрицы

Создан файл 3.2-amsmath-matrix.tex

```
\documentclass{article}
\usepackage[T1]{fontenc}
\usepackage{amsmath}
\begin{document}
AMS matrices .
\[
\begin{matrix}
a & b & c \\
d & e & f
\end{matrix}
\quad
\begin{pmatrix}
a & b & c \\
d & e & f
\end{pmatrix}
\quad
\begin{bmatrix}
a & b & c \\
d & e & f
\end{bmatrix}
\]
\end{document}

```



Три варианта матриц: без скобок, с круглыми, с квадратными.

## 3.3 Шрифты в математическом режиме

В математическом режиме используются специальные команды шрифтов:

| Команда   | Назначение                       |
| :-------- | :------------------------------- |
| `\mathrm` | прямой (roman)                   |
| `\mathit` | курсив с текстовым интервалом    |
| `\mathbf` | полужирный                       |
| `\mathsf` | без засечек                      |
| `\mathtt` | моноширинный                     |
| `\mathbb` | двойной штрих (требует amsfonts) |

### 3.3.1 Матрица с полужирным шрифтом

Создан файл 3.3-fonts.tex

```
\documentclass{article}
\usepackage[T1]{fontenc}
\begin{document}
The matrix $\mathbf{M}$.
\end{document}
```



### 3.3.2 Сравнение `\text`, `\mathit` и `\mathrm`

Создан файл 3.3-text-vs-math.tex

```
\documentclass{article}
\usepackage[T1]{fontenc}
\usepackage{amsmath}
\begin{document}

$\text{bad use } size \neq \mathit{size} \neq \mathrm{size}$

\textit{$\text{bad use } size \neq \mathit{size} \neq \mathrm{size} $}

\end{document}

```

Показывает разницу между тремя подходами к набору слова «size» в математическом режиме.

## 3.4 Дополнительные выравнивания amsmath

### 3.4.1 Окружения gather и multline

Создан файл 3.4-gather-multline.tex

```
\documentclass[a4paper]{article}
\usepackage[T1]{fontenc}
\usepackage{amsmath}
\begin{document}
Gather
\begin{gather}
P(x)=ax^{5}+bx^{4}+cx^{3}+dx^{2}+ex +f\\
x^2+x=10
\end{gather}

Multiline
\begin{multline*}
(a+b+c+d)x^{5}+(b+c+d+e)x^{4} \\
+(c+d+e+f)x^{3}+(d+e+f+a)x^{2}+(e+f+a+b)x\\
+ (f+a+b+c)
\end{multline*}
\end{document}

```



- `gather` — многострочные дисплеи без выравнивания
- `multline` — для одного большого выражения, разбитого на строки

### 3.4.2 Столбцы в математических выравниваниях

Создан файл 3.4.1-columns.tex

```
\documentclass{article}
\usepackage[T1]{fontenc}
\usepackage{amsmath}
\begin{document}
Aligned equations
\begin{align*}
a &= b+1  & c &= d+2 & e &= f+3 \\
r &= s^{2} & t &= u^{3} & v &= w^{4}
\end{align*}
\end{document}

```

Окружения amsmath принимают пары столбцов: первый выравнивается по правому краю, второй — по левому.


## 3.5 Полужирная математика

### 3.5.1 Стандартные методы

Создан файл 3.5-blod.tex

```
\documentclass[a4paper]{article}
\usepackage[T1]{fontenc}
\begin{document}
$(x+y)(x-y)=x^2-y^2$

{\boldmath $(x+y)(x-y)=x^{2}-y^{2}$ $ \pi r^2$}

$(x+\mathbf{y})(x-\mathbf{y})=x^{2}-{\mathbf{y}}^{2}$
$\mathbf{\pi} r^2$
\end{document}

```



- `\boldmath` делает полужирным всё выражение
- `\mathbf` — отдельные буквы или слова

### 3.5.2 Пакет bm

Создан файл 3.5-bm.tex

```
\documentclass[a4paper]{article}
\usepackage[T1]{fontenc}
\usepackage{bm}

\begin{document}


$(x+\mathbf{y})(x-\mathbf{y})=x^{2}-{\mathbf{y}}^{2}$

$(x+\bm{y})(x-\bm{y}) \bm{=} x^{2}-{\bm{y}}^{2}$

$\alpha + \bm{\alpha} < \beta + \bm{\beta}$

\end{document}

```

Пакет `bm` позволяет получать полужирные символы (включая `=`, греческие буквы) внутри обычного выражения.

## 3.6 Mathtools

Пакет `mathtools` загружает `amsmath` и добавляет расширения.

Создан файл 3.6-mathtools.tex

```
\documentclass[a4paper]{article}
\usepackage[T1]{fontenc}
\usepackage{mathtools}
\begin{document}
\[
\begin{pmatrix*}[r]
    10&11\\
    1&2\\
    -5&-6
\end{pmatrix*}
\]
\end{document}

```

Возможности:

- Выравнивание столбцов матриц (`[r]`, `[l]`, `[c]`)
- Дополнительные окружения
- Улучшенные команды

## 3.7 Unicode Math

Пакет `unicode-math` позволяет использовать OpenType-шрифты. Требует движка LuaLaTeX или XeLaTeX.

Создан файл 3.7-unicode.tex

```
\documentclass[a4paper]{article}
\usepackage{unicode-math}
\setmainfont{Tex Gyre Pagella}
\setmathfont{Tex Gyre Pagella Math}

\begin{document}

One two three
\[
\log \alpha + \log \beta = \log(\alpha\beta)
\]

Unicode Math Alphanumerics
\[A + \symfrak{A}+\symbf{A}+ \symcal{A}+ \symscr{A}+ \symbb{A}
\]

\end{document}

```

Компилируется командой:


lualatex 3.7-unicode.tex


## 3.8 Упражнения



### 3.8.1 Опция fleqn (формулы слева)

Создан файл 3.8-fleqn.tex

```
\documentclass[fleqn]{article}
\usepackage[T1]{fontenc}
\usepackage{amsmath}
\begin{document}
\[
y=mx+c
\]

\end{document}

```



### 3.8.2 Опция leqno (номера слева)

Создан файл 3.8-fleqn.tex

```
\documentclass[leqno]{article}
\usepackage[T1]{fontenc}
\begin{document}
\begin{equation}
    y=mx+c
\end{equation}


\end{document}

```



# Выводы

1. **Теоретические знания:**
   Изучены основы математического режима LaTeX, включая встроенные и выключные формулы, верхние и нижние индексы, греческие буквы и математические функции.
2. **Практические навыки:**
   Освоен пакет `amsmath` с его окружениями `align`, `gather`, `multline`, `aligned`, матрицами. Изучены команды изменения шрифтов в математическом режиме (`\mathrm`, `\mathit`, `\mathbf`, `\mathsf`, `\mathtt`, `\mathbb`).
3. **Дополнительные возможности:**
   Изучены пакеты `bm` (полужирная математика), `mathtools` (расширенные матрицы), `unicode-math` (OpenType-шрифты). Рассмотрены опции класса документа `fleqn` и `leqno`.

  

  

# Литература
Документация LaTeX Project. https://www.latex-project.org/help/documentation/

Learn LaTeX — Mathematics. https://www.learnlatex.org/en/lesson-10

amsmath User Guide. https://www.ctan.org/pkg/amsmath

Документация пакета mathtools. https://www.ctan.org/pkg/mathtools

Документация пакета unicode-math. https://www.ctan.org/pkg/unicode-math

