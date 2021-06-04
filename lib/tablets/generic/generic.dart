import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Generic tablet
class GenericTablet extends QueryDevice{

  GenericTablet(BuildContext context, Orientation? orientation)
      : super(context: context, orientation: orientation, minWidth: 768, maxWidth: 992);

}