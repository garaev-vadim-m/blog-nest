#!/bin/sh
set -e
echo "🚀 Starting dev inside container..."
# 1. ждем БД
sh wait-for-db.sh
# 2. миграции
echo "🧬 Running migrations..."
sh migrate.sh
# 3. старт приложения
echo "🔥 Starting API..."
npm run start:dev
