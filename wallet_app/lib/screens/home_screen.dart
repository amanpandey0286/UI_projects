import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/utils/my_icon_button.dart';
import 'package:wallet_app/utils/my_list_tile.dart';

class HomePage extends StatelessWidget {
  List<double> balance = <double>[5028.20, 6457.08, 7048.25];
  List<int> expDate = [14, 25, 07];
  List<int> accNum = [1254, 2451, 5452];
  List<Color?> cardColor = [
    Colors.red[400],
    Colors.blue[400],
    Colors.deepPurple[400],
  ];
  HomePage({super.key});

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        shape: const CircleBorder(),
        onPressed: () {},
        child: Icon(Icons.monetization_on_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                size: 30.0,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                size: 30.0,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'My Cards',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 250.0,
              child: PageView.builder(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Card(
                      elevation: 2,
                      shadowColor: Colors.grey,
                      color: cardColor[index],
                      child: Stack(
                        children: [
                          Positioned(
                              top: -250,
                              child: Container(
                                height: 400.0,
                                width: 400.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                              )),
                          Positioned(
                            right: -120,
                            child: Container(
                              height: 220.0,
                              width: 220.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.2)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "Balance",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                                Text(
                                  '\$' + balance[index].toString(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "*****" + accNum[index].toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      expDate[index].toString() + "/24",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.grey.shade700,
                    dotHeight: 12.0,
                    dotWidth: 12.0),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myIconWidget(myIcon: Icons.send, buttonText: 'Send'),
                  myIconWidget(myIcon: Icons.wallet, buttonText: 'Pay'),
                  myIconWidget(myIcon: Icons.list_alt, buttonText: 'Bills'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  //custom tile
                  myListTile(
                      leadingIcon: Icons.graphic_eq,
                      mainTitle: 'Statistics',
                      subTitle: 'Payment and Income',
                      cardColor: Colors.blue.shade300),
                  myListTile(
                      leadingIcon: Icons.track_changes,
                      mainTitle: 'Transaction',
                      subTitle: 'Transaction History',
                      cardColor: Colors.green.shade300),
                  myListTile(
                      leadingIcon: Icons.graphic_eq,
                      mainTitle: 'Statistics',
                      subTitle: 'Payment and Income',
                      cardColor: Colors.red.shade300),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
