import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uangku_app/classes/uang.dart';

class UangBloc extends Cubit<Uang>{
  Uang uang;
  UangBloc(this.uang) : super(uang);

  void pemasukkan(double uang){
    state.tambahUang(uang);
    emit(state);
  }

  void pengeluaran(double uang){
    state.kurangUang(uang);
    emit(state);
  }
}