﻿#language: ru

@tree

Функционал: Тестирования движений документа Продаж по регистрам

Как Тестировщик я хочу
проверить движения документа по ресгитрам 
чтобы движения были верными
Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Проверка движений документа Продажи
	Дано Я открываю навигационную ссылку "e1cib/data/Документ.РасходТовара?ref=b6aa04421a06788011ecad198d3612a2"
*Тестирование по регистру взаиморасчеты
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр взаиморасчетов с контрагентами'
	Тогда таблица "Список" содержит строки:
		| 'Период'              | 'Регистратор'                              | 'Номер строки' | 'Контрагент'          | 'Сумма'    | 'Валюта' |
		| '26.03.2022 19:36:33' | 'Продажа 000000003 от 26.03.2022 19:36:33' | '1'            | 'Покупатель  Оптовый' | '4 100,00' | 'EUR'    |
*Тестирование по регистру Продажи
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр продаж'
	Тогда таблица "Список" содержит строки:
		| 'Период'              | 'Регистратор'                              | 'Номер строки' | 'Покупатель'          | 'Сумма'    | 'Товар'                   | 'Количество' |
		| '26.03.2022 19:36:33' | 'Продажа 000000003 от 26.03.2022 19:36:33' | '1'            | 'Покупатель  Оптовый' | '200,00'   | 'Услуга'                  | '1,00'       |
		| '26.03.2022 19:36:33' | 'Продажа 000000003 от 26.03.2022 19:36:33' | '2'            | 'Покупатель  Оптовый' | '1 800,00' | 'Товар с характеристикой' | '1,00'       |
		| '26.03.2022 19:36:33' | 'Продажа 000000003 от 26.03.2022 19:36:33' | '3'            | 'Покупатель  Оптовый' | '2 100,00' | 'Товар без характ'        | '1,00'       |
*Тестирование по регистру Товарных запасов
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр товарных запасов'
	Тогда таблица "Список" содержит строки:
		| 'Период'              | 'Регистратор'                              | 'Номер строки' | 'Склад'   | 'Товар'                   | 'Количество' |
		| '26.03.2022 19:36:33' | 'Продажа 000000003 от 26.03.2022 19:36:33' | '1'            | 'Большой' | 'Товар с характеристикой' | '1,00'       |
		| '26.03.2022 19:36:33' | 'Продажа 000000003 от 26.03.2022 19:36:33' | '2'            | 'Большой' | 'Товар без характ'        | '1,00'       |
	
		
		
	
			
	
		
		



