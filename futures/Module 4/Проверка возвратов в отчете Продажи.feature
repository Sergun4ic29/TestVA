﻿#language: ru

@tree

Функционал: Тестирование возвратов в отчете Продажи

Как Тестировщик я хочу
проверить правильность отображения возвратов в отчете Продажи 
чтобы отчет работал верно
Контекст: 
Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: подготовка данных
	Когда экспорт документов закупок
    Когда Подготовка документов для тестирование возвратов в отчете Продажи
Сценарий: проведение документов и тестирование данных
	И я выполняю код встроенного языка на сервере
		|'Документы.SalesOrder.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
		|'Документы.SalesInvoice.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|
	
	