import 'package:bloc/bloc.dart';

class ThemeCubit extends Cubit<bool> {
  ThemeCubit() : super(true);

  chageState() {
    emit(!state);
  }
}
