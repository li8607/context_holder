library context_holder;

import 'package:flutter/widgets.dart';

/**
 * Created by GP
 * 2020/12/01.
 * */

/// Build context holder.
class ContextHolder {
  /// get current context.
  static BuildContext get currentContext {
    return key.currentContext;
  }

  /// get current state.
  static get currentState {
    return key.currentState;
  }

  /// get current widget.
  static Widget get currentWidget {
    return key.currentWidget;
  }

  /// get current overlay.
  static OverlayState get currentOverlay {
    return key.currentState.overlay;
  }

  /// root app navigator key.
  /// set this key to your root app's navigatorKey.
  static final key = new GlobalKey<NavigatorState>();
}
