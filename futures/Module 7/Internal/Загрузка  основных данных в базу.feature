﻿#language: ru

@tree

Функционал: Загрузка данных 

Как Администратор я хочу
загрузить первоначальные данные 
чтобы запустить необходимые тесты 

Контекст: 
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
Сценарий: Загрузка данных в тестовую базу
	Когда Загрузка констант
	Когда Подготовка данных
