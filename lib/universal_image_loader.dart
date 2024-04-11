import 'package:cached_network_image/cached_network_image.dart';
import 'package:cross_file/cross_file.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:universal_image_flutter/cache_image.dart';
import 'package:universal_image_flutter/cache_svg.dart';
import 'package:universal_image_flutter/universal_image_loader_option.dart';
import 'package:universal_image_flutter/mime_type.dart';
import 'package:universal_image_flutter/xfile_ext.dart';
import 'package:universal_image_flutter/xfile_to_widget.dart';


class UniversalImageLoader extends StatelessWidget {
  final String? path;
  final XFile? xFile;
  final UniversalImageLoaderOption? option;
  final GestureTapCallback? onTap;

  const UniversalImageLoader({
    super.key,
    this.path,
    this.xFile,
    this.onTap,
    this.option,
  });

  static ImageProvider imageProvider(String url) {
    return CachedNetworkImageProvider(url, headers: const {
      // HttpHeaders.authorizationHeader:
      // "Bearer ${sl<NetworkManager>().getToken()}"
    });
  }

  static ImageProvider imageProviderFromFile(XFile file) {
    if (kIsWeb) {
      return CachedNetworkImageProvider(file.path);
    }
    if (file.mimeType != null) {
      switch (file.convertMimeType) {
        case AppMimeType.image:
          return FileImage(file.toFile);
        case AppMimeType.video:
        // TODO: Handle this case.
        default:
          return FileImage(file.toFile);
      }
    }
    return FileImage(file.toFile);
  }

  @override
  Widget build(BuildContext context) {
    if (path != null || (xFile != null)) {
      return InkWell(
          onTap: onTap,
          child: xFile != null
              ? XFileToWidget(
                  xFile!,
                  option: option,
                )
              : (path!.contains('.svg')
                  ? CachedSvg(
                      path!,
                      option: option,
                    )
                  : CachedImage(
                      path!,
                      option: option,
                    )));
    } else {
      return Container();
    }
  }
}
