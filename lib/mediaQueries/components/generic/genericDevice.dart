import 'package:flutter/cupertino.dart';
import 'package:taastrap/taastrap.dart';

/// It creates a generic device
class GenericDevice extends QueryDevice{
  GenericDevice(double minWidth, double maxWidth, BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: minWidth, maxWidth: maxWidth, currentMaxWidth: currentMaxWidth, );
}