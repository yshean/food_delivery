import 'package:flutter/material.dart';

class PromotionBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 200,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage('https://place-hold.it/400x1400'),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400],
              blurRadius: 10,
            )
          ]),
    );
  }
}
