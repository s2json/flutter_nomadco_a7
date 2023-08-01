import 'package:assignment7/widgets/schedule_cards.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff1d1f1f),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 40,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                // '+'
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage('lib/images/profile.png'),
                      width: 70,
                      height: 70,
                    ),
                    Text(
                      '+',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                // Today
                Row(
                  children: [
                    Text(
                      'MONDAY 16',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // Days (today, tomorrow, ...)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'TODAY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text(
                        '•',
                        style: TextStyle(
                          color: Color(0xffb42783),
                          fontSize: 45,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '17   18   19   20',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        ScheduleCard(
                          startMonth: 11,
                          startDay: 30,
                          endMonth: 12,
                          endDay: 20,
                          topic: 'design meeting',
                          attendees: 'alex, helena, nana',
                          cardColor: Color(0xfffef754),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        // 2nd schedule
                        ScheduleCard(
                          startMonth: 12,
                          startDay: 35,
                          endMonth: 14,
                          endDay: 10,
                          topic: 'daily project',
                          attendees: 'me, richard, ciry, +4',
                          cardColor: Color(0xff9c6bce),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        // 3rd schedule
                        ScheduleCard(
                          startMonth: 15,
                          startDay: 00,
                          endMonth: 16,
                          endDay: 30,
                          topic: 'weekly planning',
                          attendees: 'den, nana, mark',
                          cardColor: Color(0xffbcef4b),
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
    );
  }
}
