# Рудник (Rudnik)

Android-сборка на базе PojavLauncher с брендингом «Рудник».

## Сборка APK
GitHub Actions автоматически собирает debug APK при изменениях в `main`. Последний APK публикуется в [Releases](https://github.com/bs9973866-png/rudnik/releases) и как артефакт workflow.

## Источник и лицензия
Исходная кодовая база берётся из [bs9973866-png/PojavLauncher](https://github.com/bs9973866-png/PojavLauncher), ветка `v3_openjdk`. Лицензия исходного проекта и авторство сохранены; см. файл `LICENSE`.

## Что изменено
- Название приложения и основные названия интерфейса: «Рудник».
- Тёмно-синяя палитра и синий акцент.
- Новая адаптивная иконка для Android 8+.
- Сборка APK через GitHub Actions.

Пакет Android оставлен `net.kdt.pojavlaunch` для совместимости с исходным проектом.
