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

![example](https://user-images.githubusercontent.com/32730294/154675936-004676d9-ae34-478a-8011-4e3a34f15fd1.png)

## Usage 

```dart
import 'package:icon_stack/icon_stack.dart';
```

```dart
IconStackWidget(
  IconStack(
    [
      PositionedIcon(
        icon: Icons.crop_original,
        size: 1.000,
        x: 0.000,
        y: 0.000,
        color: const Color(0xff2196f3)),
      PositionedIcon(
        icon: Icons.wb_sunny,
        size: 0.200,
        x: 0.325,
        y: 0.325,
        color: const Color(0xffffc107)),
    ],
  ),
),
```

## Additional information

You can use [Icon Stack Constructor](https://aygistov.github.io/icon_stack_constructor/) to create icon stacks
