import 'package:bjp/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
    this.width,
    this.height,
    this.boxfit,
  });

  final double? width;
  final double? height;
  final BoxFit? boxfit;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      //'assets/images/logo.svg',
      assetsPath.bjp_logo_svg,
      width: width ?? 100,
      height: height ?? 100,
      //fit: boxfit ?? BoxFit.scaleDown,
    );
  }
}
