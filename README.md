# Build Context Holder for Flutter [![Pub version](https://img.shields.io/pub/v/context_holder.svg)](https://pub.dev/packages/context_holder)

A flutter build context holder, init once, use everywhere.

### 1. Add dependency

```dart
dependencies:
  context_holder: ^0.0.3
```

### 2. Import context holder

```dart
import 'package:context_holder/context_holder.dart';
```

### 3. Init context holder

Set your root app's navigatorKey with ContextHolder.key

For MaterialApp
```dart
void main() {
  runApp(
    MaterialApp(
      /// must set the navigatorKey!!!!!!
      navigatorKey: ContextHolder.key,
      home: Scaffold(),
    ),
  );
}
```

For CupertinoApp
```dart
void main() {
  runApp(
    CupertinoApp(
      /// must set the navigatorKey!!!!!!
      navigatorKey: ContextHolder.key,
      home: Scaffold(),
    ),
  );
}
```

### 4. Now you can use it everywhere!

Get the current build context.
```dart
ContextHolder.currentContext
```

Get the current state.
```dart
ContextHolder.currentState
```

Get the current widget.
```dart
ContextHolder.currentWidget
```

Get the current overlay.
```dart
ContextHolder.currentOverlay
```