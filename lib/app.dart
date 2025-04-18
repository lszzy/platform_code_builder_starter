@PlatformBuilder()
import 'package:flutter/material.dart';
import 'package:platform_code_builder/platform_code_builder.dart';
import 'package:platform_code_builder_starter/platform_dialog.p.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @Available(platform: PlatformType.desktop | PlatformType.web, rename: 'scale')
  final scaleForDesktopAndWeb = 2.0;

  @Unavailable(platform: PlatformType.desktop | PlatformType.web)
  final scale = 1.0;

  @Available(platform: PlatformType.android, rename: 'themeColor')
  final themeColorForAndroid = Colors.blue;

  @Available(platform: PlatformType.ios, rename: 'themeColor')
  final themeColorForIos = Colors.cyan;

  @Unavailable(platform: PlatformType.android | PlatformType.ios)
  final themeColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter platform code Demo',
      theme: ThemeData(
        primarySwatch: themeColor,
      ),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: scale,
        ),
        child: child!,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png'),
            Text(
                'Current platform is ${PlatformType.getName(PlatformType.current)}'),
            TextButton(
              onPressed: () {
                PlatformDialog.show(context);
              },
              child: const Text('Show platform specific dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
