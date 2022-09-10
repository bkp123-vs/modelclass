import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class InputPaage extends StatefulWidget {
  const InputPaage({Key? key}) : super(key: key);

  @override
  State<InputPaage> createState() => _InputPaageState();
}

class _InputPaageState extends State<InputPaage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child:ReusableCode(
              colour: Color(0xFF1D1E33),
            ),
                ),
                Expanded(
                  child: ReusableCode(
              colour: Color(0xFF1D1E33),
            ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCode(
              colour: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCode(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusableCode(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCode extends StatelessWidget {
  ReusableCode({required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
