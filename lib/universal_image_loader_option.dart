

import 'package:flutter/material.dart';

final class UniversalImageLoaderOption {
  final double? height;
  final double? width;
  final BoxFit fit;

  final Color? color;
  final ColorFilter? colorFilter;
  final BlendMode? blendMode;

  UniversalImageLoaderOption({ this.height,  this.width,  this.fit = BoxFit.contain,   this.color,  this.colorFilter,  this.blendMode});
}