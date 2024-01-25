import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:uangku_app/classes/uang.dart';

// class UangBloc extends Cubit<Uang>{
//   Uang uang;
//   UangBloc(this.uang) : super(uang);

//   void pemasukkan(double uang){
//     state.tambahUang(uang);
//     emit(state);
//   }

//   void pengeluaran(double uang){
//     state.kurangUang(uang);
//     emit(state);
//   }
// }

class UangBloc extends Cubit<double> {
  UangBloc(double uang) : super(uang);

  void tambahUang(double uang) {
    emit(state+uang);
  }
}

class PemasukkanBloc extends Cubit<double> {
  PemasukkanBloc(double uang) : super(uang);

  void pemasukkan(double uang) {
    emit(state+uang);
  }
}

class PengeluaranBloc extends Cubit<double> {
  PengeluaranBloc(double uang) : super(uang);

  void pengeluaran(double uang) {
    emit(state+uang);
  }
}