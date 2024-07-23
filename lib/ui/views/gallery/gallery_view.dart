import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/app_strings.dart';
import 'package:space_app/ui/component/app_widgets.dart';
import 'package:stacked/stacked.dart';
import 'gallery_viewmodel.dart';

class GalleryView extends StackedView<GalleryViewModel> {
  const GalleryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GalleryViewModel viewModel,
    Widget? child,
  ) {
    return ViewModelBuilder<GalleryViewModel>.reactive(
      viewModelBuilder: () => GalleryViewModel(),
      // ignore: deprecated_member_use
      onModelReady: (model) => model.fetchImages(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: kcBlack,
          appBar: CommonAppBar(
            title: ksGalleryTitle,
          ),
          body: model.isBusy
              ? const Center(child: CircularProgressIndicator())
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                  ),
                  itemCount: model.images.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        viewModel.navigateToFull(model.images[index]);
                      },
                      child: CachedNetworkImage(
                        imageUrl: model.images[index],
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
        );
      },
    );
  }

  @override
  GalleryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GalleryViewModel();
}
