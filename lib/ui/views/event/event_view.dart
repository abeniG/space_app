import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/component/app_widgets.dart';
import 'package:space_app/ui/common/app_strings.dart';
import 'package:space_app/ui/common/app_text_style.dart';
import 'package:space_app/ui/views/event/event_view.form.dart';
import 'package:space_app/ui/views/event/event_viewmodel.dart';
import 'package:stacked/stacked_annotations.dart';
import '../../common/ui_helpers.dart';

import 'package:stacked/stacked.dart';

import '../../../models/event.dart';

@FormView(fields: [FormTextField(name: 'searchEvent')])
class EventView extends StatelessWidget with $EventView {
  EventView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EventViewModel>.reactive(
      viewModelBuilder: () => EventViewModel(),
      onModelReady: (model) => model.fetchEvents(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kcBlack,
        appBar: CommonAppBar(title: ksEvents),
        body: model.isBusy
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  //search bar
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
                          controller: searchEventController,
                          onChanged: model.searchEvents,
                          style: const TextStyle(color: kcWhite),
                          decoration: const InputDecoration(
                            hintText: ksSearch,
                            hintStyle: ktsSmallBodyText,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //list of events
                  Expanded(
                    child: ListView.builder(
                      itemCount: model.events.length,
                      itemBuilder: (context, index) {
                        Event event = model.events[index];
                        return ListTile(
                          leading: const Text(ksStar),
                          title: Text(
                            event.title,
                            style: ktsMediumBodyText,
                          ),
                          subtitle: Text(
                            event.description,
                            style: ktsSmallBodyText.copyWith(
                              color: kcWhite54
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  @override
  void onViewModelReady(EventViewModel viewModel) {
    syncFormWithViewModel(viewModel as FormStateHelper);
  }
}
