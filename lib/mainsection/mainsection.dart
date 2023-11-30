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
    return const Column(
      children: [
        SizedBox(
          width: 1000,
          height: 700,
          child: Stack(
            children: [
              Positioned(
                child: Background(),
              ),
              Column(
                children: [
                SectionHeader(title: 'У вас подключено', description: 'Подписки, автоплатежи и сервисы на которые вы подписались'),
                  SizedBox(height: 20),
                  Disclosure(title: 'Изменить суточный лимит', description: 'На платежи и переводы', image: "images/speed.png"),
  
              ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}