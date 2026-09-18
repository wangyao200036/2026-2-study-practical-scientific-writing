---
title: "Отчёт по лабораторной работе №1"
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

Освоить настройку рабочего пространства для научной работы: устанвить и настроить Git , создать удалённые репозитории, изучить стандарты семантическое версионирования  и общепринятых коммитов, освоить рабочее пространство лабораторной работы и установить дистрибутив Tex Live.

# Ход лабораторной работы

## 1.1 Программная инженерия

### 1.1.1 Семантическое версионирование

Изучен стандарт SemVer ,Версия задаётся в виде кортежа:

**МАЖОРНАЯ_ВЕРСИЯ.МИНОРНАЯ_ВЕРСИЯ.ПАТЧ**

Номер версии увеличивается:

- МАЖОРНАЯ — при обратно несовместимых изменениях API.
- МИНОРНАЯ — при добавлении новой функциональности без нарушения обратной совместимости.
- ПАТЧ — при обратно совместимых исправлениях.



### 1.1.2 Общепринятые коммиты

Изучена спецификация Conventional Commits. Структура сообщения:

```
<тип>(<область>):<описание изменения>
[необязательное тело]
[необязательный нижний колонтитул]
```

Основные типы коммитов:

| тип             | Назначение              | Соответствие SemVer |
| --------------- | ----------------------- | ------------------- |
| feat            | новая функция           | MINOR               |
| fix             | исправление ошибки      | PATCH               |
| BREAKING CHANGE | несовместимое изменение | MAJOR               |
| docs            | документация            |                     |
| style           | форматирование          |                     |
| refactor        | рефакторинг             |                     |
| test            | тесты                   |                     |
| chore           | служебные изменения     |                     |



## 1.2 Использование git

Изучены основные команды git:

- git init  # создание репозитория
- git status # состояние рабочего каталога
- git add .  # добавить все изменения
- git commit -am # сохранить изменения
- git push # отправить в удалённый репозиторий
- git pull # получить обновления
- git branch # работа с ветками
- git merge # слияние веток

Освоен рабочий процесс gitflow:

- master  — официальная история релизов
- develop — объединение всех функций
- feature — отдельные функции
- release — подготовка выпуска
- hotfix — срочные исправления



## 1.3 Соглашение об именовании Denote

Изучена базовая схема именования файлов:

```
DATE==SIGNATURE--TITLE__KEYWORDS.EXTENSION
```

где:

- DATE — дата в формате YYYYMMDDTHHMMSS
- SIGNATURE — буквенно-цифровая подпись (необязательно)
- TITLE — заголовок в нижнем регистре через дефис
- KEYWORDS — ключевые слова через подчёркивание

Пример:

```
20260912T143025--otchet-po-laboratornoy-rabote__latex_report.md
```



## 1.4 Рабочее пространство лабораторной работы

Определены стандарты:

- Git Flow
- Семантическое версионирование
- Общепринятые коммиты





## 1.5 Настройка git

Выполение настройка  git:

```
git config --global user.name "Ван Яо"
git config --global user.email "wangyao200036@126.com"
git config --global core.quotepath false
git config --global init.defaultBrancg master
git config --global core.autocrif true
git config --global core.safecrif warn
```

Созданы SSH-ключи для доступа к удалённым репозиториям. Настроена подпись коммитов с помощью PGP.

## 1.6 Рабочее пространство лабораторной работы

Cоздана структура рабочего пространства:

```
D:\work\study\2026-2\2026-2==study-practical-scientific-writing\
├── labs/
│   ├── lab01/
│   ├── lab02/
│   └── lab03/
├── figures/
├── references/
└── release/
```

Настроены удалённые репозитории:

| Платформа   | Назначение           |
| ----------- | -------------------- |
| GitHub      | основной репозиторий |
| SourceCraft | зеркало              |
| GitVerse    | зеркало              |

Установлено дополнительное программное обеспечение :Node.js,pnpm,commitizen,standard-version,gitflow






## 1.7 Installing TeXlive

Проверка установки:

```
pdflatex --version
xelate --version
lualatex --version
tlmgr --version
```

Настроена среда VS Code с расширением Latex Workshop для компиляции .tex файлов.




# Выводы

1. Теоретические знания:
Изучены стандарты семантического версионирования, общепринятых коммитов и соглашение об именовании Denote.

1. Практические навыки:
Настроен Git, созданы SSH и PGP ключи, организовано рабочее пространство, установлен TeX Live и настроена среда VS Code.

1. Результат:
   Создано полностью готовое рабочее пространство для выполнения последующих лабораторных работ.

   
   
   
# Литература
Официальная документация Git. https://git-scm.com/doc

Спецификация Conventional Commits. https://www.conventionalcommits.org/

Семантическое версионирование. https://semver.org/

Документация TeX Live. https://www.tug.org/texlive/

Соглашение об именовании Denote. https://protesilaos.com/emacs/denote

