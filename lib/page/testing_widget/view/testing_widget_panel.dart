// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "History Transaction",
              style: GoogleFonts.montserrat(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: itemDataT.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = itemDataT[index];
                  return ExpansionPanelList(
                    animationDuration: const Duration(milliseconds: 1000),
                    dividerColor: Colors.red,
                    elevation: 1,
                    children: [
                      ExpansionPanel(
                        body: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children:
                                    List.generate(item.order.length, (index) {
                                  var detailItem = item.order[index];
                                  return Row(
                                    children: [
                                      Text(
                                        "Name:${detailItem.name}",
                                        style: const TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        "${detailItem.price}",
                                        style: const TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        "${detailItem.qyt}",
                                        style: const TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Container(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "${item.createAt}",
                              style: const TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                              ),
                            ),
                          );
                        },
                        isExpanded: item.expanded!,
                      )
                    ],
                    expansionCallback: (int item, bool status) {
                      setState(() {
                        itemDataT[index].expanded = !itemDataT[index].expanded!;
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<ItemTrasaction> itemDataT = <ItemTrasaction>[
  ItemTrasaction(
      expanded: false,
      id: "1",
      createAt: DateTime.now(),
      order: [
        MenuModel(id: "1", name: "Capuchino", price: 2000, qyt: 3),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
      ],
      total: 60000),
  ItemTrasaction(
      expanded: false,
      id: "1",
      createAt: DateTime.now(),
      order: [
        MenuModel(id: "1", name: "Capuchino", price: 2000, qyt: 3),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
      ],
      total: 60000),
  ItemTrasaction(
      expanded: false,
      id: "1",
      createAt: DateTime.now(),
      order: [
        MenuModel(id: "1", name: "Capuchino", price: 2000, qyt: 3),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
        MenuModel(id: "2", name: "Latte", price: 30000, qyt: 1),
      ],
      total: 60000),
];

class ItemTrasaction {
  bool? expanded;
  String id;
  DateTime createAt;
  List<MenuModel> order;
  int total;
  ItemTrasaction({
    this.expanded,
    required this.id,
    required this.createAt,
    required this.order,
    required this.total,
  });
}

class MenuModel {
  String id;
  String name;
  int price;
  int qyt;
  MenuModel({
    required this.id,
    required this.name,
    required this.price,
    required this.qyt,
  });
}
