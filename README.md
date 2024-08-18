# Инструкция по использованию пакета `sdk_chat_remarked` и настройке SSH-ключа на GitHub

## Использование пакета `sdk_chat_remarked`

### Шаг 1: Добавление зависимости
Добавьте `sdk_chat_remarked` в файл `pubspec.yaml` вашего проекта Flutter, как показано ниже.

```
sdk_chat_remarked:
  git:
    url: 'git@github.com:zorro112233/sdk_chat_remarked.git'
    ref: main
```

### Шаг 2: Импорт пакета
В Dart-файле, где вы хотите использовать чат, импортируйте пакет:

```
dart import 'package:sdk_chat_remarked/sdk_chat_remarked.dart';
```

### Шаг 3: Использование компонента чата
В вашем виджете Flutter используйте компонент `SdkChatRemarked`, указав необходимые параметры:
```
SdkChatRemarked(
  /// Заголовок чата
  title: 'CHAT WITH US',
  /// Токен авторизованного пользователя
  token: token,
  /// Здесь виджеты
  child: const Text('Ваши виджеты тут'),
);
```

## Настройка SSH-ключа на GitHub

### Шаг 1: Генерация SSH-ключей
Если у вас еще нет SSH-ключей, сгенерируйте их, используя команду:

```
bash ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Замените `"your_email@example.com"` на ваш адрес электронной почты.

### Шаг 2: Добавление публичного ключа в GitHub
После генерации ключей скопируйте содержимое файла `id_rsa.pub` (обычно расположен в `.ssh/id_rsa.pub`) и добавьте его в раздел "SSH and GPG keys" на странице вашего профиля на GitHub.

### Шаг 3: Настройка локальной машины
Убедитесь, что ваш локальный сервер SSH знает об этих ключах. Для этого добавьте следующую строку в файл `~/.ssh/config` (создайте его, если он не существует):

```bash Host github.com IdentityFile ~/.ssh/id_rsa```

Это укажет SSH клиенту использовать ваш приватный ключ при подключении к GitHub.
