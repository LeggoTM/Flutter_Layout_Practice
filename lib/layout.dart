import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildTopandBottom(),
        BuildMiddle(),
        BuildTopandBottom(),
      ],
    );
  }
}

class BuildBox extends StatelessWidget {
  final Color color;
  final int flexNo;

  const BuildBox(this.color, this.flexNo) : super();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexNo,
      child: Container(
        color: color,
      ),
    );
  }
}

class BuildTopandBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Row(
        children: [
          BuildBox(Colors.red, 6),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                BuildBox(Colors.white, 1),
                BuildBox(Colors.blue, 2),
                BuildBox(Colors.white, 1),
              ],
            ),
          ),
          BuildBox(Colors.red, 12),
        ],
      ),
    );
  }
}

class BuildMiddle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Column(
              children: [
                BuildBox(Colors.white, 1),
                BuildBox(Colors.blue, 2),
                BuildBox(Colors.white, 1),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 13,
            child: Column(
              children: [
                BuildBox(Colors.white, 1),
                BuildBox(Colors.blue, 2),
                BuildBox(Colors.white, 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
