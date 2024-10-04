import 'package:bloc/bloc.dart';

enum NavigationState {
  home,
  notification,
  redScreen,
  greenScreen,
}

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.home);

  void showHome() => emit(NavigationState.home);
  void showNotification() => emit(NavigationState.notification);
  void showRedScreen() => emit(NavigationState.redScreen);
  void showGreenScreen() => emit(NavigationState.greenScreen);
}
