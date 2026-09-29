# Ручная выборка PHP backend-вакансий — 29.09.2026

Цель — дополнить [сырой список требований](vacancy-requirements-raw.md) вакансиями с URL, ролью и границами применимости. Это **целевая, не случайная выборка** для подготовки middle/middle+/senior PHP backend-резюме, а не статистика всего рынка. Описания карточек прочитаны 29.09.2026; статус мог измениться. «Открыта» означает, что на момент чтения не было пометки об архиве, а не гарантию приёма откликов. Архивные карточки включены только там, где был доступен текст требований.

Дословные короткие формулировки задач и поисковую лексику см. в [языке вакансий](vacancy-language-2026-09-29.md).

Отбор: основная работа — серверный PHP; Bitrix, обязательный полноценный frontend/fullstack и управление командой исключены. Небольшие frontend-задачи или frontend как *плюс* допустимы. Code review, архитектурные решения и менторство без people-management не делают позицию тимлидской. Пограничные вакансии отмечены: они полезны для анализа требований, но не обязательно подходят конкретному кандидату. В колонке «Основной запрос» требования отделены от необязательных плюсов.

| № | Вакансия и источник | Уровень / статус | Основной запрос из описания | Плюсы / оговорка |
|---:|---|---|---|---|
| 1 | [Simple — Backend PHP](https://hh.ru/vacancy/137763996) | Middle+ · открыта | PHP/Laravel, MySQL/PostgreSQL, RabbitMQ/Kafka, Redis, Elasticsearch, интеграции и проектирование данных | B2B e-commerce — плюс; Kubernetes в стеке, декретная ставка |
| 2 | [Промтех — PHP backend](https://hh.ru/vacancy/137139543) | Middle · открыта | Laravel, REST API, SQL/PostgreSQL, бизнес-логика, тесты | RabbitMQ, Redis, Elasticsearch, Docker, CI/CD как существенный контекст |
| 3 | [YCLIENTS — PHP](https://hh.ru/vacancy/136480967) | Middle · открыта | PHP, MySQL, один из Symfony/Slim/Laravel, интеграции, тесты | RabbitMQ, Redis, ClickHouse, highload — плюсы; тот же работодатель есть ниже в senior-карточке |
| 4 | [Perfect Panel — PHP](https://hh.ru/vacancy/136063503) | Middle · открыта | PHP, фреймворк (Yii2 предпочтителен), MySQL/индексы, бизнес-логика | Redis/RabbitMQ/ClickHouse — плюсы; frontend у отдельной команды |
| 5 | [Банки.ру — PHP/Symfony](https://hh.ru/vacancy/137753836) | Уровень не указан · открыта | PHP/Symfony, API, объектная модель, производительность и сервисная архитектура | PostgreSQL, Redis, RabbitMQ; прямо указано, что верстать и писать JS не нужно |
| 6 | [Рунити — PHP/Symfony](https://hh.ru/vacancy/137089267) | Уровень не указан · открыта | Symfony/Doctrine, MySQL, REST/JSON API, RabbitMQ, PHPUnit | Пограничная: часть модулей постепенно переносится на Python; frontend исключён |
| 7 | [Цифролаб — PHP](https://hh.ru/vacancy/136775762) | Уровень не указан · открыта | Laravel **или** Symfony, MySQL/PostgreSQL, API, сложный SQL, тесты, Docker | Vue/React/JS — только преимущество, не основная обязанность |
| 8 | [Спорт Трейд — Laravel backend](https://hh.ru/vacancy/137341842) | Уровень не указан · открыта | Laravel, PostgreSQL, Redis/очереди, платежные webhooks, предотвращение дублей, диагностика и релизы | Пограничная по формату: частичная занятость/ГПХ; сильный пример reliability-запроса |
| 9 | [Coding Team — PHP/Symfony](https://hh.ru/vacancy/136957335) | Middle · открыта | Symfony, PostgreSQL/EXPLAIN, REST/GraphQL, Messenger, RabbitMQ, Redis, PHPUnit, Docker | Пограничная по оформлению: ИП/почасовая ставка; OpenSearch/RoadRunner — плюсы |
| 10 | [Экспобанк — PHP backend](https://hh.ru/vacancy/136907817) | Уровень не указан · открыта | Laravel, PostgreSQL, REST/ SOAP/AMQP-интеграции, RabbitMQ/Redis, OpenAPI, Docker, логи/ELK | Банковский домен; Sentry, Linux, Nginx в стеке |
| 11 | [Dreamlab — Laravel](https://hh.ru/vacancy/137731564) | Middle · открыта | Laravel, PostgreSQL/SQL/индексы, REST API, очереди, исправление production-багов, тесты | Пограничная география: Астана; CI и интеграционные тесты — плюсы |
| 12 | [Tiger Technologies — PHP](https://hh.ru/vacancy/137555199) | Middle+ · открыта | PHP 8, highload, API-интеграции, оптимизация БД | MySQL/ClickHouse/Redis в стеке; ориентир 500+ RPS в требованиях, 5–6k RPS — заявленная нагрузка их платформы |
| 13 | [TeamLead — PHP/Symfony backend](https://hh.ru/vacancy/137852663) | Middle+ · открыта | Symfony, PostgreSQL/транзакции/EXPLAIN, RabbitMQ/retry/DLQ, production troubleshooting, PHPUnit, Docker, наблюдаемость | Название **компании** TeamLead, а не роль тимлида; GraphQL/Redis/ClickHouse — плюсы |
| 14 | [Флаувау — PHP/Yii backend](https://hh.ru/vacancy/134930300) | Уровень не указан · открыта | PHP 8, Laravel/Symfony/Yii2, API, Redis, RabbitMQ/Kafka, Docker, legacy и релизы | Vue.js — плюс; геокодирование и highload — плюсы |
| 15 | [TBC Uzbekistan — PHP/Laravel](https://hh.ru/vacancy/137113505) | Middle · открыта | Laravel-монолит, REST API, PostgreSQL/JSONB/индексы, Kafka, unit/integration-тесты | Пограничная география: Ташкент; Go нужен для взаимодействия с другой командой, не как основной язык |
| 16 | [Триада — PHP/Symfony](https://hh.ru/vacancy/137702626) | Middle · открыта | Symfony, API, SQL, Kafka, Docker/Kubernetes, highload, профилирование | Пограничная: требуется понимать Go настолько, чтобы ревьюить код; не fullstack |
| 17 | [ARGO — PHP/Symfony](https://hh.ru/vacancy/136553659) | Middle+/Senior · открыта | Миграция PHP 7.4→8 и Symfony, Composer/пакеты, PostgreSQL/транзакции, рефакторинг, воспроизводимые CI-сборки | Узкая модернизационная роль; в тексте явно «не Fullstack» |
| 18 | [Skyeng — Symfony backend](https://getmatch.ru/vacancies/25786-backend-developer-symfony) | Middle · **архив** | PHP/Symfony, RabbitMQ/асинхронность, архитектура, интеграция с внутренними сервисами | Полный текст сохранён на странице; год закрытия не указан |
| 19 | [МПФИТ — senior интеграции](https://hh.ru/vacancy/137432652) | Senior · открыта | PHP/Laravel, очереди/Horizon, retries/failed jobs, идемпотентность, дедупликация, rate limits, MySQL/индексы | Сильный отраслевой фильтр: production-интеграция хотя бы с одним маркетплейсом обязательна |
| 20 | [Плати по всему миру — senior PHP](https://hh.ru/vacancy/136839222) | Senior · открыта | Laravel 12, PostgreSQL, проектирование API и схем БД, SQL-оптимизация, тесты | Офис в Москве; про очереди и микросервисы в тексте требований нет |
| 21 | [Займиго — senior PHP](https://hh.ru/vacancy/137137797) | Senior · открыта | Symfony, PostgreSQL/MySQL, RabbitMQ, Redis, микросервисы, внешние API, CI/CD, code review | Docker/Kubernetes указаны как плюс; frontend-команда отдельная |
| 22 | [Marfatech — senior PHP](https://hh.ru/vacancy/134265916) | Senior · открыта | PHP, MySQL, Symfony/другой фреймворк, паттерны, серверные приложения | В описании есть Go/Python как стек компании, но не как обязательная работа по роли |
| 23 | [EasyGate — senior Laravel backend](https://hh.ru/vacancy/136812559) | Senior · открыта | Laravel, MySQL/MariaDB, REST/OpenAPI, сложный SQL без ORM, Docker, PHPUnit, модули и внешние интеграции | React перечислен как frontend-стек команды, но frontend-задач в описании роли нет; Kafka/DDD — плюсы |
| 24 | [YCLIENTS — PHP](https://career.habr.com/vacancies/1000165368) | Senior · статус не указан | PHP 8+, MySQL, Symfony **или** Laravel **или** Slim, внешние интеграции, тесты, оптимизация highload | Второе объявление YCLIENTS: не считать независимым работодателем при частотном анализе |
| 25 | [IT_One — senior PHP](https://career.habr.com/vacancies/1000168718) | Senior · статус не указан | Экспертные Symfony **и** Laravel, MSSQL/T-SQL, Kafka, Docker/Kubernetes, тесты, профилирование | Пограничная по планке: оба фреймворка обязательны, глубина DBA/инфраструктуры выше типичной senior PHP-роли |
| 26 | [HoReCa-платформа — senior PHP](https://getmatch.ru/vacancies/35323-senior-php-developer-symfony) | Senior · **архив** | Symfony **или** Laravel, MySQL/SQL-оптимизация, Redis, unit-тесты, очереди, рефакторинг | RabbitMQ/PostgreSQL/MongoDB — плюсы; компания скрыта, полный текст доступен |
| 27 | [СберЗдоровье — PHP backend](https://getmatch.ru/vacancies/33536-senior-backend-developer-php) | Заголовок Senior, фильтр Middle · **архив** | PHP, Symfony **или** Laravel, SQL, RabbitMQ/Kafka, unit-тесты, микросервисное взаимодействие | Уровень противоречит заголовку; feature lead только по отдельным задачам, не управление командой |

## Как пользоваться

Для конкретного кандидата сначала выбрать подходящие по **уровню, географии, формату и обязательному фреймворку** вакансии. Затем отметить в `vacancy-coverage.md`: есть подтверждённый опыт, есть переносимая практика, только гипотеза или пробел. «Плюс» не превращать в обязательный критерий; стек работодателя не выдавать за стек кандидата. Метрики из вакансий описывают **работодателя**, а не достижения ученика.

Если строить частотную таблицу, считать *вакансии*, а не повторения слов. Отдельно исключить вторую карточку YCLIENTS и пограничные по формату/географии/узкому стеку; эта ручная подборка всё равно останется biased sample. Архивные ссылки могут исчезнуть — перед массовым использованием сохранить выдержки требований с датой и проверить условия площадки.

### Сознательно не вошли

- [Inventive Retail Group](https://hh.ru/vacancy/137300957): backend-задачи есть, но обязательный стек включает 1C-Битрикс.
- [Четыре Лапы](https://hh.ru/vacancy/132856454): в обязанностях прямо есть руководство группой 3–4 backend-разработчиков.
- [iBrush](https://hh.ru/vacancy/137394574): frontend/fullstack-задачи описаны как регулярная часть работы, а не небольшой плюс.
- [Andersen](https://hh.ru/vacancy/137418544): обязательные Magento 2 и WordPress/WooCommerce делают роль нерелевантной обычному PHP backend-профилю; Bitrix также указан плюсом.
- Ряд HH-архивов показывал только заголовок и кнопку «Показать описание вакансии»; без доступного текста требований они не использованы.
