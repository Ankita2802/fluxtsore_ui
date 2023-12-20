import 'package:flutter/material.dart';
import 'package:fluxstore_ui/app/components/ap_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FluxstoreAppBar(
        title: 'Gemstore',
        drawer: true,
        notification: true,
      ),
    );
  }
}
