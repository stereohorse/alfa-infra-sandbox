# Подготовка среды для тренинга по инфраструктуре

Может занять **около получаса**. В основном - ожидание загрузки образов.
Поэтому лучше сделать заранее.

Инструкция написана для Macos. При установке может быть полезна [эта утилитка](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man8/caffeinate.8.html).

С таким же успехом можно настроить и Linux-дистрибутив, используя вместо `brew` родной менеджер пакетов. 

На Windows, увы, за вменяемое время можно только поднять в виртуалке. Но при этом учитывай, что на тренинге мы будем  поднимать свои виртуалки. Так что придётся в этом случае как-то уживаться с как правило тормозящей вложенной виртуализацией.

## Шаги

### Установить инструменты

1. docker
2. virtualbox
3. vagrant
4. ansible
5. python 3

### Подготовить vagrant

Загрузить образ vagrant **stereohorse/alfa-infra-sandbox**. Это самое долгое :)

## Одним копи-пастом

```bash
$ brew cask install docker virtualbox vagrant \
    && brew install ansible python3 \
    && vagrant box add stereohorse/alfa-infra-sandbox
```

## Подробнее

### Docker

```bash
$ brew cask install docker
```

После этого нужно запустить Docker.app, к примеру через Spotlight.
Он появится в toolbar'е.

### Virtualbox

```bash
$ brew cask install virtualbox
```

### Vagrant

```bash
$ brew cask install vagrant
```

### Ansible

```bash
$ brew install ansible
```

### Python 3

```bash
$ brew install python3
```

### Образ для vagrant

```bash
$ vagrant box add stereohorse/alfa-infra-sandbox
```
