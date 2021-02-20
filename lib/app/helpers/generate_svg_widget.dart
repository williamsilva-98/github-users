import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class GenerateSvgWidget {
  static Widget generate({@required String asset}) => SvgPicture.asset(asset);
}
