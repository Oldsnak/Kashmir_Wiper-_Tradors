import 'package:flutter/material.dart';

class StockDate extends StatelessWidget {
  final String date;   // 1. declare a property

  const StockDate({
    super.key,
    required this.date,  // 2. make it required in the constructor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 30, 40, 0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            date,   // 3. use the passed value here
            style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),
          ),
        ),
      ),
    );
  }
}