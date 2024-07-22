import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:space_app/ui/common/app_widgets.dart';
import 'package:stacked/stacked.dart';
import 'gallery_viewmodel.dart';

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
      // ignore: deprecated_member_use
      onModelReady: (model) => model.fetchImages(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: kcBlack,
          appBar: const CommonAppBar(title: 'NASA Image Gallery'),
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
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FullScreenImagePage(
                              imageUrl: model.images[index],
                            ),
                          ),
                        );
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
  GalleryPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GalleryPageViewModel();
}



class FullScreenImagePage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImagePage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}