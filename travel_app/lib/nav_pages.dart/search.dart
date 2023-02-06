import 'package:flutter/material.dart';

import '../widget/reuseable_text.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.search,
            size: 200.0,
            color: Colors.deepPurpleAccent,
          ),
          AppText(
            text: "Search",
            size: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          )
        ],
      ),
    );
  }
}
