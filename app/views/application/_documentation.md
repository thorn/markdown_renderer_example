# Документация API моего приложения

> Составитель: [Me](mailto:me@example.com)

Документ описывает API моего мега полезного сервиса

# Пользователи

## Получение списка пользователей

__URL:__ (GET)

```
/users
```

__Параметры:__

```
Нет
```

*Удачный ответ:*

```
HTTP 200 Ok
[
  {
    "email": "ivan@example.com",
    "first_name": "Ivan",
    "last_name": "Ivanov"
  },
  ...
]
```

*Неудачный ответ:*

```
HTTP 404 Not Found
```

## Получение подробной информации о пользователе

__URL:__ (GET)

```
/users/:id
```

```
:id - ID пользователя
```

__Параметры:__

```
Нет
```

*Удачный ответ:*

```json
HTTP 200 Ok
{
  "email": "ivan@example.com",
  "first_name": "Ivan",
  "last_name": "Ivanov"
}
```

*Неудачный ответ:*

```
HTTP 404 Not Found
```
