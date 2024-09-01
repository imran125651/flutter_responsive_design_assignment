import 'package:flutter/material.dart';
import '../main.dart';
import '../utils/screen_utils.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({required this.mobile, required this.tablet, required this.desktop, super.key});
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    DeviceType deviceType = ScreenUtils.getDeviceType(deviceWidth: size.width);
    if(deviceType == DeviceType.mobile){
      return mobile;
    }
    else if(deviceType == DeviceType.tablet){
      return tablet;
    }
    return desktop;
  }
}
