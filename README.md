## 1. Research: Flutter RawMagnifier Class

- Keywords:
    - Flutter RawMagnifier
    - Flutter Raw Magnifier
    - Raw Magnifier Flutter
    - Raw Magnifier Flutter Tutorial
    - Flutter RawMagnifier class
    - Flutter RawMagnifier widget
- Video Title: Flutter Raw Magnifier Class - Raw Magnifier Widget Tutorial in Flutter

## 2. Research: Competitors

**Flutter Videos/Articles**

- 36K: https://www.youtube.com/watch?v=YBRkVCRP1Gw
- https://api.flutter.dev/flutter/widgets/RawMagnifier-class.html
- https://medium.flutterdevs.com/rawmagnifier-in-flutter-6e311531c0b

**Android/Swift/React Videos**

- 210: https://www.youtube.com/watch?v=l_MVDzJ4Ekc
- 1.7K: https://www.youtube.com/watch?v=kEr_K_kd4RI
- https://cs.android.com/android/platform/superproject/+/master:frameworks/base/core/java/android/widget/Magnifier.java;drc=f752c800d35afcf9c25e27071c15e50266a3f00a;l=1460
- https://stackoverflow.com/questions/32055525/how-to-magnify-zoom-part-of-image
- https://developer.android.com/reference/android/widget/Magnifier
- https://www.brightec.co.uk/blog/creating-a-zoomable-image-view-in-swift
- https://cocoapods.org/pods/iOS-MagnifyingGlass

**Great Features**

- It is a common base class for magnifiers.
- You can find more at [api.flutter.dev](https://api.flutter.dev/flutter/widgets/RawMagnifier-class.html).

**Problems from Videos**

- NA

**Problems from Flutter Stackoverflow**

- NA

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. User often need help to see small text on mobile devices.
2. Magnifier has some important properties like size, decoration and magnificationScale.
3. It is very useful and can magnify UI elements with its different shapes.

**The Structured Main Content**

1. In `main.dart`, theme properties are set.
2. In `my_homepage.dart`, initialize Offset named dragGesturePosition. Offset is an immutable 2D floating-point offset.
```dart
  var dragGesturePosition = Offset.zero;
```
Offsets can be explained in two ways:
- As representing a point in Cartesian space a specified distance from a separately-maintained origin.
- As a vector that can be applied to coordinates.
3. `scaffold` contains `column` and `column` contains `stack`. `stack` contains two children:
- `GestureDetector` with child as `column` containing `Text` and `FlutterLogo`.
```dart
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
```
- `Positioned` widget containing `RawMagnifier`.
```dart
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
```
