import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/produk_form.dart';
import 'package:flutter_application_1/ui/produk_detail.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Produk"),
        actions: [
          GestureDetector(
              //menampilkan icon +
              child: const Icon(Icons.add),
              onTap: () async {
                // berpindah kehalaman produkform
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProdukForm()));
              })
        ],
      ),
      body: ListView(
        children: const [
          ItemProduk(
            kodeProduk: "A001",
            namaProduk: "TV",
            harga: 1500000,
          ),
          ItemProduk(
            kodeProduk: "A002",
            namaProduk: "Kulkas",
            harga: 5000000,
          ),
          ItemProduk(
            kodeProduk: "A003",
            namaProduk: "Mesin Cuci",
            harga: 1500000,
          ),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({Key? key, this.kodeProduk, this.namaProduk, this.harga})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProdukDetail(
                      kodeProduk: kodeProduk,
                      namaProduk: namaProduk,
                      harga: harga,
                    )));
      },
    );
  }
}