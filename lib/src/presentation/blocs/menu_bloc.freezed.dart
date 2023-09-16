// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenuEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMenuItems,
    required TResult Function() getGroupMenus,
    required TResult Function(List<MenuItem> menuItems) getMenuItemsUpdated,
    required TResult Function(List<GroupMenu> groupMenus) getGroupMenusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMenuItems,
    TResult? Function()? getGroupMenus,
    TResult? Function(List<MenuItem> menuItems)? getMenuItemsUpdated,
    TResult? Function(List<GroupMenu> groupMenus)? getGroupMenusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMenuItems,
    TResult Function()? getGroupMenus,
    TResult Function(List<MenuItem> menuItems)? getMenuItemsUpdated,
    TResult Function(List<GroupMenu> groupMenus)? getGroupMenusUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMenuItemsEvent value) getMenuItems,
    required TResult Function(_GetGroupMenusEvent value) getGroupMenus,
    required TResult Function(_GetMenuItemsUpdatedEvent value)
        getMenuItemsUpdated,
    required TResult Function(_GetGroupMenusUpdatedEvent value)
        getGroupMenusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMenuItemsEvent value)? getMenuItems,
    TResult? Function(_GetGroupMenusEvent value)? getGroupMenus,
    TResult? Function(_GetMenuItemsUpdatedEvent value)? getMenuItemsUpdated,
    TResult? Function(_GetGroupMenusUpdatedEvent value)? getGroupMenusUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMenuItemsEvent value)? getMenuItems,
    TResult Function(_GetGroupMenusEvent value)? getGroupMenus,
    TResult Function(_GetMenuItemsUpdatedEvent value)? getMenuItemsUpdated,
    TResult Function(_GetGroupMenusUpdatedEvent value)? getGroupMenusUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res, MenuEvent>;
}

/// @nodoc
class _$MenuEventCopyWithImpl<$Res, $Val extends MenuEvent>
    implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetMenuItemsEventCopyWith<$Res> {
  factory _$$_GetMenuItemsEventCopyWith(_$_GetMenuItemsEvent value,
          $Res Function(_$_GetMenuItemsEvent) then) =
      __$$_GetMenuItemsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetMenuItemsEventCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$_GetMenuItemsEvent>
    implements _$$_GetMenuItemsEventCopyWith<$Res> {
  __$$_GetMenuItemsEventCopyWithImpl(
      _$_GetMenuItemsEvent _value, $Res Function(_$_GetMenuItemsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetMenuItemsEvent implements _GetMenuItemsEvent {
  const _$_GetMenuItemsEvent();

  @override
  String toString() {
    return 'MenuEvent.getMenuItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetMenuItemsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMenuItems,
    required TResult Function() getGroupMenus,
    required TResult Function(List<MenuItem> menuItems) getMenuItemsUpdated,
    required TResult Function(List<GroupMenu> groupMenus) getGroupMenusUpdated,
  }) {
    return getMenuItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMenuItems,
    TResult? Function()? getGroupMenus,
    TResult? Function(List<MenuItem> menuItems)? getMenuItemsUpdated,
    TResult? Function(List<GroupMenu> groupMenus)? getGroupMenusUpdated,
  }) {
    return getMenuItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMenuItems,
    TResult Function()? getGroupMenus,
    TResult Function(List<MenuItem> menuItems)? getMenuItemsUpdated,
    TResult Function(List<GroupMenu> groupMenus)? getGroupMenusUpdated,
    required TResult orElse(),
  }) {
    if (getMenuItems != null) {
      return getMenuItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMenuItemsEvent value) getMenuItems,
    required TResult Function(_GetGroupMenusEvent value) getGroupMenus,
    required TResult Function(_GetMenuItemsUpdatedEvent value)
        getMenuItemsUpdated,
    required TResult Function(_GetGroupMenusUpdatedEvent value)
        getGroupMenusUpdated,
  }) {
    return getMenuItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMenuItemsEvent value)? getMenuItems,
    TResult? Function(_GetGroupMenusEvent value)? getGroupMenus,
    TResult? Function(_GetMenuItemsUpdatedEvent value)? getMenuItemsUpdated,
    TResult? Function(_GetGroupMenusUpdatedEvent value)? getGroupMenusUpdated,
  }) {
    return getMenuItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMenuItemsEvent value)? getMenuItems,
    TResult Function(_GetGroupMenusEvent value)? getGroupMenus,
    TResult Function(_GetMenuItemsUpdatedEvent value)? getMenuItemsUpdated,
    TResult Function(_GetGroupMenusUpdatedEvent value)? getGroupMenusUpdated,
    required TResult orElse(),
  }) {
    if (getMenuItems != null) {
      return getMenuItems(this);
    }
    return orElse();
  }
}

