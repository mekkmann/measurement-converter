import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  final double inputValue;
  final String fromUnit;
  final String toUnit;
  final double? result;

  const ResultCard({
    super.key,
    required this.inputValue,
    required this.fromUnit,
    required this.toUnit,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    if(result == null) return const SizedBox.shrink();

    return Card(
      child: ListTile(
        title: Text(
          '$inputValue $fromUnit = ',
          style: TextStyle(fontSize: 18),
        ),
        subtitle: Text(
          '${result?.toStringAsFixed(2)} $toUnit',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}