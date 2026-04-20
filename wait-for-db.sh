#!/bin/bash

HOST="db"
PORT="3306"

echo "⏳ Waiting for database..."

until nc -z $HOST $PORT;do
    echo "🔄 DB not ready..."
    sleep 2
done

echo "✅ Database is ready!"
