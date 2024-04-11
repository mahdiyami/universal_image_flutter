

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'universal_image_loader_option.dart';

class BaseCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final UniversalImageLoaderOption? option;

  const BaseCachedNetworkImage({super.key, required this.imageUrl,  this.option});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: option?.height,
      color: option?.color,
      colorBlendMode: option?.blendMode,
      width: option?.width,
      fit: option?.fit,
      // errorWidget: sl<ConfigManager>().getConfig<ImageHelperConfig>()?.errorWidget,
      // placeholder: sl<ConfigManager>().getConfig<ImageHelperConfig>()?.placeholder,
      // progressIndicatorBuilder: sl<ConfigManager>().getConfig<ImageHelperConfig>()?.progressIndicatorBuilder,
    );
  }
}
