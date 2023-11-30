import 'package:digital_department_flutter/mainsection/fill.dart';
import 'package:digital_department_flutter/mainsection/sectionheader.dart';
import 'package:flutter/material.dart';

import '../mainsection//background.dart';
import 'Disclosure.dart';
import 'Disclosure2.dart';
import 'card.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                Positioned(
                  child: Background(),
                ),
                Column(
                  children: [
                    SectionHeader(title: 'У вас подключено', description: 'Подписки, автоплатежи и сервисы на которые вы подписались'),
                    Material(
                      child: SizedBox(
                        height: 130,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: <Widget>[
                            SizedBox(width: 35),
                            InkWell(
                              onTap: () {
                                print('tapped');
                              },
                              child: Cards(
                                title: 'СберПрайм',
                                description: 'Платёж 9 июля',
                                subdiscription: '199 ₽ в месяц',
                                image: "images/sberprime.png",
                              ),
                            ),
                            SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                print('tapped');
                              },
                              child: Cards(
                                title: 'Переводы',
                                description: 'Автопродление 21 августа',
                                subdiscription: '199 ₽ в месяц',
                                image: "images/percentbg.png",
                              ),
                            ),
                            SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                print('tapped');
                              },
                              child: Cards(
                                title: 'СберПрайм',
                                description: 'Платёж 9 июля',
                                subdiscription: '199 ₽ в месяц',
                                image: "images/sberprime.png",
                              ),
                            ),
                            SizedBox(width: 35),
                          ],
                        ),
                      ),
                    ),
                    Material(
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          SectionHeader(
                            title: 'Тарифы и лимиты',
                            description: 'Для операций в Сбербанк Онлайн',
                          ),
                          InkWell(
                            onTap: () {
                              // Действие при нажатии на кнопку Disclosure
                            },
                            child: Disclosure(
                              title: 'Изменить суточный лимит',
                              description: 'На платежи и переводы',
                              image: "images/speed.png",
                            ),
                          ),
                          SizedBox(height: 10),
                          Divider(
                            color: Color(0xFFdcdcdc),
                            height: 1,
                            indent: 82,
                          ),
                          InkWell(
                            onTap: () {
                              // Действие при нажатии на кнопку Disclosure
                            },
                            child: Disclosure(
                              title: 'Переводы без комиссии',
                              description: 'Показать остаток в этом месяце',
                              image: "images/percent.png",
                            ),
                          ),
                          SizedBox(height: 10),
                          Divider(
                            color: Color(0xFFdcdcdc),
                            height: 1,
                            indent: 82,
                          ),
                          InkWell(
                            onTap: () {
                              // Действие при нажатии на кнопку Disclosure2
                            },
                            child: Disclosure2(
                              title: 'Информация о тарифах и лимитах',
                              image: "images/arrowright.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SectionHeader(title: 'Интересы', description: 'Мы подбираем истории и предложения по темам, которые вам нравятся'),
                    Material(
                    child:
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 60.0),
                        child: Wrap(
                          spacing: 8.0,
                          runSpacing: 8.0,
                          children: [
                            InkWell(
                              onTap: () {
                                // Действие при нажатии на 'Еда'
                                print('Еда tapped');
                              },
                              child: Fill(title: 'Еда'),
                            ),
                            InkWell(
                              onTap: () {
                                // Действие при нажатии на 'Саморазвитие'
                                print('Саморазвитие tapped');
                              },
                              child: Fill(title: 'Саморазвитие'),
                            ),
                            InkWell(
                              onTap: () {
                                // Действие при нажатии на 'Технологии'
                                print('Технологии tapped');
                              },
                              child: Fill(title: 'Технологии'),
                            ),
                            InkWell(
                              onTap: () {
                                // Действие при нажатии на 'Дом'
                                print('Дом tapped');
                              },
                              child: Fill(title: 'Дом'),
                            ),
                            InkWell(
                              onTap: () {
                                // Действие при нажатии на 'Досуг'
                                print('Досуг tapped');
                              },
                              child: Fill(title: 'Досуг'),
                            ),
                            InkWell(
                              onTap: () {
                                // Действие при нажатии на 'Забота о себе'
                                print('Забота о себе tapped');
                              },
                              child: Fill(title: 'Забота о себе'),
                            ),
                            InkWell(
                              onTap: () {
                                // Действие при нажатии на 'Наука'
                                print('Наука tapped');
                              },
                              child: Fill(title: 'Наука'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
