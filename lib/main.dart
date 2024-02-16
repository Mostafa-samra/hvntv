import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/persebtation/buttom_navigationbar/buttom_navigationbart_page.dart';
import 'features/persebtation/buttom_navigationbar/home_page/cubit/hompage_cubit.dart';
import 'features/persebtation/buttom_navigationbar/me_page/cubit/mepage_cubit.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HompageCubit(),
        ),
        BlocProvider(
          create: (context) => MepageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HVN-TV',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: routes,
        home: const BottomNavigationBarPage(),
      ),
    );
  }
}
