import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

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
                Stack(
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
                        size: Size(200, 200),
                        decoration: MagnifierDecoration(
                          opacity: 1,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.pink, width: 3),
                          ),
                        ),
                        focalPointOffset: Offset.zero,
                        magnificationScale: 2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
