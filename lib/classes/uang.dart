import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Uang extends Equatable{
  Uang({required this.uang, required this.pemasukan, required this.pengeluaran});

  double uang = 0;
  double pengeluaran = 0;
  double pemasukan = 0;
  bool isNegative = false;

  double abs(){
    return 0;
  }

  double getUang(){
    return uang;
  }

  double getPemasukan(){
    return pemasukan;
  }

  double getPengeluaran(){
    return pengeluaran;
  }

  void tambahUang(double uang){
    this.uang = this.uang + uang;
    pemasukan = pemasukan + uang;
  }

  void kurangUang(double uang){
    this.uang = this.uang - uang;
    pengeluaran = pengeluaran + uang;
  }

  @override
  List<Object?> get props => [this.uang, this.pengeluaran, this.pemasukan];
}