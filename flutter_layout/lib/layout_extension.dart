import 'package:flutter_layout/layout_tool.dart';

extension LayoutExtension on num {
  ///[LayoutTool.setWidth]
  num get w => LayoutTool().setWidth(this);

  ///[LayoutTool.setHeight]
  num get h => LayoutTool().setHeight(this);

  ///[LayoutTool.setSp]
  num get sp => LayoutTool().setSp(this);

  ///[LayoutTool.setSp]
  num get ssp => LayoutTool().setSp(this, allowFontScalingSelf: true);

  ///[LayoutTool.setSp]
  num get nsp => LayoutTool().setSp(this, allowFontScalingSelf: false);

  ///屏幕宽度的倍数
  ///Multiple of screen width
  num get wp => LayoutTool().screenWidth * this;

  ///屏幕高度的倍数
  ///Multiple of screen height
  num get hp => LayoutTool().screenHeight * this;
}
