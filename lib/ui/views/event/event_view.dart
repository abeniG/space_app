import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/component/app_widgets.dart';
import 'package:space_app/ui/common/app_strings.dart';
import 'package:space_app/ui/common/app_text_style.dart';
import 'package:space_app/ui/views/event/event_viewmodel.dart';
import 'package:stacked/stacked_annotations.dart';
import '../../common/ui_helpers.dart';

import 'package:stacked/stacked.dart';

import '../../../models/event.dart';

class EventPageView extends StatelessWidget {
  EventPageView({super.key});
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EventPageViewModel>.reactive(
      viewModelBuilder: () => EventPageViewModel(),
      // ignore: deprecated_member_use
      onModelReady: (model) => model.fetchEvents(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcBlack,
        appBar: CommonAppBar(title: ksEvents),
        body: model.isBusy
            ? const Center(child: CircularProgressIndicator())
            : Container(
                height: screenHeight(context),
                width: screenWidth(context),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          width: screenWidth(context),
                          height: screenHeightFraction(context, dividedBy: 14),
                          decoration: BoxDecoration(
                              border: Border.all(color: kcWhite.withOpacity(0.5)),
                              borderRadius: BorderRadius.circular(40)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: TextFormField(
                              controller: search,
                              decoration: const InputDecoration(
                                  hintText: ksSearch, hintStyle: ktsWhiteText,
                                  border: InputBorder.none
                                  ),
                            ),
                          ),
                        ),
                      ),
                      ListView.builder(
                        itemCount: model.events.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          Event event = model.events[index];
                          return ListTile(
                            leading: const Text(ksStar),
                            title: Text(
                              event.title,
                              style: ktsWhiteText,
                            ),
                            subtitle: Text(
                              event.description,
                              style: ktsWhite54Text,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
