import 'package:flutter/material.dart';
import 'package:toytown/toytown.dart';

class RawButtonVsWellDone extends StatelessWidget {
  const RawButtonVsWellDone({Key? key}) : super(key: key);

  Widget raw() {
    return RawMaterialButton(
        onPressed: () {},
        shape: const CircleBorder(),
        fillColor: Colors.blue,
        child: const Icon(Icons.add));
  }

  Widget wellDone() {
    return DecoratedBox(
      decoration:
          const ShapeDecoration(shape: CircleBorder(), color: Colors.blue),
      child: GestureDetector(
        onTap: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold_.list(
      children: [
        raw(),
        wellDone(),
        Row(
          children: [
            raw(),
            raw(),
          ],
        ),
        Row(
          children: [
            wellDone(),
            wellDone(),
          ],
        )
      ],
    );
  }
}
