import 'package:flutter/material.dart';
import 'package:toonflix/button.dart';
import 'package:toonflix/currency_card.dart';

Future<void> main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Salena',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 56,
                ),
                Text(
                  'Total balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  '\$5 194 382',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      text: 'Trasfer',
                      bgColor: Color(0xfff2b33a),
                      textColor: Color(0xff181818),
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xff1F2123),
                      textColor: Color(0xffffffff),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 72,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Wallet',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff),
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xffffffff).withOpacity(0.8)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const currencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: true,
                  order: 0,
                ),
                const currencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '55 622',
                  icon: Icons.attach_money_rounded,
                  isInverted: false,
                  order: 1,
                ),
                const currencyCard(
                  name: 'Rupee',
                  code: 'INR',
                  amount: '28 INR',
                  icon: Icons.currency_rupee_rounded,
                  isInverted: true,
                  order: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
