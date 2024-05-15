import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' as svg;
import 'package:universal_image_flutter/universal_image_loader.dart';
import 'package:utils_extension_dart/ext/ext.dart';


class CachedSvg extends StatelessWidget {
  final String path;
  final UniversalImageLoaderOption option;

  const CachedSvg(this.path, {super.key, this.option = const UniversalImageLoaderOption()});

  @override
  Widget build(BuildContext context) {
    if (path.isURl) {
      return svg.SvgPicture.network(
        path,
        height: option.height,
        width: option.width,
        alignment: option.alignment,
        fit: option.fit ,

        colorFilter: option.colorFilter,
      );
    } else {
      return svg.SvgPicture.asset(
        path,
        height: option.height,
        width: option.width,
        fit: option.fit ,
        alignment: option.alignment,
        colorFilter: option.colorFilter,
      );
    }
  }
}
