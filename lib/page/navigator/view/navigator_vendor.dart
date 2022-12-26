import 'package:belajar_bloc_arsitectur/bloc/cubit/activator_cubit.dart';
import 'package:belajar_bloc_arsitectur/bloc/cubit/theme_cubit.dart';
import 'package:belajar_bloc_arsitectur/page/cart/view/cart_page.dart';
import 'package:belajar_bloc_arsitectur/page/home_vendor/view/home_vendor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigatorVendor extends StatefulWidget {
  const NavigatorVendor({super.key});

  @override
  State<NavigatorVendor> createState() => _NavigatorStateVendor();
}

class _NavigatorStateVendor extends State<NavigatorVendor> {
  List item = [
    {"id": 0, "icon": FontAwesomeIcons.house},
    {"id": 1, "icon": FontAwesomeIcons.cartShopping},
    {"id": 2, "icon": FontAwesomeIcons.history},
    {"id": 3, "icon": FontAwesomeIcons.fileCircleCheck},
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    ActivatorCubit activatorC = context.read<ActivatorCubit>();
    ThemeCubit themeC = context.read<ThemeCubit>();

    return SafeArea(
      child: BlocBuilder<ActivatorCubit, bool>(
        bloc: activatorC,
        builder: (context, state) {
          return Scaffold(
            body: Row(
              children: [
                Visibility(
                  visible: state,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Image.asset(
                          "assets/image/logo.png",
                          width: 55.0,
                          height: 64.0,
                          fit: BoxFit.fitWidth,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                "Coffee Santuy",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: List.generate(item.length, (index) {
                            var items = item[index];

                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        selected = items['id'];
                                        setState(() {});
                                      },
                                      icon: FaIcon(
                                        items['icon'],
                                        size: 24.0,
                                        color: (selected == items['id'])
                                            ? Colors.orange
                                            : Colors.grey,
                                      ),
                                    ),
                                    const Spacer(),
                                    (selected != items['id'])
                                        ? Container()
                                        : Container(
                                            height: 40.0,
                                            width: 2,
                                            decoration: BoxDecoration(
                                              color: (selected == items['id'])
                                                  ? Colors.orange
                                                  : Colors.grey,
                                            ),
                                          ),
                                  ]),
                            );
                          }),
                        ),
                        const Spacer(),
                        BlocBuilder<ThemeCubit, bool>(
                          builder: (context, state) {
                            return IconButton(
                              onPressed: () {
                                themeC.chageState();
                              },
                              icon: FaIcon(
                                (state)
                                    ? FontAwesomeIcons.sun
                                    : FontAwesomeIcons.moon,
                                size: 24.0,
                                color: Colors.grey,
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        IconButton(
                          onPressed: () async {
                            await showDialog<void>(
                              context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Keluar'),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: const <Widget>[
                                        Text('Apakah anda yakin ingin keluar?'),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.orange,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Tidak"),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Iya"),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          icon: const FaIcon(
                            FontAwesomeIcons.rightFromBracket,
                            size: 24.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                    ),
                    child: IndexedStack(
                      index: selected,
                      children: [
                        const HomeVendorPage(),
                        const CartPage(),
                        Container(
                          color: Colors.purple[100],
                        ),
                        const CartPage()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
