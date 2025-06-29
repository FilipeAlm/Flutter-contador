import 'package:flutter/material.dart';
import 'package:prancheta_labs/routes/app_routes.dart';
import 'package:prancheta_labs/views/home_page.dart';
import 'package:prancheta_labs/views/red_cells.dart';
import 'package:prancheta_labs/views/white_cells.dart';
import 'package:prancheta_labs/views/platelets.dart';

void main() {
  runApp(const PranchetaLabsApp());
}

class PranchetaLabsApp extends StatelessWidget {
  const PranchetaLabsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prancheta Labs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.HOME,
      routes: {
        AppRoutes.HOME: (ctx) => const HomePage(),
        AppRoutes.RED_CELLS: (ctx) => const RedCellsPage(),
        AppRoutes.WHITE_CELLS: (ctx) => const WhiteCellsPage(),
        AppRoutes.PLATELETS: (ctx) => const PlateletsPage(),
      },
    );
  }
}