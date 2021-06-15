import 'package:flutter/cupertino.dart';
import 'package:taastrap/utils/utils.dart';


/// Insert any element inside component to make the widget responsive
class ResponsiveElement extends StatelessWidget{

  /// The widget to make responsive
  final Widget element;

  /// The device type in current use
  final int deviceType;

  /// Optional value for xs devices
  final int? xs;

  /// Optional value for sm devices
  final int? sm;

  /// Optional value for md devices
  final int? md;

  /// Optional value for lg devices
  final int? lg;

  /// Optional value for xl devices
  final int? xl;

  ResponsiveElement({Key? key,
    required this.element,
    required this.deviceType,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl
  }): super(key: key){
    assert(this.deviceType >= 0 && this.deviceType <= 4);
    if(this.xs != null){
      assert(this.xs! > 0 && this.xs! <= 12);
    }
    if(this.sm != null){
      assert(this.sm! > 0 && this.sm! <= 12);
    }
    if(this.md != null){
      assert(this.md! > 0 && this.md! <= 12);
    }
    if(this.lg != null){
      assert(this.lg! > 0 && this.lg! <= 12);
    }
    if(this.xl != null){
      assert(this.xl! > 0 && this.xl! <= 12);
    }

  }

  /// It converts the bootstrap col dimension to flutter flex size
  int _convertSizeElement(int dimension){
    switch(dimension){
      case 1:
        return 0;
      case 2:
        return 0;
      case 3:
        return 1;
      case 4:
        return 1;
      case 5:
        return 2;
      case 6:
        return 2;
      case 7:
        return 3;
      case 8:
        return 3;
      case 9:
        return 4;
      case 10:
        return 4;
      case 11:
        return 5;
      default:
        return 5;
    }
  }

  /// It retrieves the size for flexing the element inside the Expanded
  int getSizeElement(){
    String currentSize = mappingSizes[this.deviceType]!;
    int xs = this.xs ?? 12;
    int sm = this.sm ?? 12;
    int md = this.md ?? 6;
    int lg = this.lg ?? 4;
    int xl = this.xl ?? 3;
    int flexSize = (currentSize == "xs" ? xs : (currentSize == "sm" ? sm : (currentSize == "md" ? md : (currentSize == "lg" ? lg : xl))));
    return this._convertSizeElement(flexSize);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: this.element,
      flex: this.getSizeElement(),
    );
  }

}