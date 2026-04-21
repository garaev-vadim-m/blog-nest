## Docker

#### Поднять контейнер

```bash
docker compose up -d
```

#### Остановить контейнер

```bash
docker compose stop
```

#### Проверить контейнер

```bash
docker compose ps
```

#### Посмотреть логи контейнера

```bash
docker compose logs -f
```

#### Зайти в контейнер

```bash
docker compose exec <имя контейнера> sh
```

#### Пересобрать контейнер

```bash
docker compose up -d --build
```

#### Пересобрать без кеша

```bash
docker compose build --no-cache
docker compose up -d
```

#### Перезапустить контейнер

```bash
docker compose restart <имя контейнера>
```

#### Остановить и удалить контейнеры

```bash
docker compose down
```

#### Остановить, удалить контейнеры и volumes

```bash
docker compose down -v
```
