
part of 'universal_image_loader.dart';


final class UniversalImageLoaderOption {
  final double? height;
  final double? width;
  final BoxFit fit;
  final Alignment alignment;

  final Color? color;
  final ColorFilter? colorFilter;
  final BlendMode? blendMode;

  const UniversalImageLoaderOption({ this.height,  this.width,  this.fit = BoxFit.contain,   this.color,  this.colorFilter,  this.blendMode , this.alignment = Alignment.center});
}