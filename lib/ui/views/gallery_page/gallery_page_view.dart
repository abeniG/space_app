import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'gallery_page_viewmodel.dart';

class GalleryPageView extends StackedView<GalleryPageViewModel> {
  const GalleryPageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GalleryPageViewModel viewModel,
    Widget? child,
  ) {
    return ViewModelBuilder<GalleryPageViewModel>.reactive(
      viewModelBuilder: () => GalleryPageViewModel(),
      onModelReady: (model) => model.fetchImages(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.white),
            elevation: 0,
            title: Text(
              'NASA Image Gallery',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: model.isBusy
              ? Center(child: CircularProgressIndicator())
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                  ),
                  itemCount: model.images.length,
                  itemBuilder: (context, index) {
                    return CachedNetworkImage(
                      imageUrl: model.images[index],
                      placeholder: (context, url) =>
                          Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      fit: BoxFit.cover,
                    );
                  },
                ),
        );
      },
    );
  }

  @override
  GalleryPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GalleryPageViewModel();
}
