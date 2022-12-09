// ignore_for_file: unused_field

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constant/curd.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());
  static HomeCubit get(context) => BlocProvider.of(context);

  final Curd _curd = Curd();
}
