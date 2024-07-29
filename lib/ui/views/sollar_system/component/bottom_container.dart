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
  final Function next;
  final Function prev;
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
                          verticalSpace(70),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.arrow_back_ios),
                                onPressed: () {
                                  prev();
                                },
                              ),
                              Text(
                                name,
                                style: ktsHeader1.copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: kcWhite.withOpacity(0.8)
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.arrow_forward_ios),
                                onPressed: () {
                                  next();
                                },
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25.0, right: 25.0, top: 10),
                            child: Text(
                              discoveredBy,
                              style: ktsSmallBodyText.copyWith(
                                color: kcWhite60
                              ),
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
                                   Text(
                                    ksGravity,
                                    style: ktsMediumBodyText.copyWith(
                                      color: kcWhite60
                                    ),
                                  ),
                                  Text(
                                    gravity.toString(),
                                    style: ktsMediumBodyText.copyWith(
                                      color: kcWhite60
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                   Text(
                                    ksRadius,
                                    style: ktsMediumBodyText.copyWith(
                                      color: kcWhite60
                                    ),
                                  ),
                                  Text(
                                    radius.toString(),
                                    style: ktsMediumBodyText.copyWith(
                                      color: kcWhite60
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                   Text(
                                    ksTemprature,
                                    style: ktsMediumBodyText.copyWith(
                                      color: kcWhite60
                                    ),
                                  ),
                                  Text(
                                    temprature.toString(),
                                    style: ktsMediumBodyText.copyWith(
                                      color: kcWhite60
                                    ),
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
