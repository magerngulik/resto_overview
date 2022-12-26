import 'package:belajar_bloc_arsitectur/page/navigator/view/navigator_vendor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:belajar_bloc_arsitectur/shared/util/coffe_cp.dart';
import 'package:flutter/material.dart';

class GloginPage extends StatefulWidget {
  const GloginPage({Key? key}) : super(key: key);

  @override
  State<GloginPage> createState() => _GloginPageState();
}

class _GloginPageState extends State<GloginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: clayCoffe,
        body: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                const CircleAvatar(
                  radius: 200,
                  backgroundColor: Color(0xffF0E6D5),
                  backgroundImage: AssetImage(
                    "assets/image/coffee_glass.png",
                  ),
                ),
                Text(
                  'Coffe Santuy',
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: darkCofffe,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    "Koding tercipta dari biji kopi spesial yang di giling halus",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 18,
                      color: darkCofffe,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70.0,
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // <-- Radius
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NavigatorVendor()),
                      );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: const FaIcon(FontAwesomeIcons.google),
                            color: Colors.white,
                            onPressed: () {}),
                        const Text(
                          "Log in Google sebagai Member",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // <-- Radius
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                            icon: const FaIcon(FontAwesomeIcons.google),
                            color: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NavigatorVendor()),
                              );
                            }),
                        const Text(
                          "Log in Google sebagai Vendor",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
