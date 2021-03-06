# Запити зацікавлених осіб

## Вступ

У цьому документі зазначені всі основні характеристики та вимоги до проекту. Також тут можливо ознайомитись з характеристикою ділових процесів майбутнього проекту

### Мета 

Метою є створення інформаційної системи аналізу медіа контенту.

### Контекст

Перелік вимог, зазначених у данному документі є основою системи яка буде пов’язана з збором та аналізом медіа контенту 


### Основні визначення та скорочення

[Перелік основних визначеннь](https://github.com/shrufus/media_content_analysis/blob/branch/docs/requirements/state-of-the-art.md#основні-визначення)


### Посилання

[Дивитися тут](https://github.com/shrufus/media_content_analysis/blob/branch/docs/requirements/state-of-the-art.md#посиланя)


## Короткий зміст

*[Розділ містить опис того, про що йдеться в еій частині цього документу, що залишилася. 
Також тут описана структура документу.]*

## Характеристика ділових процесів

Ролі:

* Клієнт - Особа, котра формує технічне завдання, та очікуванні результати.
* Адміністратор - Особа, котра керує процесамми взаємодії замовника і системи.
* Аналітик - формує кінцевий результат на основі результатів аналізу системи.

   
***ID:*** SС.01
    
***НАЗВА:*** Сформувати запит на аналіз області
    
***УЧАСНИКИ:*** Менеджер, Клієнт

***ПЕРЕДУМОВИ:*** Клієнт надав сформованне технічне завдання

***РЕЗУЛЬТАТ:*** Сформований предмет дослідження 

***ВИКЛЮЧНІ СИТУАЦІЇ:*** 

* Відсутня необхідна інформація
* Некоректно сформованне технічне завдання (запит не відповідає можливостям системи, запит сформованно не точно)

***ОСНОВНИЙ СЦЕНАРІЙ:***
* Клієнт передає Менеджеру технічне завдання, формує предмет аналізу
* Менеджер перевіряє технічне завдання на коректність
* Менеджер повідомляє Клієнта, щодо можливості виконання запиту системою

!["Діаграма"]( http://www.plantuml.com/plantuml/proxy?idx=0&src=https://raw.githubusercontent.com/shrufus/media_content_analysis/master/src/uml/UC.1)

## Короткий огляд продукту

Данна система має можливість збирати інформацію з інтернет ресурсів та аналізувати статистику їх публікацій за різними критеріями. Система не націлена на конкретну категорії людей.

## Функціональність

### Система повинна:
* Надавати можливість відправлення запитів до сервісу з подальшим фідбеком

* Надавати можливість регулювання процесу реалізації замовлення

* Надавати можливість збору інформаці

* Надавати можливість збереження відповідної інформації

* Надавати можливість експортування інформації в різні формати

## Практичність

* Веб-сайт повинен бути оптимізованим для роботи не тільки із комп'ютера, а також із мобільних пристроїв.

* Інтерфейс повинен бути зручним та зрозумілим

* Сервіс повинен давати демо-доступ до системи

* Веб-сайт повинен бути оптимізованим під різні мови

## Надійність

* Веб-сервіс повинен мати захист від зловмисників

* Веб-сервіс повинен мати можливість робити бекап бази данних

* Веб-сервіс повинен використовувати лише перевіренні джерела інформації

## Продуктивність

* Система повинна швидко реагувати на можливі виключення, має бути стійкою до збоїв.

* Програма буде мати можливість обробляти великі обсяги текстів без перебоїв та з прийнятною для користувача швидкістю.

## Експлуатаційна придатність

* Система повинна мати можливість підключення додаткових модулів, бібліотек та словників.

* Система повинна мати елементарне використання завдяки представленню у вигляді зручного веб-сайту.
