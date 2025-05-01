import 'package:real_state/widgets/navbar/bloc/navbar_items.dart';

abstract class NavbarState {
  const NavbarState();
}

final class NavbarInitial extends NavbarState {
  const NavbarInitial({
    this.selectedItem = NavbarItems.home,
  });

  final NavbarItems selectedItem;
}
