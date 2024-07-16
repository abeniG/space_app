
import 'package:flutter/material.dart';
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
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('NASA Events',
          style: TextStyle(
            color: Colors.white
          ),
          ),
          iconTheme: IconThemeData(
            color: Colors.white
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
                color: Colors.white
              ),
              ),
              subtitle: Text(event.description,
                style: TextStyle(
                    color: Colors.white54
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
