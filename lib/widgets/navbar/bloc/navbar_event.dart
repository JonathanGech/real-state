import 'package:real_state/widgets/navbar/bloc/navbar_items.dart';

abstract class NavbarEvent {
  const NavbarEvent();
}

class NavbarInitialEvent extends NavbarEvent {
  final NavbarItems selectedItem;
  const NavbarInitialEvent({required this.selectedItem});
}
