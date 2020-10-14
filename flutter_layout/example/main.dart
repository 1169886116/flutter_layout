import 'package:flutter/material.dart';
import 'package:flutter_layout/flutter_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //build
  @override
  Widget build(BuildContext context) {
    //将设计稿的尺寸填入,进行初始化,写一次就行(问下UI是以什么尺寸为参照物的)
    LayoutTool.init(context, designSize: Size(375.0, 667.0));
    //主体
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              width: screenWidth(context), //当前屏宽
              height: screenHeight(context), //当前平高
              color: Colors.yellowAccent,
            ),
            Container(
              width: w(200), //宽
              height: h(100), //高
              margin: EdgeInsets.only(left: w(10), top: h(10)), //外间距
              padding: EdgeInsets.only(right: w(10), bottom: h(10.0)), //内间距
              color: Colors.red,
              alignment: Alignment.center,
              child: Text(
                "可调节字体大小",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: sp(14.0), //字体大小
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
