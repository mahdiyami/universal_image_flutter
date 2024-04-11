import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' as svg;
import 'package:utils_extension_dart/ext/ext.dart';

import 'universal_image_loader_option.dart';

class CachedSvg extends StatelessWidget {
  final String path;
  final UniversalImageLoaderOption? option;

  const CachedSvg(this.path, {super.key, this.option});

  @override
  Widget build(BuildContext context) {
    if (path.isURl) {
      return svg.SvgPicture.network(
        path,
        height: option?.height,
        width: option?.width,
        fit: option?.fit ?? BoxFit.contain,
        colorFilter: option?.colorFilter,
      );
    } else {
      return svg.SvgPicture.asset(
        path,
        height: option?.height,
        width: option?.width,
        fit: option?.fit ?? BoxFit.contain,
        colorFilter: option?.colorFilter,
      );
    }
  }
}
