import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Generic Phone
class GenericPhone extends QueryDevice{

  GenericPhone(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 300, maxWidth: 500,  currentMaxWidth: currentMaxWidth);

}