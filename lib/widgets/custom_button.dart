import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.functionCallback,
      required this.color});

  final String title;
  final VoidCallback functionCallback;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          const Size(350, 60),
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) =>
              states.contains(MaterialState.focused) ? color[600] : color[500],
        ),
      ),
      onPressed: functionCallback,
      child: Text(title),
    );
  }
}
