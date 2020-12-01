library context_holder;

import 'package:flutter/widgets.dart';

/**
 * Created by GP
 * 2020/12/01.
 * */

/// Build context holder.
class ContextHolder {
  /// get current context.
  static get currentContext {
    return key.currentContext;
  }

  /// get current state.
  static get currentState {
    return key.currentState;
  }

  /// get current widget.
  static get currentWidget {
    return key.currentWidget;
  }

  /// get current overlay.
  static get currentOverlay {
    return key.currentState.overlay;
  }

  /// root app navigator key.
  /// set this key to your root app's navigatorKey.
  static final key = new GlobalKey<NavigatorState>();
}
