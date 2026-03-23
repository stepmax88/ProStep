![](https://www.prostep.com.ua) 

# tmux-ps (ProStep Session Manager)

## Professional tool for automatic saving and restoring tmux sessions with SSH support.

### Author: Maxim Stepanuk (support@prostep.com.ua)
### Company: [ProStep Development](https://www.prostep.com.ua)

---

## 🛠 Description

**tmux-ps** — это системная утилита, предназначенная для обеспечения непрерывности работы в терминале. Она автоматически сохраняет состояние окон, панелей (panes) и активных SSH-соединений внутри `tmux`, позволяя восстановить рабочее окружение после перезагрузки сервера или разрыва связи.

## 📋 Requires

* **OS:** RHEL/CentOS 7+, Fedora, Debian/Ubuntu
* **Software:** `tmux` >= 1.8
* **Rights:** Root privileges (для установки и настройки systemd)

## 🚀 Features
* ⏰ **Auto-save:** Автоматическое сохранение каждые 15 минут через `crontab`.
* 🔄 **Auto-restore:** Восстановление сессий при старте системы через `systemd`.
* 🛡️ **SSH-Persistence:** Сканирование и восстановление активных SSH-клиентов внутри сессий.
* 🔑 **Licensing:** Интегрированная проверка Hardware ID (`hwid`).

## 🔧 Commands

| Command                  | Description                                      |
|:-------------------------|:-------------------------------------------------|
| `tmux-ps save`           | Сохранить текущее состояние всех сессий          |
| `tmux-ps restore`        | Восстановить сессии из последнего дампа          |
| `tmux-ps ls`             | Показать список сессий с деталями                |
| `tmux-ps kill [NAME]`    | Мгновенно закрыть указанную сессию tmux          |
| `tmux-ps rename [A] [B]` | Переименовать сессию                             |
| `tmux-ps hwid`           | Получить идентификатор оборудования для лицензии |
| `tmux-ps lic [KEY]`      | Активировать приложение с помощью ключа          |

## 📦 Быстрая установка (RPM)

Для установки последней версии **tmux-ps** выполните команду (требуются права root):

```bash
sudo yum install https://github.com/stepmax88/ProStep/raw/refs/heads/main/tmux-ps/tmux-ps-1.0.1-1.x86_64.rpm -y
```

## 📦 Установка (Рекомендуемый способ)

Для автоматической установки и получения обновлений добавьте репозиторий **ProStep** в вашу систему:

```bash
sudo tee /etc/yum.repos.d/prostep.repo <<EOF
[prostep]
name=ProStep Repository
baseurl=https://github.com/stepmax88/ProStep/raw/main/tmux-ps/repo/
enabled=1
gpgcheck=0
metadata_expire=1m
EOF
```

Затем установите пакет:
```
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

Программное обеспечение является интеллектуальной собственностью **ProStep Development**.  
Условия использования и порядок поддержки для **владельцев активных лицензий** изложены в файле [LICENSE](./LICENSE).

📩 **Обратная связь:** [support@prostep.com.ua](mailto:support@prostep.com.ua)

