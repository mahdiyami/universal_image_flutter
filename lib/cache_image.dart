import 'package:flutter/material.dart';
import 'package:universal_image_flutter/base_cached_image.dart';
import 'package:universal_image_flutter/universal_image_loader.dart';
import 'package:utils_extension_dart/ext/ext.dart';


class CachedImage extends StatelessWidget {
  final String path;
  final UniversalImageLoaderOption option;

  const CachedImage(this.path, {super.key, this.option = const UniversalImageLoaderOption()});

  @override
  Widget build(BuildContext context) {
    if (path.isURl) {
      return BaseCachedNetworkImage(
        imageUrl: path,
        option: option,
      );
    } else {
      return Image.asset(
        path,
        height: option.height,
        color: option.color,
        colorBlendMode: option.blendMode,
        width: option.width,
        alignment: option.alignment,
        fit: option.fit,
      );
    }
  }
}