abstract class _GetMenuItemsEvent implements MenuEvent {
  const factory _GetMenuItemsEvent() = _$_GetMenuItemsEvent;
}

/// @nodoc
abstract class _$$_GetGroupMenusEventCopyWith<$Res> {
  factory _$$_GetGroupMenusEventCopyWith(_$_GetGroupMenusEvent value,
          $Res Function(_$_GetGroupMenusEvent) then) =
      __$$_GetGroupMenusEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetGroupMenusEventCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$_GetGroupMenusEvent>
    implements _$$_GetGroupMenusEventCopyWith<$Res> {
  __$$_GetGroupMenusEventCopyWithImpl(
      _$_GetGroupMenusEvent _value, $Res Function(_$_GetGroupMenusEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetGroupMenusEvent implements _GetGroupMenusEvent {
  const _$_GetGroupMenusEvent();

  @override
  String toString() {
    return 'MenuEvent.getGroupMenus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetGroupMenusEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMenuItems,
    required TResult Function() getGroupMenus,
    required TResult Function(List<MenuItem> menuItems) getMenuItemsUpdated,
    required TResult Function(List<GroupMenu> groupMenus) getGroupMenusUpdated,
  }) {
    return getGroupMenus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMenuItems,
    TResult? Function()? getGroupMenus,
    TResult? Function(List<MenuItem> menuItems)? getMenuItemsUpdated,
    TResult? Function(List<GroupMenu> groupMenus)? getGroupMenusUpdated,
  }) {
    return getGroupMenus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMenuItems,
    TResult Function()? getGroupMenus,
    TResult Function(List<MenuItem> menuItems)? getMenuItemsUpdated,
    TResult Function(List<GroupMenu> groupMenus)? getGroupMenusUpdated,
    required TResult orElse(),
  }) {
    if (getGroupMenus != null) {
      return getGroupMenus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMenuItemsEvent value) getMenuItems,
    required TResult Function(_GetGroupMenusEvent value) getGroupMenus,
    required TResult Function(_GetMenuItemsUpdatedEvent value)
        getMenuItemsUpdated,
    required TResult Function(_GetGroupMenusUpdatedEvent value)
        getGroupMenusUpdated,
  }) {
    return getGroupMenus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMenuItemsEvent value)? getMenuItems,
    TResult? Function(_GetGroupMenusEvent value)? getGroupMenus,
    TResult? Function(_GetMenuItemsUpdatedEvent value)? getMenuItemsUpdated,
    TResult? Function(_GetGroupMenusUpdatedEvent value)? getGroupMenusUpdated,
  }) {
    return getGroupMenus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMenuItemsEvent value)? getMenuItems,
    TResult Function(_GetGroupMenusEvent value)? getGroupMenus,
    TResult Function(_GetMenuItemsUpdatedEvent value)? getMenuItemsUpdated,
    TResult Function(_GetGroupMenusUpdatedEvent value)? getGroupMenusUpdated,
    required TResult orElse(),
  }) {
    if (getGroupMenus != null) {
      return getGroupMenus(this);
    }
    return orElse();
  }
}

abstract class _GetGroupMenusEvent implements MenuEvent {
  const factory _GetGroupMenusEvent() = _$_GetGroupMenusEvent;
}

/// @nodoc
abstract class _$$_GetMenuItemsUpdatedEventCopyWith<$Res> {
  factory _$$_GetMenuItemsUpdatedEventCopyWith(
          _$_GetMenuItemsUpdatedEvent value,
          $Res Function(_$_GetMenuItemsUpdatedEvent) then) =
      __$$_GetMenuItemsUpdatedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MenuItem> menuItems});
}

