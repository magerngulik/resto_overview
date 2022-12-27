import 'package:belajar_bloc_arsitectur/bloc/cubit/activator_cubit.dart';
import 'package:belajar_bloc_arsitectur/bloc/cubit/theme_cubit.dart';
import 'package:belajar_bloc_arsitectur/data/reporsitories/random_repository.dart';
import 'package:belajar_bloc_arsitectur/page/navigator/view/navigator_vendor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bloc/export.dart';

class App extends StatelessWidget {
  App({super.key});

  final RandomRepository randomRepository = RandomRepository();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RandomBloc(randomRepository),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider(
          create: (context) => ActivatorCubit(),
        )
      ],
      child: const AppView(),
    );
  }
}

// var mainview = const HomeUserPage();
var mainview = const NavigatorVendor();

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, bool>(
      builder: (context, state) {
        return ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              theme: (state)
                  ? ThemeData.light().copyWith(
                      brightness: Brightness.light,
                      colorScheme:
                          const ColorScheme.light(primary: Colors.orange),
                      textTheme: TextTheme(
                        headline1: const TextStyle(
                            fontSize: 72.0, fontWeight: FontWeight.bold),
                        headline4: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        headline6: const TextStyle(
                            fontSize: 36.0, fontStyle: FontStyle.italic),
                        bodyText2:
                            const TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
                      ),
                    )
                  : ThemeData.dark().copyWith(
                      brightness: Brightness.light,
                      colorScheme:
                          const ColorScheme.light(primary: Colors.orange),
                      textTheme: TextTheme(
                        headline1: const TextStyle(
                            fontSize: 72.0, fontWeight: FontWeight.bold),
                        headline4: GoogleFonts.montserrat(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        headline6: const TextStyle(
                            fontSize: 36.0, fontStyle: FontStyle.italic),
                        bodyText2:
                            const TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
                      ),
                    ),
              home: mainview,
            );
          },
        );
      },
    );
  }
}
