import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Windows Phone
class WindowsPhone extends QueryDevice{

  WindowsPhone(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 480, maxWidth: 800,  currentMaxWidth: currentMaxWidth);

}