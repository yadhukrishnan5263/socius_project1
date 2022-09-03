import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(130);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          MaterialStateColor.resolveWith((states) => Colors.indigo.shade900),
      title: Stack(children: [
        Column(
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w800),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          'School Service: 4 hr(s)',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Home Service: 4 hr(s)',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Community Service: 4 hr(s)',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 3,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.transparent, Colors.white])),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white, width: 2)),
                    child: LinearPercentIndicator(
                      width: 130.0,
                      padding: EdgeInsets.zero,
                      barRadius: Radius.circular(3),
                      animation: true,
                      animationDuration: 1000,
                      backgroundColor: Colors.transparent,
                      lineHeight: 15.0,
                      percent: 0.3,
                      center: Center(
                          child: Text(
                        "20 exp",
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      )),
                      progressColor: Colors.greenAccent[400],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                          height: 25,
                          width: 25,
                          child: Image(
                            image: AssetImage("assets/icons/coin.png"),
                            fit: BoxFit.fill,
                          )),
                      Text(
                        ' x 100',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          height: 25,
                          width: 25,
                          child: Image(
                            image: AssetImage("assets/icons/gem.png"),
                            fit: BoxFit.fill,
                          )),
                      Text(
                        ' x 10',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          height: 25,
                          width: 25,
                          child: Image(
                            image: AssetImage("assets/icons/heart.png"),
                            fit: BoxFit.fill,
                          )),
                      Text(
                        ' x 100',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.notifications_none,
              color: Colors.white,
            )
          ],
        )
      ]),
      toolbarHeight: 130,
    );
  }
}
