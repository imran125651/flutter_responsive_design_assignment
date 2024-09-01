enum DeviceType{
  mobile,
  tablet,
  desktop
}


class ScreenUtils{
  static const double mobileMaxSize = 640;
  static const double tabletMaxSize = 1007;
  static const double desktopMinSize = 1008;


  static DeviceType getDeviceType({required double deviceWidth}){
    if(deviceWidth <= ScreenUtils.mobileMaxSize){
      return DeviceType.mobile;
    }
    else if(deviceWidth >= ScreenUtils.mobileMaxSize && deviceWidth < ScreenUtils.tabletMaxSize){
      return DeviceType.tablet;
    }
    return DeviceType.desktop;
  }

}