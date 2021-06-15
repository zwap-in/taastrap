/// IMPORTING THIRD PARTY PACKAGES
import 'genericDevice.dart';

/// Generic class to check generic devices
class Generic{

  /// The max width of the current device
  final int maxWith;

  /// ExtraSmall sizes
  late GenericDevice extraSmall;

  /// Small sizes
  late GenericDevice small;

  /// Medium sizes
  late GenericDevice medium;

  /// Large sizes
  late GenericDevice large;

  /// ExtraLarge sizes
  late GenericDevice extraLarge;

  Generic({required this.maxWith}){
    this.extraSmall = GenericDevice(320, 575, null, null, this.maxWith);
    this.small = GenericDevice(576, 767, null, null, this.maxWith);
    this.medium = GenericDevice(768, 991, null, null, this.maxWith);
    this.large = GenericDevice(992, 1199, null, null, this.maxWith);
    this.extraLarge = GenericDevice(1200, -1, null, null, this.maxWith);
  }

  /// Check if is an extra small device
  bool isExtraSmall(){
    return this.extraSmall.isPortraitLandscape();
  }

  /// Check if is a small device
  bool isSmall(){
    return this.small.isPortraitLandscape();
  }

  /// Check if is a medium device
  bool isMedium(){
    return this.medium.isPortraitLandscape();
  }

  /// Check if is a large device
  bool isLarge(){
    return this.large.isPortraitLandscape();
  }

  /// Check if is an extra large device
  bool isExtraLarge(){
    return this.extraLarge.isPortraitLandscape();
  }
  /// Check which device type is
  int deviceType(){
    if(this.isExtraSmall()){
      return 0;
    }
    else if(this.isSmall()){
      return 1;
    }
    else if(this.isMedium()){
      return 2;
    }
    else if(this.isLarge()){
      return 3;
    }
    else if(this.isExtraLarge()){
      return 4;
    }
    else{
      return -1;
    }
  }


}