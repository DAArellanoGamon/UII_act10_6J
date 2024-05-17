import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class TabProveedor extends StatelessWidget {
  final String nombre;
  final String transporte;
  final String nombre_empresa;
  final String telefono;
  final String categoria;
  final String calidad;

  TabProveedor(this.nombre, this.transporte, this.nombre_empresa, this.telefono,
      this.categoria, this.calidad,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xfffffbfe),
        title: const Text(
          "Tabla Proveedor",
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
      DataColumn(label: Text("nombre")),
      DataColumn(label: Text(nombre)),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("transporte")),
        DataCell(Text(transporte)),
      ]),
      DataRow(cells: [
        DataCell(Text("nombre_empresa")),
        DataCell(Text(nombre_empresa)),
      ]),
      DataRow(cells: [
        DataCell(Text("telefono")),
        DataCell(Text(telefono)),
      ]),
      DataRow(cells: [
        DataCell(Text("categoria")),
        DataCell(Text(categoria)),
      ]),
      DataRow(cells: [
        DataCell(Text("calidad")),
        DataCell(Text(calidad)),
      ]),
    ];
  }
}
