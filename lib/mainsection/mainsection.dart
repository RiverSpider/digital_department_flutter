import 'package:digital_department_flutter/mainsection/fill.dart';
import 'package:digital_department_flutter/mainsection/sectionheader.dart';
import 'package:flutter/material.dart';

import '../Assets/Consts.dart';
import '../Assets/Fonts.dart';
import '../Assets/Strings.dart';
import '../mainsection//background.dart';
import 'Disclosure.dart';
import 'Disclosure2.dart';
import 'card.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> cardDataList = [
      {
        'title': StringResources.sberprime,
        'description': StringResources.sberprimeDate,
        'subdiscription': StringResources.sberprimePrice,
        'image': StringResources.sberprimepic,
      },
      {
        'title': StringResources.transfer,
        'description': StringResources.transferDate,
        'subdiscription': StringResources.transferPrice,
        'image': StringResources.percentbgpic,
      },
      {
        'title': StringResources.transfer,
        'description': StringResources.transferDate,
        'subdiscription': StringResources.transferPrice,
        'image': StringResources.percentbgpic,
      },
    ];

    List<Map<String, String>> fillDataList = [
      {'title': StringResources.food},
      {'title': StringResources.selfdev},
      {'title': StringResources.tech},
      {'title': StringResources.home},
      {'title': StringResources.leisure},
      {'title': StringResources.selfcare},
      {'title': StringResources.science},
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                const Positioned(
                  child: Background(),
                ),
                Column(
                  children: [
                    const SectionHeader(title: StringResources.subheader, description: StringResources.subdescription),
                    Material(
                      child: SizedBox(
                        height: AppConstants.cardheight,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: <Widget>[
                            const SizedBox(width: AppConstants.cardimagesize),
                            ...cardDataList.map((cardData) {
                              return Row(children: [
                                  InkWell(
                                  onTap: () {
                                print('Tapped');
                                  },
                                    child: Cards(
                                    title: cardData['title'] ?? '',
                                    description: cardData['description'] ?? '',
                                    subdiscription: cardData['subdiscription'] ?? '',
                                    image: cardData['image'] ?? '',
                                    ),
                                  ),
                                FontThemes.spacersmall,
                              ],);
                            }).toList(),
                            FontThemes.spacerlarge,
                          ],
                        ),
                      ),
                    ),
                    Material(
                      child: Column(
                        children: [
                          FontThemes.spacermedium,
                          const SectionHeader(
                            title: StringResources.ratesheader,
                            description: StringResources.ratesdescription,
                          ),
                          InkWell(
                            onTap: () {
                              // Действие при нажатии на кнопку Disclosure
                            },
                            child: const Disclosure(
                              title: StringResources.limitheader,
                              description: StringResources.limitdescription,
                              image: StringResources.speedpic,
                            ),
                          ),
                          FontThemes.spacersmall,
                          FontThemes.divider,
                          InkWell(
                            onTap: () {
                              // Действие при нажатии на кнопку Disclosure
                            },
                            child: const Disclosure(
                              title: StringResources.transferheader,
                              description: StringResources.transferdescription,
                              image: StringResources.percentpic,
                            ),
                          ),
                          FontThemes.spacersmall,
                          FontThemes.divider,
                          InkWell(
                            onTap: () {
                              // Действие при нажатии на кнопку Disclosure2
                            },
                            child: const Disclosure2(
                              title: StringResources.infoheader,
                              image: StringResources.forwardpic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SectionHeader(title: StringResources.interestsheader, description: StringResources.interestsdescription),
                    Material(
                      child: Container(
                        padding: const EdgeInsets.only(left: AppConstants.chipspacerleft, right: AppConstants.chipspacerright),
                        child: Wrap(
                          spacing: AppConstants.chippadding,
                          runSpacing: AppConstants.chippadding,
                          children: fillDataList.map((fillData) {
                            return InkWell(
                              onTap: () {
                                print('${fillData['title']} tapped');
                              },
                              child: Fill(
                                title: fillData['title'] ?? '',
                              ),
                            );
                          }).toList(),
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
