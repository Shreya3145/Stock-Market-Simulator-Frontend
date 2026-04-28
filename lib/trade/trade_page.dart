import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class TradePage extends StatefulWidget {
  const TradePage({super.key});

  @override
  State<TradePage> createState() {
    return _TradePage();
  }
}

class _TradePage extends State<TradePage> {
  final border = const OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.black,
          width: 1.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignCenter),
      borderRadius: BorderRadius.all(Radius.circular(20)));

  double balance = 80000;
  double stockWorthToday = 278.12;
  int ownedShares = 0;

  void buy() {
    if (balance >= stockWorthToday) {
      setState(() {
        balance -= stockWorthToday;
        ownedShares += 1;
      });
    }
  }

  void sell() {
    if (ownedShares > 0) {
      setState(() {
        balance += stockWorthToday;
        ownedShares -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF008DDA),
      appBar: AppBar(
        title: const Text(
          'Trade',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Balance: ₹${balance.toInt()}',
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Owned: $ownedShares shares',
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                children: [
                  const WidgetSpan(
                    child: Icon(Icons.apple, size: 28, color: Colors.white),
                  ),
                  TextSpan(
                      text: 'AAPL : ₹${stockWorthToday.toDouble()}',
                      style:
                          const TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
          ),
          Card(
            elevation: 4,
            margin: const EdgeInsets.all(16.0),
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const Text(
                    'Stocks',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 200,
                    child: LineChart(
                      LineChartData(
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              const FlSpot(0, 0)
                            ], // Added dummy spot to prevent error
                            color: Colors.red,
                            barWidth: 3,
                            isCurved: true,
                          )
                        ],
                        titlesData: const FlTitlesData(
                          bottomTitles: AxisTitles(
                            axisNameWidget: Text('Time'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: SizedBox(
          //     height: 50,
          //     child: TextField(
          //       style: const TextStyle(color: Colors.black),
          //       decoration: InputDecoration(
          //           hintText: 'Enter Qunatity',
          //           hintStyle: const TextStyle(color: Colors.black),
          //           filled: true,
          //           fillColor: Colors.white,
          //           focusedBorder: border,
          //           enabledBorder: border),
          //       keyboardType: TextInputType.number,
          //       textInputAction: TextInputAction.done,
          //     ),
          //   ),
          // ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 45,
                  child: ElevatedButton(
                    onPressed: buy, // Connected the function
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(175, 45)),
                    child: const Text('BUY'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 45,
                  child: ElevatedButton(
                    onPressed: sell, // Connected the function
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(175, 45)),
                    child: const Text('SELL'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
