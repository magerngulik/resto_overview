import 'package:belajar_bloc_arsitectur/page/login/view/glogin_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:belajar_bloc_arsitectur/shared/util/coffe_cp.dart';
import 'package:flutter/material.dart';

class SpleshPage extends StatefulWidget {
  const SpleshPage({Key? key}) : super(key: key);

  @override
  State<SpleshPage> createState() => _SpleshPageState();
}

class _SpleshPageState extends State<SpleshPage> {
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
                    "assets/image/splash_cs.png",
                  ),
                ),
                const SizedBox(
                  height: 20.0,
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
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    "Secangkir kopi dapat membuat kita belajar, bahwa rasa pahit juga dapat dinikmati",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 20,
                      color: darkCofffe,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70.0,
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // <-- Radius
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GloginPage()),
                      );
                    },
                    child: const Text(
                      "BUY A COFFE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
