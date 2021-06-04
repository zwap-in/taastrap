import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Generic Phone
class GenericPhone extends QueryDevice{

  GenericPhone(BuildContext context, Orientation? orientation)
      : super(context: context, orientation: orientation, minWidth: 320, maxWidth: 768);

}