/// @nodoc
class __$$_GetMenuItemsUpdatedEventCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$_GetMenuItemsUpdatedEvent>
    implements _$$_GetMenuItemsUpdatedEventCopyWith<$Res> {
  __$$_GetMenuItemsUpdatedEventCopyWithImpl(_$_GetMenuItemsUpdatedEvent _value,
      $Res Function(_$_GetMenuItemsUpdatedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuItems = null,
  }) {
    return _then(_$_GetMenuItemsUpdatedEvent(
      null == menuItems
          ? _value._menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
    ));
  }
}

/// @nodoc

class _$_GetMenuItemsUpdatedEvent implements _GetMenuItemsUpdatedEvent {
  const _$_GetMenuItemsUpdatedEvent(final List<MenuItem> menuItems)
      : _menuItems = menuItems;

  final List<MenuItem> _menuItems;
  @override
  List<MenuItem> get menuItems {
    if (_menuItems is EqualUnmodifiableListView) return _menuItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuItems);
  }

  @override
  String toString() {
    return 'MenuEvent.getMenuItemsUpdated(menuItems: $menuItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMenuItemsUpdatedEvent &&
            const DeepCollectionEquality()
                .equals(other._menuItems, _menuItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_menuItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMenuItemsUpdatedEventCopyWith<_$_GetMenuItemsUpdatedEvent>
      get copyWith => __$$_GetMenuItemsUpdatedEventCopyWithImpl<
          _$_GetMenuItemsUpdatedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMenuItems,
    required TResult Function() getGroupMenus,
    required TResult Function(List<MenuItem> menuItems) getMenuItemsUpdated,
    required TResult Function(List<GroupMenu> groupMenus) getGroupMenusUpdated,
  }) {
    return getMenuItemsUpdated(menuItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMenuItems,
    TResult? Function()? getGroupMenus,
    TResult? Function(List<MenuItem> menuItems)? getMenuItemsUpdated,
    TResult? Function(List<GroupMenu> groupMenus)? getGroupMenusUpdated,
  }) {
    return getMenuItemsUpdated?.call(menuItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMenuItems,
    TResult Function()? getGroupMenus,
    TResult Function(List<MenuItem> menuItems)? getMenuItemsUpdated,
    TResult Function(List<GroupMenu> groupMenus)? getGroupMenusUpdated,
    required TResult orElse(),
  }) {
    if (getMenuItemsUpdated != null) {
      return getMenuItemsUpdated(menuItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMenuItemsEvent value) getMenuItems,
    required TResult Function(_GetGroupMenusEvent value) getGroupMenus,
    required TResult Function(_GetMenuItemsUpdatedEvent value)
        getMenuItemsUpdated,
    required TResult Function(_GetGroupMenusUpdatedEvent value)
        getGroupMenusUpdated,
  }) {
    return getMenuItemsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMenuItemsEvent value)? getMenuItems,
    TResult? Function(_GetGroupMenusEvent value)? getGroupMenus,
    TResult? Function(_GetMenuItemsUpdatedEvent value)? getMenuItemsUpdated,
    TResult? Function(_GetGroupMenusUpdatedEvent value)? getGroupMenusUpdated,
  }) {
    return getMenuItemsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMenuItemsEvent value)? getMenuItems,
    TResult Function(_GetGroupMenusEvent value)? getGroupMenus,
    TResult Function(_GetMenuItemsUpdatedEvent value)? getMenuItemsUpdated,
    TResult Function(_GetGroupMenusUpdatedEvent value)? getGroupMenusUpdated,
    required TResult orElse(),
  }) {
    if (getMenuItemsUpdated != null) {
      return getMenuItemsUpdated(this);
    }
    return orElse();
  }
}

abstract class _GetMenuItemsUpdatedEvent implements MenuEvent {
  const factory _GetMenuItemsUpdatedEvent(final List<MenuItem> menuItems) =
      _$_GetMenuItemsUpdatedEvent;

