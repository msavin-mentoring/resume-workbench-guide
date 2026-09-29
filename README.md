# Resume workbench

Приватный рабочий репозиторий для подготовки технических резюме учеников. Здесь лежат исходный список требований работодателей, описание локального корпуса **примеров формулировок**, правила проверки и шаблоны четырёх файлов на каждого кандидата.

## Быстрый старт для двух резюме

1. Прочитать [WORKFLOW.md](WORKFLOW.md) и локальный скилл `msavin-resume` по пути `/Users/mikhailsavin/.codex/skills/msavin-resume/SKILL.md`. Скилл остаётся источником подробных правил; копию здесь не поддерживаем.
2. Для каждого ученика создать отдельный `candidates/<slug>/` и скопировать туда четыре файла из [`templates/`](templates/).
3. Подключить его собственный контекст: исходное резюме, проекты, разговоры/код, затем разобрать [требования вакансий](references/vacancy-requirements-raw.md). Не смешивать факты разных учеников.
4. Сначала заполнить claim ledger и dossier проектов, затем coverage, рабочее резюме и легенду. Перед отправкой работодателю заменить все проверочные числа и убрать неподтверждённые утверждения.

Пример заполненного пакета: [резюме Сабырбека](https://github.com/msavin-mentoring/sabomanq-resume) (отдельный приватный репозиторий). Его факты и метрики **не являются** шаблоном для других кандидатов.

## Что где лежит

- [`references/vacancy-requirements-raw.md`](references/vacancy-requirements-raw.md) — неизменённый присланный список требований.
- [`references/requirements-map.md`](references/requirements-map.md) — темы для первого прохода, без выдуманной частотности по вакансиям.
- [`references/resume-context-schema.sql`](references/resume-context-schema.sql) и [`references/resume-context-queries.sql`](references/resume-context-queries.sql) — структура и примеры запросов к локальному SQLite-корпусу. Сам заполненный `local/resume-context.sqlite` в Git не попадает.
- [`references/SOURCES.md`](references/SOURCES.md) — происхождение, ограничения и контрольные суммы источников.
- [`templates/`](templates/) — `resume.md`, `claim-ledger.md`, `interview-legend.md`, `vacancy-coverage.md`.

Чтобы подключить имеющийся корпус на этой машине, скопировать `Downloads/resume-context (6).sqlite` в `local/resume-context.sqlite`; каталог `local/` игнорируется Git. Для работы с конкретным учеником одного корпуса недостаточно: нужны его собственные исходники и явное разрешение, если выбран донорский сценарий. Репозиторий остаётся приватным, хотя заполненный корпус в него не загружается.
