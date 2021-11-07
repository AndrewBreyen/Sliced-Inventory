import 'package:flutter/material.dart';
import 'package:sliced_inventory/nav_bar.dart';

class ViewEditScreen extends StatelessWidget {
  const ViewEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("View Edit"),
          centerTitle: true,
        ),
        body: DefaultTabController(
          length: 8,
          child: Scaffold(
            appBar: AppBar(
              actions: const <Widget>[],
              title: const TabBar(
                tabs: [
                  Tab(text: "Freezer"),
                  Tab(text: "Back Cooler\n& Dry Storage"),
                  Tab(text: "Kitchen\nCooler"),
                  Tab(text: "Salad Cooler"),
                  Tab(text: "Dry Storage"),
                  Tab(text: "Spices"),
                  Tab(text: "Paper\nProducts"),
                  Tab(text: "Chemicals\nand Cleaning"),
                ],
                indicatorColor: Colors.white,
              ),
            ),
            body: const TabBarView(children: [
              FreezerTab(),
              BackCoolerDryStorageTab(),
              KitchenCoolerTab(),
              SaladCoolerTab(),
              DryStorageTab(),
              SpicesTab(),
              PaperProductsTab(),
              ChemicalsCleaningTab(),
            ]),
          ),
        ));
  }


}

class FreezerTab extends StatelessWidget {
  const FreezerTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const [
      DataColumn(label: Text('FreezerC1')),
      DataColumn(label: Text('FreezerC2')),
      DataColumn(label: Text('FreezerC3')),
    ], rows: const <DataRow>[
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
    ]);
  }
}

class BackCoolerDryStorageTab extends StatelessWidget {
  const BackCoolerDryStorageTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const [
      DataColumn(label: Text('BackCoolerDryStorageC1')),
      DataColumn(label: Text('BackCoolerDryStorageC2')),
      DataColumn(label: Text('BackCoolerDryStorageC3')),
    ], rows: const <DataRow>[
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
    ]);
  }
}

class KitchenCoolerTab extends StatelessWidget {
  const KitchenCoolerTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const [
      DataColumn(label: Text('KitchenCoolerC1')),
      DataColumn(label: Text('KitchenCoolerC2')),
      DataColumn(label: Text('KitchenCoolerC3')),
    ], rows: const <DataRow>[
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
    ]);
  }
}

class SaladCoolerTab extends StatelessWidget {
  const SaladCoolerTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const [
      DataColumn(label: Text('SaladCoolerC1')),
      DataColumn(label: Text('SaladCoolerC2')),
      DataColumn(label: Text('SaladCoolerC3')),
    ], rows: const <DataRow>[
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
    ]);
  }
}

class DryStorageTab extends StatelessWidget {
  const DryStorageTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const [
      DataColumn(label: Text('DryStorageC1')),
      DataColumn(label: Text('DryStorageC2')),
      DataColumn(label: Text('DryStorageC3')),
    ], rows: const <DataRow>[
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
    ]);
  }
}

class SpicesTab extends StatelessWidget {
  const SpicesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const [
      DataColumn(label: Text('SpicesC1')),
      DataColumn(label: Text('SpicesC2')),
      DataColumn(label: Text('SpicesC3')),
    ], rows: const <DataRow>[
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
    ]);
  }
}

class PaperProductsTab extends StatelessWidget {
  const PaperProductsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const [
      DataColumn(label: Text('PaperProductsC1')),
      DataColumn(label: Text('PaperProductsC2')),
      DataColumn(label: Text('PaperProductsC3')),
    ], rows: const <DataRow>[
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
    ]);
  }
}

class ChemicalsCleaningTab extends StatelessWidget {
  const ChemicalsCleaningTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const [
      DataColumn(label: Text('ChemicalsCleaningC1')),
      DataColumn(label: Text('ChemicalsCleaningC2')),
      DataColumn(label: Text('ChemicalsCleaningC3')),
    ], rows: const <DataRow>[
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text('R1C1')),
          DataCell(Text('R1C2')),
          DataCell(Text('R1C3')),
        ],
      ),
    ]);
  }
}