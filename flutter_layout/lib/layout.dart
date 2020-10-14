import 'package:flutter/material.dart';
import 'package:flutter_layout/flutter_layout.dart';

///宽
w(width) => LayoutTool().setWidth(width);

///高
h(height) => LayoutTool().setHeight(height);

///字体
sp(sp) => LayoutTool().setSp(sp);

///屏幕宽度
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

///屏幕高度
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
