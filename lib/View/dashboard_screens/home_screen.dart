import 'package:al_nuim/utility/common_textfield.dart';
import 'package:al_nuim/utility/size_config.dart';
import 'package:al_nuim/utility/string_ext.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Image.asset(
          "al_nuim".png,
          width: 161,
          height: 31,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset("bell".png),
          ),
          hSize(20)
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 48,
              child: CommonTextFormField(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset("search".png),
                ),
                labelText: "Search Anything...",
                fillColor: false,
                radius: 20.0,
                colors: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
