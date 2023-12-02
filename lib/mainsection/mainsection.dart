import 'package:digital_department_flutter/mainsection/fill.dart';
import 'package:digital_department_flutter/mainsection/sectionheader.dart';
import 'package:flutter/material.dart';

import '../Assets/Strings.dart';
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
                    SectionHeader(title: StringResources.subheader, description: StringResources.subdescription),
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
                                title: StringResources.sberprime,
                                description: StringResources.sberprimeDate,
                                subdiscription: StringResources.sberprimePrice,
                                image: StringResources.sberprimepic,
                              ),
                            ),
                            SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                print('tapped');
                              },
                              child: Cards(
                                title: StringResources.transfer,
                                description: StringResources.transferDate,
                                subdiscription: StringResources.transferPrice,
                                image: StringResources.percentbgpic,
                              ),
                            ),
                            SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                print('tapped');
                              },
                              child: Cards(
                                title: StringResources.sberprime,
                                description: StringResources.sberprimeDate,
                                subdiscription: StringResources.sberprimePrice,
                                image: StringResources.sberprimepic,
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
                            title: StringResources.ratesheader,
                            description: StringResources.ratesdescription,
                          ),
                          InkWell(
                            onTap: () {
                              // Действие при нажатии на кнопку Disclosure
                            },
                            child: Disclosure(
                              title: StringResources.limitheader,
                              description: StringResources.limitdescription,
                              image: StringResources.speedpic,
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
                              title: StringResources.transferheader,
                              description: StringResources.transferdescription,
                              image: StringResources.percentpic,
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
                              title: StringResources.infoheader,
                              image: StringResources.forwardpic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SectionHeader(title: StringResources.interestsheader, description: StringResources.interestsdescription),
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
                                print('Еда tapped');
                              },
                              child: Fill(title: StringResources.food),
                            ),
                            InkWell(
                              onTap: () {
                                print('Саморазвитие tapped');
                              },
                              child: Fill(title: StringResources.selfdev),
                            ),
                            InkWell(
                              onTap: () {
                                print('Технологии tapped');
                              },
                              child: Fill(title: StringResources.tech),
                            ),
                            InkWell(
                              onTap: () {
                                print('Дом tapped');
                              },
                              child: Fill(title: StringResources.home),
                            ),
                            InkWell(
                              onTap: () {
                                print('Досуг tapped');
                              },
                              child: Fill(title: StringResources.leisure),
                            ),
                            InkWell(
                              onTap: () {
                                print('Забота о себе tapped');
                              },
                              child: Fill(title: StringResources.selfcare),
                            ),
                            InkWell(
                              onTap: () {
                                print('Наука tapped');
                              },
                              child: Fill(title: StringResources.science),
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
