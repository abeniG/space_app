import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/app_strings.dart';
import 'package:space_app/ui/common/app_text_style.dart';
import 'package:space_app/ui/common/ui_helpers.dart';

class CustomBottomContainer extends StatelessWidget {
  final String name;
  final String image;
  final String discoveredBy;
  final double gravity;
  final double radius;
  final double temprature;
  final Widget next;
  final Widget prev;
  const CustomBottomContainer(
      {super.key,
      required this.name,
      required this.image,
      required this.discoveredBy,
      required this.gravity,
      required this.radius,
      required this.temprature,
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
                              discoveredBy,
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
                                    ksGravity,
                                    style: ktsPlanetSubInfos,
                                  ),
                                  Text(
                                    gravity.toString(),
                                    style: ktsPlanetSubInfos,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    ksRadius,
                                    style: ktsPlanetSubInfos,
                                  ),
                                  Text(
                                    radius.toString(),
                                    style: ktsPlanetSubInfos,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Text(
                                    ksTemprature,
                                    style: ktsPlanetSubInfos,
                                  ),
                                  Text(
                                    temprature.toString(),
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
