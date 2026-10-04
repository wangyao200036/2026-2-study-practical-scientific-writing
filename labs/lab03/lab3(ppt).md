---
lang: ru-RU
title: Лабораторная работа №3
author: Wang Yao
institute: RUDN University, Moscow, Russian Federation
date: 24 Septembe, 2026 Moscow

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

Изучить математический режим LaTex и научиться набирать встроенные и выключенные формулы, освоить расширения пакета "amamath", изучить изменение шрифтов в математическом режиме, а также познакомиться с пакетами "mathtools" и "unicode-math".



---

# Ход лабораторной работы

## Математический режим

**Два режима:**

- **Встроенный** (inline): `$...$` или `\(...\)`
- **Выключной** (display): `\[...\]` или окружение `equation`

**Особенности встроенного:**

- Пробелы игнорируются
- Буквы курсивом
- Вертикальный размер ограничен


---

## Встроенная математика — пример

```
A sentence with inline mathematics: $y = mx + c$.

A second sentence:
\begin{itemize}
  \item $5^{2}$
  \item $3^{2}$
  \item $4^{2}$
\end{itemize}
```

Результат: формулы встроены в текст и не нарушают межстрочный интервал.

---

## Верхние и нижние индексы

**Синтаксис:**

- Верхний индекс — `^`
- Нижний индекс — `_`

**Пример:**

```
superscripts $a^{b}$ and subscripts $a_{b}$
```

**Важно:** всегда использовать фигурные скобки `{}` для индексов.


---

## Греческие буквы и функции

```
Some mathmtics: $y = 2 \sin \theta^{a}$
```

**Основные команды:**

- `\sin`, `\cos`, `\log`, `\tan` — тригонометрические и логарифмические функции
- `\theta`, `\alpha`, `\beta`, `\gamma` — греческие буквы


---

## Выключной математический режим

**Синтаксис:**

```
\[
\int_{-\infty}^{+\infty} e^{-x^2}\,dx
\]
```

**Особенности:**

- Центрируется по умолчанию
- Для крупных уравнений
- Не допускает пустых строк внутри



---

## Пользовательская команда

**Пример создания `\diff`:**

```
\newcommand{\diff}{\mathop{}\!d}
```
Использование:
```
\[
\int_{-\infty}^{+\infty} e^{-x^2} \diff x
\]

```




---

## Нумерованные уравнения

**Окружение `equation`:**

```
\begin{equation}
\int_{-\infty}^{+\infty} e^{-x^2}\,dx
\end{equation}
```



---

## Пакет amsmath — align*

```
\begin{align*}
Q_{n,0} &= 1 \quad Q_{0,k}={k=0};
Q_{n,k} &=Q_{n-1,k}+Q_{n-1,k-1}+\binom{n}{k}
\end{align*}
```

**Особенности:**

- `&` выравнивает по столбцам
- `\quad` — пространство
- `\text{}` — обычный текст внутри математики
- `\binom{}{}` — биномиальный коэффициент
- `*` отключает нумерацию


---

## Пакет amsmath — матрицы

```
\[
\begin{matrix}
a & b & c \\
e & d & f
\end{matrix}
\quad
\begin{pmatrix}
a & b & c \\
e & d & f
\end{pmatrix}
\quad
\begin{bmatrix}
a & b & c \\
e & d & f
\end{bmatrix}
\]
```

Три типа матриц: без скобок, с круглыми, с квадратными.


---

## Шрифты в математическом режиме

| Команда   | Назначение    |
| :-------- | :------------ |
| `\mathrm` | прямой        |
| `\mathit` | курсив        |
| `\mathbf` | полужирный    |
| `\mathsf` | без засечек   |
| `\mathtt` | моноширинный  |
| `\mathbb` | двойной штрих |

**Пример:**

```
The matrix $\mathbf{M}$
```




---

## Сравнение  `\text`, `\mathit` и `\mathrm`

```
$\text{bad use } size \neq \mathit{size} \neq \mathrm{size}$
```

Показывает разницу между тремя подходами к набору слова «size».


---

## Дополнительные выравнивания — gather

```
\begin{gather}
P(x)=ax^{5}+bx^{4}+cx{3}\\
x^2+x=10
\end{gather}
```

**Назначение:** многострочные дисплеи без выравнивания.


---

## Дополнительные выравнивания — multline

```
\begin{multline*}
(a+b+c+d)x^{5}+(b+c+d+e)x^{4} \\
+(c+d+e+f)x^{3}+(d+e+f+a)x^{2}\\
+ (f+a+b+c)
\end{multline*}
```

**Назначение:** одно большое выражение, разбитое на строки (первая слева, последняя справа).


---

## Столбцы в align

```
\begin{align*}
a &=b+1 & c &=d+2 & e &= f+3 \\
\end{align*}
```

Окружения amsmath принимают пары столбцов: первый выравнивается по правому краю, второй — по левому.


---

## Полужирная математика

**Два метода:**

```
{\boldmath $(x+y)(x-y)=x^{2}-y{2}$  $ \pi r^2}
$(x+\mathbf{y})(x-\mathbf{y})=x^{2}-{\mathbf{y}}^{2}$
```

- `\boldmath` — всё выражение
- `\mathbf` — отдельные буквы


---

## Пакет bm

```
\usepackage{bm}
$(x+\bm{y})(x-\bm{y})=x^{2}-{\bm{y}}^{2}$
$\alpha+\bm(\alpha) < \beta + \bm(\beta)$
```

**Позволяет:**

- Делать полужирные символы
- Включая `=` и греческие буквы
- Внутри обычного выражения


---

## Mathtools

```
\usepackage{mathtools}
\[
\begin{pmatrix*}[r]
10&11\\
1&2
\end{pmatrix*}
\]
```

**Возможности:**

- Выравнивание столбцов матриц
- Дополнительные окружения
- Улучшенные команды


---

## Unicode Math

```
\usepackage{unicode-math}
\setmainfont{Tex Gyre Pagella}
\setmainfont{Tex Gyre Pagella Math}
```

**Компилируется только через LuaLaTeX.**

**Позволяет:**

```
\[A + \symfrak{A}+\symbf{A}+ \symcal{A} + \symscr{A}+
\symbb{A}\]
```




---

## Упражнения

**Опция fleqn (формулы слева):**

```
\doucumentclass[fleqn]{article}
```
**Опция leqno (номера слева):**

```
\doucumentclass[leqno]{article}
```






---

# Вывод

В ходе лабораторной работы изучен математический режим LaTeX:

- **Встроенный и выключной** режимы
- **Верхние и нижние индексы**, греческие буквы
- **Пакет amsmath** — align, gather, multline, матрицы
- **Шрифты в математическом режиме**
- **Полужирная математика**
- **Mathtools и Unicode Math**

---

## Основные выводы:

- Математический режим — одна из сильнейших сторон LaTeX
- Пакет `amsmath` существенно расширяет возможности
- Правильное использование команд шрифтов важно для семантики
- Unicode Math открывает доступ к современным шрифтам
- Пакеты `bm`, `mathtools`, `unicode-math` дополняют базовые возможности

---

# Литература

1. Официальная документация Git. https://git-scm.com/doc

1. Спецификация Conventional Commits. https://www.conventionalcommits.org/

1. Семантическое версионирование. https://semver.org/

1. Документация TeX Live. https://www.tug.org/texlive/

1. Соглашение об именовании Denote. https://protesilaos.com/emacs/denote

   
   
   