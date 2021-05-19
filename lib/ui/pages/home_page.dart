import 'package:flutter/material.dart';
import 'package:teste1/ui/widgets/base_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.tealAccent[400],
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Stack(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 14,
                        offset: Offset(0, 7),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        BaseText(
                          text: "Mercadinho",
                          color: Colors.black,
                          fontSize: 40,
                          isBold: true,
                        ),
                        Image.asset(
                          'assets/images/hpimage.png',
                          fit: BoxFit.cover,
                        ),
                        BaseText(
                          text: "Super Paraná",
                          color: Colors.black,
                          fontSize: 40,
                          isBold: true,
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/products');
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 24),
                            decoration: BoxDecoration(
                              color: Colors.tealAccent[400],
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                BaseText(
                                  text: 'Ver lista de produtos',
                                  color: Colors.white,
                                  fontSize: 20,
                                  isBold: true,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 24,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
