// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class customCircleAvatar extends StatelessWidget {
  String img;
  bool isOnline;
 customCircleAvatar({
    super.key,
    required this.img,
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Container(
        width: 55,
        height: 55,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 2
          ),
          image: DecorationImage(image: AssetImage(img),  fit: BoxFit.cover,)
        ),
        
        ),
        Positioned(
          right: 0.0,
          bottom: 0.0,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 218, 215, 215),
            ),
            padding: const EdgeInsets.all(3),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 5, 250, 14),
            ),
            ),
          ),
        )
      ]
    );
  }
}
