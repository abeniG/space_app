import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/app_widgets.dart';
import 'package:space_app/ui/common/app_strings.dart';
import 'package:space_app/ui/common/app_text_style.dart';
import 'package:space_app/ui/views/event/event_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../../models/event_model.dart';

class EventPageView extends StatelessWidget {
  const EventPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EventPageViewModel>.reactive(
      viewModelBuilder: () => EventPageViewModel(),
      // ignore: deprecated_member_use
      onModelReady: (model) => model.fetchEvents(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcBlack,
        appBar: const CommonAppBar(title: ksEvents),
        body: model.isBusy
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: model.events.length,
                itemBuilder: (context, index) {
                  Event event = model.events[index];
                  return ListTile(
                    leading: const Text(ksStar),
                    title: Text(
                      event.title,
                      style: whiteText,
                    ),
                    subtitle: Text(
                      event.description,
                      style: white54Text,
                    ),
                  );
                },
              ),
      ),
    );
  }
}
