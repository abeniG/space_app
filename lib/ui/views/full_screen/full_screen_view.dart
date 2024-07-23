import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:space_app/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'full_screen_viewmodel.dart';

class FullScreenView extends StackedView<FullScreenViewModel> {
  final String imageUrl;
  const FullScreenView({required this.imageUrl, Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FullScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBlack,
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

  @override
  FullScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FullScreenViewModel();
}
