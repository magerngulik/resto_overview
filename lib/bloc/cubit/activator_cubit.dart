import 'package:bloc/bloc.dart';

class ActivatorCubit extends Cubit<bool> {
  ActivatorCubit() : super(true);

  chageState() {
    emit(!state);
  }
}
