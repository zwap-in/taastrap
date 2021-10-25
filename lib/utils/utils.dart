/// IMPORTING THIRD PARTY PACKAGES
import 'package:zwap_utils/zwap_utils.dart';

/// IMPORTING LOCAL PACKAGES
import 'package:taastrap/mediaQueries/mediaQueries.dart';

/// Check if string is a numeric type
bool isNumeric(String s) {
  return int.tryParse(s) != null;
}

/// Mapping device type with sizes names
Map<int, String> mappingSizes = {
  0: "xs",
  1: "sm",
  2: "md",
  3: "lg",
  4: "xl"
};

/// It gets multiple conditions in base of which of the different devices is the current device
T getMultipleConditions<T>(T four, T three, T two, T one, T zero){
  int deviceType = Utils.getIt<Generic>().deviceType();
  if(deviceType == 4){
    return four;
  }
  else if(deviceType == 3){
    return three;
  }
  else if(deviceType == 2){
    return two;
  }
  else if(deviceType == 1){
    return one;
  }
  else{
    return zero;
  }
}