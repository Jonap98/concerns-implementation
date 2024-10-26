import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  final List<Widget>? children;

  const Content({
    super.key,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const TextStyle style1 = TextStyle(color: Colors.black38);
    const TextStyle style2 =
        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0);

    return Container(
      height: size.height * 0.75,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.green,
      ),
      child: Column(
        children: [
          const Text(
            'Bienvenido',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: children ?? [],
            ),
          ),
        ],
      ),
    );
  }
}