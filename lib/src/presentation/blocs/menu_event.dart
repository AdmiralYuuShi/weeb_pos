part of 'menu_bloc.dart';

@freezed
class MenuEvent with _$MenuEvent {
  const factory MenuEvent.getMenuItems() = _GetMenuItemsEvent;
  const factory MenuEvent.getGroupMenus() = _GetGroupMenusEvent;
  const factory MenuEvent.getMenuItemsUpdated(List<MenuItem> menuItems) = _GetMenuItemsUpdatedEvent;
  const factory MenuEvent.getGroupMenusUpdated(List<GroupMenu> groupMenus) = _GetGroupMenusUpdatedEvent;
}
