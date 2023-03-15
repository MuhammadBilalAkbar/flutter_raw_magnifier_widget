import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  static const Size loopSize = Size(200, 200);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var dragGesturePosition = Offset.zero;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter RawMagnifier Widget'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RepaintBoundary(
                  child: Stack(
                    children: [
                      GestureDetector(
                        onPanUpdate: (details) => setState(() {
                          dragGesturePosition = details.localPosition;
                        }),
                        child: Column(
                          children: const [
                            Text('Drag on the logo!'),
                            SizedBox(height: 20),
                            FlutterLogo(size: 200),
                          ],
                        ),
                      ),
                      Positioned(
                        left: dragGesturePosition.dx,
                        top: dragGesturePosition.dy,
                        child: const RawMagnifier(
                          size: Size(300, 300),
                          decoration: MagnifierDecoration(
                            opacity: 1,
                            shape: CircleBorder(
                              side: BorderSide(color: Colors.pink, width: 3),
                            ),
                          ),
                          focalPointOffset: Offset.zero,
                          magnificationScale: 3,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
