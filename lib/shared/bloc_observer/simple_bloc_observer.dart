import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class SimpleBlocObserver implements BlocObserver {
  const SimpleBlocObserver();

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('create = $bloc');
    // super.onCreate(bloc);
    // print('onCreate -- bloc: ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // super.onEvent(bloc, event);
    // print('onEvent -- bloc: ${bloc.runtimeType}, event: $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change = $change');
    // super.onChange(bloc, change);
    // print('onChange -- bloc: ${bloc.runtimeType}, change: $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // super.onTransition(bloc, transition);
    // print('onTransition -- bloc: ${bloc.runtimeType}, transition: $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // print('onError -- bloc: ${bloc.runtimeType}, error: $error');
    // super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('close = $bloc');
    // super.onClose(bloc);
    // print('onClose -- bloc: ${bloc.runtimeType}');
  }
}