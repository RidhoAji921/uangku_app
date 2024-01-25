abstract class UangState{}

class Uang extends UangState{
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
}