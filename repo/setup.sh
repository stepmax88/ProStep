#!/bin/bash
REPO_URL="https://repo.prostep.com.ua/prostep.repo"
echo "--- Настройка репозитория ProStep ---"
sudo dnf config-manager --add-repo $REPO_URL || \
sudo curl -o /etc/yum.repos.d/prostep.repo $REPO_URL
echo "Репозиторий успешно добавлен!"
