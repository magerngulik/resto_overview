// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryUserPage extends StatefulWidget {
  const HistoryUserPage({Key? key}) : super(key: key);

  @override
  State<HistoryUserPage> createState() => _HistoryUserPageState();
}

class _HistoryUserPageState extends State<HistoryUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          "History Trasaction",
          style: GoogleFonts.montserrat(
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          const SizedBox(
            height: 30.0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Card(
                  child: ListTile(
                    title: Text("20-05-2020"),
                    subtitle: Text("Rp.20.000"),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
