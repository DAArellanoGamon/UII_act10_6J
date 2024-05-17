import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class TabVentas extends StatelessWidget {
  final String id_cliente;
  final String no_factura;
  final String precio;
  final String fecha;
  final String cantidad;
  final String total;
  final String id_producto;
  final String id_empleado;

  TabVentas(this.id_cliente, this.no_factura, this.precio, this.fecha,
      this.cantidad, this.total, this.id_empleado, this.id_producto,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xfffffbfe),
        title: const Text(
          "Tabla Ventas",
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
      DataColumn(label: Text("id_cliente")),
      DataColumn(label: Text(id_cliente)),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("no_factura")),
        DataCell(Text(no_factura)),
      ]),
      DataRow(cells: [
        DataCell(Text("precio")),
        DataCell(Text(precio)),
      ]),
      DataRow(cells: [
        DataCell(Text("fecha")),
        DataCell(Text(fecha)),
      ]),
      DataRow(cells: [
        DataCell(Text("cantidad")),
        DataCell(Text(cantidad)),
      ]),
      DataRow(cells: [
        DataCell(Text("total")),
        DataCell(Text(total)),
      ]),
      DataRow(cells: [
        DataCell(Text("id_producto")),
        DataCell(Text(id_producto)),
      ]),
      DataRow(cells: [
        DataCell(Text("id_empleado")),
        DataCell(Text(id_empleado)),
      ]),
    ];
  }
}
