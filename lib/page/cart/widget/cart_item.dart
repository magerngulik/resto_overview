import 'package:belajar_bloc_arsitectur/bloc/cubit/activator_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    ActivatorCubit activatorC = context.read<ActivatorCubit>();
    return BlocBuilder<ActivatorCubit, bool>(
      bloc: activatorC,
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 125.0,
              width: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.ibb.co/FwjdwvX/Blue-Brown-Modern-Product-Promotion-Instagram-Story.png",
                  ),
                  fit: BoxFit.fitHeight,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Cappucino",
                  style: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Small . 200g",
                  style: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text(
                      "Rp. 20.000",
                      style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 50.0,
                    ),
                    (activatorC.state == false)
                        ? Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove_circle_outline_outlined,
                                  size: 24.0,
                                ),
                              ),
                              Text(
                                "2",
                                style: GoogleFonts.montserrat(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 15,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add_circle_outline_outlined,
                                  size: 24.0,
                                ),
                              ),
                            ],
                          )
                        : Container()
                  ],
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
