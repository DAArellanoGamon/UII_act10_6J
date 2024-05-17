import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class TabProductos extends StatelessWidget {
  final String id_Producto;
  final String nombre;
  final String precio_pro;
  final String categoria;
  final String precio;
  final String marca;

  TabProductos(this.id_Producto, this.nombre, this.precio_pro, this.categoria,
      this.precio, this.marca,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xfffffbfe),
        title: const Text(
          "Tabla Productos",
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: Container(
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, count) {
              return _createDataTable();
            }),
      ),
    );
  }

  //
  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text("Id_Producto")),
      DataColumn(label: Text(id_Producto)),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("Nombre")),
        DataCell(Text(nombre)),
      ]),
      DataRow(cells: [
        DataCell(Text("precio_pro")),
        DataCell(Text(precio_pro)),
      ]),
      DataRow(cells: [
        DataCell(Text("categoria")),
        DataCell(Text(categoria)),
      ]),
      DataRow(cells: [
        DataCell(Text("Precio")),
        DataCell(Text(precio)),
      ]),
      DataRow(cells: [
        DataCell(Text("Marca")),
        DataCell(Text(marca)),
      ]),
    ];
  }
}
