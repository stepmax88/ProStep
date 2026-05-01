![](https://www.prostep.com.ua) 

# ProStep Session Manager (tmux-ps)

## Professional tool for automatic saving and restoring tmux sessions with SSH support.

### Author: Maxim Stepanuk (support@prostep.com.ua)
### Company: [ProStep Development](https://www.prostep.com.ua)

---

## 🛠 Описание (Description)

**tmux-ps** — это системная утилита, предназначенная для обеспечения непрерывности работы в терминале. Она автоматически сохраняет состояние окон, панелей (panes) и активных SSH-соединений внутри `tmux`, позволяя восстановить рабочее окружение после перезагрузки сервера или разрыва связи.

## 📋 Системные требования (Requires)

* **OS:** RHEL/CentOS 8+, Fedora, Oracle
* **Software:** `tmux` >= 1.8
* **Rights:** Root privileges (для установки и настройки systemd)

## 🚀 Основные возможности (Features)

* 🌍 **Global Support**: Полная локализация интерфейса (RU/UK/EN) с автоопределением языка системы.
* 🐣 **Nested Sessions ("Matryoshka")**: Уникальная технология вложенных сессий через `env -u TMUX` — управляйте сессиями внутри других сессий без конфликтов.
* 🛡️ **SSH-Persistence**: Рекурсивное сканирование дерева процессов для восстановления активных SSH-соединений внутри панелей.
* 📦 **Smart & Idempotent**: Идемпотентное восстановление — программа проверяет текущее состояние и не создает дубликатов окон или сессий.
* 🤖 **Automation Ready**: Полная интеграция с `systemd` (автовосстановление при загрузке) и `crontab` (автосохранение состояния).
* 🔒 **Hardened Security**: Полная защита от Shell-инъекций (`shlex`) и строгая валидация HWID через SHA-256.
* 🔑 **License System**: Cистема лицензирования с 30-дневным Trial-периодом.


### 💡 Совет по управлению вложенными сессиями:
Если вы открыли сессию (например, `PROD`) внутри другой сессии (`DEV`):
- `Ctrl+B` — управляет **внешней** сессией.
- `Ctrl+B`, затем сразу снова `Ctrl+B` — отправляет команду во **внутреннюю** сессию.


## 🔧 Команды управления (Commands)

| Команды управления (Commands)      | Описание (Description)                            |
|:-----------------------------------|:--------------------------------------------------|
| `tmux-ps save`                     | Сохранить текущее состояние всех сессий           |
| `tmux-ps restore`                  | Восстановить сессии из последнего дампа           |
| `tmux-ps new [NAME]`               | Создать новую сессию и подключиться (add/create)  |
| `tmux-ps [NAME] `                  | Подключить указанную сессию                       |
| `tmux-ps ls`                       | Показать список сессий с деталями                 |
| `tmux-ps kill [NAME]`              | Мгновенно закрыть указанную сессию tmux           |
| `tmux-ps rename [A] [B]`           | Переименовать сессию                              |
| `tmux-ps hwid`                     | Получить идентификатор оборудования для лицензии  |
| `tmux-ps lic [KEY]`                | Активировать приложение с помощью ключа           |
| `tmux-ps lic --about`              | Проверить статус лицензии и авторские права       |

## Быстрая установка (RPM)

Прямая установка **tmux-ps** (v1.2.3) - выполните команду (требуются права root):

```bash
sudo dnf install https://repo.prostep.com.ua/repo/packages/tmux-ps-1.2.3-1.el8.x86_64.rpm -y
```

## Установка репозитория (Рекомендуется)

Выберите удобный для вас способ настройки:


<details markdown="1">
<summary><b>Способ 1: Через dnf config-manager</b></summary>

```bash
sudo dnf config-manager --add-repo https://repo.prostep.com.ua/repo/prostep.repo
```

</details>


<details markdown="1">
<summary><b>Способ 2: Ручная вставка (Copy-Paste)</b></summary>

```bash
sudo tee /etc/yum.repos.d/prostep.repo <<EOF
[prostep]
name=ProStep Repository
baseurl=https://repo.prostep.com.ua/repo/
enabled=1
gpgcheck=1
gpgkey=https://repo.prostep.com.ua/repo/RPM-GPG-KEY-ProStep
metadata_expire=1m
EOF
```

</details>


<details markdown="1">
<summary><b>Способ 3: Установка через RPM-пакет (Pro)</b></summary>

```bash
sudo dnf install https://repo.prostep.com.ua/repo/packages/prostep-release-1.0-1.noarch.rpm -y
```

</details>


## Установка

Установите пакет:

```bash
sudo dnf install tmux-ps -y
```

## 🔄 Обновление и проверка версий

Поскольку вы используете официальный репозиторий **ProStep**, проверка обновлений и переход на новую версию происходят стандартными средствами системы:

### Проверить текущую версию и наличие обновлений:

```bash
sudo dnf check-update tmux-ps
```

### Установить новую версию (Upgrade):
```bash
sudo dnf upgrade tmux-ps -y
```

## 📄 Лицензия и Поддержка

### 🔑 Лицензирование
Для активации полной версии:
1. Выполните команду `tmux-ps hwid`.
2. Отправьте полученный ID на [support@prostep.com.ua](mailto:support@prostep.com.ua).
3. После получения ключа выполните: `tmux-ps lic XXXX-XXXX-XXXX-XXXX`.


Программное обеспечение является интеллектуальной собственностью **ProStep Development**.  
Условия использования и порядок поддержки для **владельцев активных лицензий** изложены в файле [LICENSE](./LICENSE).

📩 **Обратная связь:** [support@prostep.com.ua](mailto:support@prostep.com.ua)

