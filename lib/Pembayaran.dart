import 'package:flutter/material.dart';
import 'package:uasprojectsemester4/cetakStruk.dart';
import 'convert.dart';
import 'input.dart';
import 'result.dart';
import 'total.dart';

class Pembayaran extends StatefulWidget {
  static String tag = 'pembayaran-page';
  @override
  _PembayaranState createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  TextEditingController etInput = new TextEditingController();

  double _inputUser = 0;
  String _newValue;
  double _result = 0;
  double _total = 0;
  double harga = 50000;

  //membuat list
  var listItem = {
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
  };

  //membuat variable bertipe List<string>
  // ignore: deprecated_member_use
  List<String> listViewItem = List<String>();

  void _kembalian() {
    setState(() {
      _inputUser = double.parse(etInput.text);
      if (_newValue == "1")
        _result = _inputUser - (harga * 1);
      else if (_newValue == "2")
        _result = _inputUser - (harga * 2);
      else if (_newValue == "3")
        _result = _inputUser - (harga * 3);
      else if (_newValue == "4")
        _result = _inputUser - (harga * 4);
      else if (_newValue == "5")
        _result = _inputUser - (harga * 5);
      else if (_newValue == "6")
        _result = _inputUser - (harga * 6);
      else if (_newValue == "7")
        _result = _inputUser - (harga * 7);
      else if (_newValue == "8")
        _result = _inputUser - (harga * 8);
      else if (_newValue == "9")
        _result = _inputUser - (harga * 9);
      else if (_newValue == "10") _result = _inputUser - (harga * 10);
    });
  }

  void _totalPembayaran() {
    setState(() {
      //_inputUser = double.parse(etInput.text);
      if (_newValue == "1")
        _total = harga * 1;
      else if (_newValue == "2")
        _total = harga * 2;
      else if (_newValue == "3")
        _total = harga * 3;
      else if (_newValue == "4")
        _total = harga * 4;
      else if (_newValue == "5")
        _total = harga * 5;
      else if (_newValue == "6")
        _total = harga * 6;
      else if (_newValue == "7")
        _total = harga * 7;
      else if (_newValue == "8")
        _total = harga * 8;
      else if (_newValue == "9")
        _total = harga * 9;
      else if (_newValue == "10") _total = harga * 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            //backgroundColor: Colors.lightGreenAccent,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              //background color keseluruhan
              backgroundColor: Colors.brown,
              title: Text("PEMBAYARAN"),
              centerTitle: true,
            ),
            body: new Stack(children: <Widget>[
              Container(
                margin: EdgeInsets.all(8),
                child: Column(
                  children: [
                    //menambahkan gambar
                    // Image.asset(
                    //   "images/metrik.jpg",
                    //   width: 200,
                    // ),
                    Divider(),
                    Text(
                      "Rp. 50.000/item",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //untuk mengambil imputan
                    Input(etInput: etInput),
                    //untuk menampilkan pilihan / tujuan yg akan di konvert
                    buildDropdownButton(),
                    //untuk menampilkan pilihan / tujuan yg akan di konvert
                    Divider(),
                    Total(
                      total: _total,
                    ),
                    Divider(),
                    Convert(
                      konvertHandler: _totalPembayaran,
                    ),
                    Result(
                      result: _result,
                    ),
                    //untuk memanggil perhitungan rumus
                    Convert(
                      konvertHandler: _kembalian,
                    ),
                    Divider(),
                    Divider(),
                    Container(
                      width: double.infinity,
                      height: 50,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.brown,
                        child: Text(
                          "CETAK STRUK PEMBELIAN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed(StrukPage.tag);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ])));
  }

  DropdownButton<String> buildDropdownButton() {
    return DropdownButton<String>(
      items: listItem.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      // isi value dengan variabel _newValue.
      value: _newValue,
      //digunakan agar setelah memilih satuan tidak perlu mengklik konversi
      onChanged: dropdownOnChanged,
    );
  } //method dropdownOnChanged pada parameter value untuk mengubah pilihan pada dropdown.

  void dropdownOnChanged(String changeValue) {
    _newValue = changeValue;
    _kembalian();
    _totalPembayaran();
  }
}
