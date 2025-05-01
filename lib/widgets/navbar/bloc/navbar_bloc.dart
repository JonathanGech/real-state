import 'package:bloc/bloc.dart';
import 'package:real_state/widgets/navbar/bloc/navbar_event.dart';
import 'package:real_state/widgets/navbar/bloc/navbar_state.dart';

class NavbarBloc extends Bloc<NavbarEvent, NavbarState> {
  NavbarBloc() : super(const NavbarInitial()) {
    on<NavbarInitialEvent>((event, emit) {
      emit(NavbarInitial(selectedItem: event.selectedItem));
    });
  }
}
