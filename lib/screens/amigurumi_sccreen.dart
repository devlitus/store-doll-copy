import 'package:flutter/material.dart';
import 'package:store_dolls/widgets/buttom_navigation.dart';
import 'package:store_dolls/widgets/lsit_amigurumi.dart';

class AmirugumiScreen extends StatelessWidget {
  const AmirugumiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ListAmigurumi(),
      ),
      bottomNavigationBar: ButtomNavigation(),
    );
  }
}
