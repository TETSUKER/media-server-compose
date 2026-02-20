#!/bin/sh
set -e

echo "🔄 Инициализация конфигурации..."

# Устанавливаем envsubst
apk add --no-cache gettext

# Копируем и подставляем переменные из .template файлов
[ -f /host-config/services.yaml.template ] && envsubst < /host-config/services.yaml.template > /app/config/services.yaml && echo "✅ services.yaml готов"

# Копируем остальные файлы без шаблонов
cp -rf /host-config/*.yaml /app/config/ 2>/dev/null || true

# Исправляем права
chown -R ${PUID}:${PGID} /app/config/

echo "✅ Конфигурация готова, запускаем Homepage"
exec node /app/server.js
