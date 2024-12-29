import 'package:flutter/cupertino.dart';

class OverViewListComponent extends StatelessWidget {
  final String title;
  final String message;
  const OverViewListComponent({super.key,required this.title,required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10,),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          message,
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
