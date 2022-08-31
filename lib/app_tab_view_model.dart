import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'app_tab_view_model.freezed.dart';

final appTabViewModelProvider =
    StateNotifierProvider<AppTabViewModel, AppTabState>(
        (ref) => AppTabViewModel());

@freezed
class AppTabState with _$AppTabState {
  factory AppTabState({@Default(0) int currentIndex}) = _AppTabState;
}

class AppTabViewModel extends StateNotifier<AppTabState> {
  AppTabViewModel() : super(AppTabState());

  void changeCurrentIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }
}
