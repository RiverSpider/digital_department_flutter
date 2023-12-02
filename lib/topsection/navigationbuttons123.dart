import 'package:flutter/material.dart';

import '../Assets/Colors.dart';
import '../Assets/Consts.dart';
import '../Assets/Strings.dart';
import '../main.dart';
import '../mainsection/background.dart';
import '../mainsection/mainsection.dart';

class NavigationButtons extends StatefulWidget {

  const NavigationButtons({
    Key? key,
  }) : super(key: key);
  @override
  _NavigationButtonsState createState() => _NavigationButtonsState();
}

class _NavigationButtonsState extends State<NavigationButtons> {
  int selectedTabIndex = 0;
  MyApp index = MyApp();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            width: AppConstants.navcontainerwidth,
            height: AppConstants.navcontainerheight,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(color: ColorPalette.navbuttonsbackcolor),
            child: Stack(
              children: [
                Positioned(
                  left: AppConstants.zero,
                  top: AppConstants.zero,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = 0;
                      });
                    },
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        color: ColorPalette.navbuttonsbackcolor,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: AppConstants.navmiddle, height: AppConstants.navnameheight),
                          Container(
                            height: AppConstants.navlineboxheight,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Text(
                                    StringResources.profilepage,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: selectedTabIndex == 0
                                          ? ColorPalette.navtextactcolor
                                          : ColorPalette.navtextdiscolor,
                                      // я решил здесь не выводить в фонты
                                      // тк имеется кастомное условие на индекс
                                      fontSize: AppConstants.navtextsize,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: AppConstants.navletterspaser,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(width: AppConstants.navmiddle, height: AppConstants.navlineheight, color: selectedTabIndex == 0
                              ? ColorPalette.navlineactcolor
                              : ColorPalette.navlinediscolor,),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: AppConstants.navmiddle,
                  top: AppConstants.zero,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = 1;
                      });
                    },
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: selectedTabIndex == 1
                            ? ColorPalette.backgroundcolortop
                            : ColorPalette.backgroundcolortop,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: AppConstants.navmiddle, height: AppConstants.navnameheight),
                          Container(
                            height: AppConstants.navlineboxheight,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Text(
                                    StringResources.settingspage,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: selectedTabIndex == 1
                                          ? ColorPalette.navtextactcolor
                                          : ColorPalette.navtextdiscolor,
                                      // я решил здесь не выводить в фонты
                                      // тк имеется кастомное условие на индекс
                                      fontSize: AppConstants.navtextsize,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: AppConstants.navletterspaser,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(width: AppConstants.navmiddle, height: AppConstants.navlineheight, color: selectedTabIndex == 1
                              ? ColorPalette.navlineactcolor
                              : ColorPalette.navlinediscolor,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}