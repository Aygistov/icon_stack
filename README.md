<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Flutter widget for displaying stacked icons.

![shirt + cat](lib/tshirt_cat.PNG) 

## Getting started

```dart
dependencies:
  icon_stack: 1.0.0
  fluttericon: ^2.0.0  
```

## Usage 

```dart
import 'package:icon_stack/icon_stack.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
```
```dart
IconStackWidget(
  IconStack(
    [
      PositionedIcon(
      icon: FontAwesome5.tshirt,
        size: 0.800,
        x: 0.000,
        y: 1.000,
        color: const Color(0xff607d8b)),
      PositionedIcon(
        icon: RpgAwesome.cat,
        size: 0.348,
        x: 0.496,
        y: 0.537,
        color: const Color(0xff263238)),
    ],
  ),
),
```

## Additional information

You can use [Icon Stack Constructor](https://aygistov.github.io/icon_stack_constructor/) to create icon stacks
