import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/core.dart';
import '../../data/data.dart';

part 'menu_event.dart';
part 'menu_state.dart';
part 'menu_bloc.freezed.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final MenuRepository _menuRepository;

  MenuBloc(
    this._menuRepository,
  ) : super(const MenuState(
          getGroupMenus: OperationLoadingState<List<GroupMenu>>(loadingState: LoadingState.init),
          getMenuItems: OperationLoadingState<List<MenuItem>>(loadingState: LoadingState.init),
        )) {
    on<MenuEvent>(_onEvent);
  }

  StreamSubscription? _groupMenuStreamSubscription;
  StreamSubscription? _menuItemStreamSubscription;

  Future<void> _onEvent(MenuEvent event, Emitter<MenuState> emit) async {
    await event.when(
      getGroupMenus: () async {
        emit(state.copyWith(
          getGroupMenus: const OperationLoadingState(loadingState: LoadingState.loading),
        ));

        final stream = await _menuRepository.streamGroupMenus();

        await stream.fold(
          (failure) async {
            emit(state.copyWith(
                getGroupMenus: const OperationLoadingState<List<GroupMenu>>(
              loadingState: LoadingState.error,
              errMessage: 'Server Failure',
            )));
          },
          (result) async {
            _groupMenuStreamSubscription?.cancel();
            _groupMenuStreamSubscription = result.listen((gm) {
              add(MenuEvent.getGroupMenusUpdated(gm));
            });
          },
        );
      },
      getGroupMenusUpdated: (groupMenus) {
        debugPrint('${groupMenus.map((e) => e.name).toList()}');
        emit(state.copyWith(
          getGroupMenus: OperationLoadingState(
            data: groupMenus,
            loadingState: LoadingState.success,
          ),
        ));
      },
      getMenuItems: () async {
        emit(state.copyWith(
          getMenuItems: const OperationLoadingState(loadingState: LoadingState.loading),
        ));

        final stream = await _menuRepository.streamMenuItems();

        await stream.fold(
          (failure) async {
            emit(state.copyWith(
                getMenuItems: const OperationLoadingState<List<MenuItem>>(
              loadingState: LoadingState.error,
              errMessage: 'Server Failure',
            )));
          },
          (result) async {
            _menuItemStreamSubscription?.cancel();
            _menuItemStreamSubscription = result.listen((menuItems) {
              add(MenuEvent.getMenuItemsUpdated(menuItems));
            });
          },
        );
      },
      getMenuItemsUpdated: (menuItems) {
        emit(state.copyWith(
          getMenuItems: OperationLoadingState(
            data: menuItems,
            loadingState: LoadingState.success,
          ),
        ));
      },
    );
  }
}
