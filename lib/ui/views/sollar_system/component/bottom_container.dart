import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/app_strings.dart';
import 'package:space_app/ui/common/app_text_style.dart';
import 'package:space_app/ui/common/ui_helpers.dart';

class CustomBottomContainer extends StatelessWidget {
  final String name;
  final String image;
  final String description;
  final String distance;
  final String lightTime;
  final String yearLength;
  final Widget next;
  final Widget prev;
  const CustomBottomContainer(
      {super.key,
      required this.name,
      required this.image,
      required this.description,
      required this.distance,
      required this.lightTime,
      required this.yearLength,
      required this.next,
      required this.prev});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenWidthFraction(context, dividedBy: 1.5),
      child: Container(
        width: screenWidth(context),
        height: screenHeightFraction(context, dividedBy: 1.8),
        color: kcTransparent,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenWidthFraction(context, dividedBy: 1.1),
                      height: screenHeightFraction(context, dividedBy: 2.5),
                      decoration: const BoxDecoration(
                        color: kcCustomContainerColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        children: [
                          verticalSpaceLarge,
                          verticalSpaceMedium,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              prev,
                              Text(
                                name,
                                style: ktsPlanetName,
                              ),
                              next
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25.0, right: 25.0, top: 10),
                            child: Text(
                              description,
                              style: ktsPlanetDescription,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 25.0, right: 25.0, top: 10, bottom: 10),
                            child: Divider(
                              color: kcWhite60,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              horizontalSpaceTiny,
                              Column(
                                children: [
                                  const Text(
                                    ksDistance,
                                    style: ktsPlanetSubInfos,
                                  ),
                                  Text(
                                    distance,
                                    style: ktsPlanetSubInfos,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    ksLightTime,
                                    style: ktsPlanetSubInfos,
                                  ),
                                  Text(
                                    lightTime,
                                    style: ktsPlanetSubInfos,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    ksYearLength,
                                    style: ktsPlanetSubInfos,
                                  ),
                                  Text(
                                    yearLength,
                                    style: ktsPlanetSubInfos,
                                  )
                                ],
                              ),
                              horizontalSpaceTiny,
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              left: screenWidthFraction(context, dividedBy: 4),
              top: screenWidthFraction(context, dividedBy: 20),
              child: SizedBox(
                  width: screenWidthFraction(context, dividedBy: 2),
                  height: screenWidthFraction(context, dividedBy: 2),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
