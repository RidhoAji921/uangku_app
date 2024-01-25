import 'package:flutter_bloc/flutter_bloc.dart';

class DarkTheme extends Cubit<bool>{
  DarkTheme() : super(false);

  void changeTheme(){
    emit(!state);
  }
}