  List<MenuItem> get menuItems;
  @JsonKey(ignore: true)
  _$$_GetMenuItemsUpdatedEventCopyWith<_$_GetMenuItemsUpdatedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetGroupMenusUpdatedEventCopyWith<$Res> {
  factory _$$_GetGroupMenusUpdatedEventCopyWith(
          _$_GetGroupMenusUpdatedEvent value,
          $Res Function(_$_GetGroupMenusUpdatedEvent) then) =
      __$$_GetGroupMenusUpdatedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GroupMenu> groupMenus});
}

/// @nodoc
class __$$_GetGroupMenusUpdatedEventCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$_GetGroupMenusUpdatedEvent>
    implements _$$_GetGroupMenusUpdatedEventCopyWith<$Res> {
  __$$_GetGroupMenusUpdatedEventCopyWithImpl(
      _$_GetGroupMenusUpdatedEvent _value,
      $Res Function(_$_GetGroupMenusUpdatedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupMenus = null,
  }) {
    return _then(_$_GetGroupMenusUpdatedEvent(
      null == groupMenus
          ? _value._groupMenus
          : groupMenus // ignore: cast_nullable_to_non_nullable
              as List<GroupMenu>,
    ));
  }
}

/// @nodoc

class _$_GetGroupMenusUpdatedEvent implements _GetGroupMenusUpdatedEvent {
  const _$_GetGroupMenusUpdatedEvent(final List<GroupMenu> groupMenus)
      : _groupMenus = groupMenus;

  final List<GroupMenu> _groupMenus;
  @override
  List<GroupMenu> get groupMenus {
    if (_groupMenus is EqualUnmodifiableListView) return _groupMenus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupMenus);
  }

  @override
  String toString() {
    return 'MenuEvent.getGroupMenusUpdated(groupMenus: $groupMenus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetGroupMenusUpdatedEvent &&
            const DeepCollectionEquality()
                .equals(other._groupMenus, _groupMenus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_groupMenus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetGroupMenusUpdatedEventCopyWith<_$_GetGroupMenusUpdatedEvent>
      get copyWith => __$$_GetGroupMenusUpdatedEventCopyWithImpl<
          _$_GetGroupMenusUpdatedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMenuItems,
    required TResult Function() getGroupMenus,
    required TResult Function(List<MenuItem> menuItems) getMenuItemsUpdated,
    required TResult Function(List<GroupMenu> groupMenus) getGroupMenusUpdated,
  }) {
    return getGroupMenusUpdated(groupMenus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMenuItems,
    TResult? Function()? getGroupMenus,
    TResult? Function(List<MenuItem> menuItems)? getMenuItemsUpdated,
    TResult? Function(List<GroupMenu> groupMenus)? getGroupMenusUpdated,
  }) {
    return getGroupMenusUpdated?.call(groupMenus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMenuItems,
    TResult Function()? getGroupMenus,
    TResult Function(List<MenuItem> menuItems)? getMenuItemsUpdated,
    TResult Function(List<GroupMenu> groupMenus)? getGroupMenusUpdated,
    required TResult orElse(),
  }) {
    if (getGroupMenusUpdated != null) {
      return getGroupMenusUpdated(groupMenus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMenuItemsEvent value) getMenuItems,
    required TResult Function(_GetGroupMenusEvent value) getGroupMenus,
    required TResult Function(_GetMenuItemsUpdatedEvent value)
        getMenuItemsUpdated,
    required TResult Function(_GetGroupMenusUpdatedEvent value)
        getGroupMenusUpdated,
  }) {
    return getGroupMenusUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMenuItemsEvent value)? getMenuItems,
    TResult? Function(_GetGroupMenusEvent value)? getGroupMenus,
    TResult? Function(_GetMenuItemsUpdatedEvent value)? getMenuItemsUpdated,
    TResult? Function(_GetGroupMenusUpdatedEvent value)? getGroupMenusUpdated,
  }) {
    return getGroupMenusUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMenuItemsEvent value)? getMenuItems,
    TResult Function(_GetGroupMenusEvent value)? getGroupMenus,
    TResult Function(_GetMenuItemsUpdatedEvent value)? getMenuItemsUpdated,
    TResult Function(_GetGroupMenusUpdatedEvent value)? getGroupMenusUpdated,
    required TResult orElse(),
  }) {
    if (getGroupMenusUpdated != null) {
      return getGroupMenusUpdated(this);
    }
    return orElse();
  }
}

