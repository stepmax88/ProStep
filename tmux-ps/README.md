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

| Command | Description |
| :--- | :--- |
| `tmux-ps save` | Сохранить текущее состояние всех сессий |
| `tmux-ps restore` | Восстановить сессии из последнего дампа |
| `tmux-ps hwid` | Получить идентификатор оборудования для лицензии |

## 📦 Быстрая установка (RPM)

Установите пакет напрямую из репозитория одной командой:

```bash
sudo yum install https://github.com -y


