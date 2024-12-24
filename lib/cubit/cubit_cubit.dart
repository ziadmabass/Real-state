import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'cubit_state.dart';

class CubitCubit extends Cubit<CubitState> {
  CubitCubit() : super(CubitInitial());
  static CubitCubit get(context) => BlocProvider.of(context);

  bool isDark = true;

  void changeMode() {
    isDark = !isDark;
    emit(ChangeThameMode());
  }
}