abstract class _GetGroupMenusUpdatedEvent implements MenuEvent {
  const factory _GetGroupMenusUpdatedEvent(final List<GroupMenu> groupMenus) =
      _$_GetGroupMenusUpdatedEvent;

  List<GroupMenu> get groupMenus;
  @JsonKey(ignore: true)
  _$$_GetGroupMenusUpdatedEventCopyWith<_$_GetGroupMenusUpdatedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuState {
  OperationLoadingState<List<MenuItem>> get getMenuItems =>
      throw _privateConstructorUsedError;
  OperationLoadingState<List<GroupMenu>> get getGroupMenus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuStateCopyWith<MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res, MenuState>;
  @useResult
  $Res call(
      {OperationLoadingState<List<MenuItem>> getMenuItems,
      OperationLoadingState<List<GroupMenu>> getGroupMenus});
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res, $Val extends MenuState>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getMenuItems = null,
    Object? getGroupMenus = null,
  }) {
    return _then(_value.copyWith(
      getMenuItems: null == getMenuItems
          ? _value.getMenuItems
          : getMenuItems // ignore: cast_nullable_to_non_nullable
              as OperationLoadingState<List<MenuItem>>,
      getGroupMenus: null == getGroupMenus
          ? _value.getGroupMenus
          : getGroupMenus // ignore: cast_nullable_to_non_nullable
              as OperationLoadingState<List<GroupMenu>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MenuStateCopyWith<$Res> implements $MenuStateCopyWith<$Res> {
  factory _$$_MenuStateCopyWith(
          _$_MenuState value, $Res Function(_$_MenuState) then) =
      __$$_MenuStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OperationLoadingState<List<MenuItem>> getMenuItems,
      OperationLoadingState<List<GroupMenu>> getGroupMenus});
}

/// @nodoc
class __$$_MenuStateCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$_MenuState>
    implements _$$_MenuStateCopyWith<$Res> {
  __$$_MenuStateCopyWithImpl(
      _$_MenuState _value, $Res Function(_$_MenuState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getMenuItems = null,
    Object? getGroupMenus = null,
  }) {
    return _then(_$_MenuState(
      getMenuItems: null == getMenuItems
          ? _value.getMenuItems
          : getMenuItems // ignore: cast_nullable_to_non_nullable
              as OperationLoadingState<List<MenuItem>>,
      getGroupMenus: null == getGroupMenus
          ? _value.getGroupMenus
          : getGroupMenus // ignore: cast_nullable_to_non_nullable
              as OperationLoadingState<List<GroupMenu>>,
    ));
  }
}

/// @nodoc

class _$_MenuState implements _MenuState {
  const _$_MenuState({required this.getMenuItems, required this.getGroupMenus});

  @override
  final OperationLoadingState<List<MenuItem>> getMenuItems;
  @override
  final OperationLoadingState<List<GroupMenu>> getGroupMenus;

  @override
  String toString() {
    return 'MenuState(getMenuItems: $getMenuItems, getGroupMenus: $getGroupMenus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuState &&
            (identical(other.getMenuItems, getMenuItems) ||
                other.getMenuItems == getMenuItems) &&
            (identical(other.getGroupMenus, getGroupMenus) ||
                other.getGroupMenus == getGroupMenus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getMenuItems, getGroupMenus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuStateCopyWith<_$_MenuState> get copyWith =>
      __$$_MenuStateCopyWithImpl<_$_MenuState>(this, _$identity);
}

abstract class _MenuState implements MenuState {
  const factory _MenuState(
      {required final OperationLoadingState<List<MenuItem>> getMenuItems,
      required final OperationLoadingState<List<GroupMenu>>
          getGroupMenus}) = _$_MenuState;

  @override
  OperationLoadingState<List<MenuItem>> get getMenuItems;
  @override
  OperationLoadingState<List<GroupMenu>> get getGroupMenus;
  @override
  @JsonKey(ignore: true)
  _$$_MenuStateCopyWith<_$_MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
