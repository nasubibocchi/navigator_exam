// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_tab_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppTabState {
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppTabStateCopyWith<AppTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppTabStateCopyWith<$Res> {
  factory $AppTabStateCopyWith(
          AppTabState value, $Res Function(AppTabState) then) =
      _$AppTabStateCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

/// @nodoc
class _$AppTabStateCopyWithImpl<$Res> implements $AppTabStateCopyWith<$Res> {
  _$AppTabStateCopyWithImpl(this._value, this._then);

  final AppTabState _value;
  // ignore: unused_field
  final $Res Function(AppTabState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_AppTabStateCopyWith<$Res>
    implements $AppTabStateCopyWith<$Res> {
  factory _$$_AppTabStateCopyWith(
          _$_AppTabState value, $Res Function(_$_AppTabState) then) =
      __$$_AppTabStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex});
}

/// @nodoc
class __$$_AppTabStateCopyWithImpl<$Res> extends _$AppTabStateCopyWithImpl<$Res>
    implements _$$_AppTabStateCopyWith<$Res> {
  __$$_AppTabStateCopyWithImpl(
      _$_AppTabState _value, $Res Function(_$_AppTabState) _then)
      : super(_value, (v) => _then(v as _$_AppTabState));

  @override
  _$_AppTabState get _value => super._value as _$_AppTabState;

  @override
  $Res call({
    Object? currentIndex = freezed,
  }) {
    return _then(_$_AppTabState(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AppTabState implements _AppTabState {
  _$_AppTabState({this.currentIndex = 0});

  @override
  @JsonKey()
  final int currentIndex;

  @override
  String toString() {
    return 'AppTabState(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppTabState &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentIndex));

  @JsonKey(ignore: true)
  @override
  _$$_AppTabStateCopyWith<_$_AppTabState> get copyWith =>
      __$$_AppTabStateCopyWithImpl<_$_AppTabState>(this, _$identity);
}

abstract class _AppTabState implements AppTabState {
  factory _AppTabState({final int currentIndex}) = _$_AppTabState;

  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$_AppTabStateCopyWith<_$_AppTabState> get copyWith =>
      throw _privateConstructorUsedError;
}
