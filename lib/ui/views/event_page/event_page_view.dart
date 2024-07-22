
import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/views/event_page/event_page_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../../models/eventModel.dart';


class EventPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EventPageViewModel>.reactive(
      viewModelBuilder: () => EventPageViewModel(),
      onModelReady: (model) => model.fetchEvents(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcBlack,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kcBlack,
          title: Text('NASA Events',
          style: TextStyle(
            color: kcWhite
          ),
          ),
          iconTheme: IconThemeData(
            color: kcWhite
          ),
          elevation: 0,
        ),
        body: model.isBusy
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: model.events.length,
          itemBuilder: (context, index) {
            Event event = model.events[index];
            return ListTile(
              leading: Text('⭐️'),
              title: Text(event.title,
              style: TextStyle(
                color: kcWhite
              ),
              ),
              subtitle: Text(event.description,
                style: TextStyle(
                    color: kcWhite54
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
