import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class HomeVendorPage extends StatefulWidget {
  const HomeVendorPage({Key? key}) : super(key: key);

  @override
  State<HomeVendorPage> createState() => _HomeVendorPage();
}

class _HomeVendorPage extends State<HomeVendorPage> {
  List size = ["Small", "Normal", "Large"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      const SizedBox(
        height: 40.0,
      ),
      Text(
        "Coffe Menu",
        style: GoogleFonts.montserrat(
          textStyle: Theme.of(context).textTheme.headline4,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      Column(
        children: List.generate(4, (index) {
          return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              child: SizedBox(
                height: 320,
                width: 400,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          height: 200.0,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                10.0,
                              ),
                            ),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://i.ibb.co/3pPYd14/freeban.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Container(
                            height: 210.0,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Product Title",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.montserrat(
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Rp. 20.000",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.montserrat(
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      color: Colors.orange,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 80,
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.montserrat(
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Wrap(
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  spacing: 0.1,
                                  children: List.generate(
                                    size.length,
                                    (index) {
                                      var item = size[index];
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0, vertical: 5),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1.0,
                                              color: Colors.black,
                                            ),
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(
                                                32.0,
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          height: 50.0,
                          width: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.remove_circle_outline,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              const Text(
                                "0",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add_circle_outline,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Container(
                            height: 50.0,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(32), // <-- Radius
                                ),
                              ),
                              onPressed: () {},
                              child: const Text("Add to cart"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ));
        }),
      ),
    ]));
  }
}
