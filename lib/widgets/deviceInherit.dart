/// IMPORTING THIRD PARTY PACKAGES
import 'package:flutter/material.dart';

/// Define a widget to retrieve the deviceType from the ancestor widgets
class DeviceInherit extends InheritedWidget {

  /// The device type to pass to any children widgets
  final int deviceType;

  const DeviceInherit({Key? key,
    required this.deviceType,
    required Widget child,
  }) : super(key: key, child: child);

  /// It retrieves the deviceType from the ancestor widgets
  static DeviceInherit of(BuildContext context) {
    final DeviceInherit? result = context.dependOnInheritedWidgetOfExactType<DeviceInherit>();
    assert(result != null, 'No deviceType found');
    return result!;
  }

  @override
  bool updateShouldNotify(DeviceInherit old) => deviceType != old.deviceType;
}
