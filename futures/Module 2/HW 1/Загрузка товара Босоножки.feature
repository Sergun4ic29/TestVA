﻿#language: ru
@дерево

Функционал: загрузка номенклатуры Босоножки

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: загрузка номенклатуры Босоножки

	

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование'          | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки'                                                             | 'Вид'                    | 'Штрихкод' | 'Описание'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eacd471d6c7' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000031' | 'Номенклатура в штуках' | 'Bos0009' | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca1000d8843cd1b11dc8eacd471d6cd' | 'Enum.ВидыТоваров.Товар' | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p><span style=" font-weight: bold;">Материал верха</span> - кожа. </p>\n<p><span style=" font-weight: bold;">Материал подкладки</span> - кожа. </p>\n<p><span style=" font-weight: bold;">Материал подошвы</span> - искусственный материал.</p>\n<p><span style=" font-weight: bold;">Цвет</span> - малиновый.<br></p>\n<p><span style=" font-weight: bold;">Высота каблука</span> - низкая, 3,5 см.</p>\n<p><span style=" font-weight: bold;">Страна-</span><span style=" font-weight: bold;">производитель</span><span style=" font-weight: bold;"> </span>- Польша.</p>\n<p><br></p>\n</body></html>' |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'           | ''                                                                  | 'True'      | '000000001' | 'Обувь'                 | ''        | ''                                                                       | ''                                                                         | ''                       | ''         | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | ''       |

	// Справочник.ХранимыеФайлы

	И я проверяю или создаю для справочника "ХранимыеФайлы" объекты:
		| 'Ссылка'                                                                   | 'ПометкаУдаления' | 'Владелец'                                                          | 'Код'       | 'Наименование' | 'ДанныеФайла'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | 'ИмяФайла'      | 'Подпись'                               | 'Подписан' | 'Зашифрован' | 'ДляОписания' |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca1000d8843cd1b11dc8eacd471d6cd' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eacd471d6c7' | '000000009' | 'Босоножки'    | 'ValueStorage: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' | 'Босоножки.jpg' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'    | 'False'      | 'False'       |


	// РегистрСведений.ЦеныТоваров

	И я проверяю или создаю для регистра сведений "ЦеныТоваров" записи:
		| 'Период'             | 'Товар'                                                             | 'ВидЦен'                                                             | 'Цена' |
		| '27.08.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eacd471d6c7' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 1500   |
		| '27.08.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eacd471d6c7' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 2500   |
		| '27.08.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eacd471d6c7' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 1800   |
		| '27.08.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eacd471d6c7' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 2200   |

	

	// Документ.ПриходТовара

	И я проверяю или создаю для документа "ПриходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Поставщик'                                                              | 'Склад'                                                             | 'Валюта'                                                            | 'Организация'                                                            |
		| 'e1cib/data/Документ.ПриходТовара?ref=8ca1000d8843cd1b11dc8eacd471d6c8' | 'False'           | '000000034' | '11.01.2020 21:44:59' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.ПриходТовара?ref=8ca1000d8843cd1b11dc8eacd471d6c8' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eacd471d6c7' | 1500   | 100          | 150000  |

	

