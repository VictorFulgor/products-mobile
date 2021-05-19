import 'package:flutter/material.dart';
import 'package:teste1/ui/widgets/base_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.tealAccent[400],
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              BaseText(
                text: "Mercadinho",
                color: Colors.white,
                fontSize: 40,
                isBold: true,
              ),
              BaseText(
                text: "Super Paraná",
                color: Colors.white,
                fontSize: 40,
                isBold: true,
              ),
              BaseText(
                text: "Levando alegria desde 1991",
                color: Colors.white70,
                fontSize: 20,
                isBold: false,
              ),
              Container(
                margin: EdgeInsets.only(top: 250),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'products');
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 32),
                  padding: EdgeInsets.symmetric(vertical: 32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BaseText(
                        text: 'Ver lista de produtos',
                        color: Colors.black87,
                        fontSize: 16,
                        isBold: true,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
