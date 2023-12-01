import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String description;

  const SectionHeader({super.key, required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    return Material(child: Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 375, height: 14),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 16, height: 50),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 343,
                            child: Text(
                              title,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.70,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: 343,
                            child: Text(
                              description,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.550000011920929),
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.42,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 375, height: 12),
            ],
          ),
        ),
      ],
    ),);
  }
}
