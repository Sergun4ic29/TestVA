﻿#language: ru

@tree

Функционал: Тест заполнения поля Организация из поля Соглашения

Как Тестировщик я хочу
проверить заполнение поля Организация из значения Соглашение

Сценарий: тестирование заполнения поля Организация из поля Соглашения у партнера БЕЗ соглашения
	*Создание документа
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И я нажимаю на кнопку с именем 'FormList'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование'       |
		| '12'  | 'Розничный клиент 1' |
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
	*Проверка заполнения
	Если элемент формы с именем "Company" стал равен 'Собственная компания 1' Тогда
		И я закрываю все окна клиентского приложения
	Попытка 
		И я нажимаю кнопку выбора у поля с именем "Company"
		Тогда открылось окно 'Организации'
		И в таблице "List" я перехожу к строке:
			| 'Наименование'           |
			| 'Собственная компания 1' |
		И в таблице "List" я выбираю текущую строку
		И я закрываю все окна клиентского приложения
	Исключение
		И я вызываю исключение "Ошибка выполнения теста!"
	
Сценарий: тестирование заполнения поля Организация из поля Соглашения у партнера С соглашением (Вариант 1)
	*Создание документа
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Когда открылось окно 'Партнеры'
	И я нажимаю на кнопку с именем 'FormList'
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я перехожу к строке:
		| 'Наименование'           |
		| 'Клиент 1 (1 соглашение)' |
	И в таблице "List" я выбираю текущую строку
	*Проверка заполнения
	Если элемент формы с именем "Company" стал равен 'Собственная компания 1' Тогда
		И я закрываю все окна клиентского приложения
	Попытка
		И я нажимаю кнопку выбора у поля с именем "Company"
		Тогда открылось окно 'Организации'
		И в таблице "List" я перехожу к строке:
			| 'Наименование'           |
			| 'Собственная компания 1' |
		И в таблице "List" я выбираю текущую строку
		И я закрываю все окна клиентского приложения
	Исключение	
		И я вызываю исключение "Тест отработал верно!"	

Сценарий: тестирование заполнения поля Организация из поля Соглашения 
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Когда открылось окно 'Партнеры'
	И я нажимаю на кнопку с именем 'FormList'
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я перехожу к строке:
		| 'Наименование'           |
		| 'Клиент 1 (1 соглашение)' |
	И в таблице "List" я выбираю текущую строку
*Проверка заполнения
	Если поле с именем "Company"  заполнено Тогда
		И я закрываю все окна клиентского приложения
		И элемент формы "Company" стал равен 'Собственная компания 1'
		Затем я останавливаю выполнение сценария "тестирование заполнения поля Организация из поля Соглашения"			
	И я нажимаю кнопку выбора у поля с именем "Company"
	Тогда открылось окно 'Организации'
	И в таблице "List" я перехожу к строке:
		| 'Наименование'           |
		| 'Собственная компания 1' |
	И в таблице "List" я выбираю текущую строку
	И я закрываю все окна клиентского приложения
		
					
		
	
	
		
	
		
