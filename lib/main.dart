import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoint = 0;

  int teamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text("Points Counter", style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.orange),
        body: Column(
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text("Team A", style: TextStyle(fontSize: 42)),
                    Text("$teamAPoint", style: const TextStyle(fontSize: 150)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                            shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
                        onPressed: () {
                          setState(() {
                            teamAPoint++;
                          });
                        },
                        child: const Text("Add 1 Point",
                            style: TextStyle(
                                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold))),
                    const SizedBox(height: 16),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                            shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
                        onPressed: () {
                          setState(() {
                            teamAPoint += 2;
                          });
                        },
                        child: const Text("Add 2 Point",
                            style: TextStyle(
                                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold))),
                    const SizedBox(height: 16),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                            shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
                        onPressed: () {
                          setState(() {
                            teamAPoint += 3;
                          });
                        },
                        child: const Text("Add 3 Point",
                            style: TextStyle(
                                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold))),
                  ],
                ),
                const SizedBox(
                    height: 450, child: VerticalDivider(color: Colors.grey, thickness: 2)),
                Column(
                  children: [
                    const Text("Team B", style: TextStyle(fontSize: 42)),
                    Text("$teamBPoint", style: const TextStyle(fontSize: 150)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                            shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
                        onPressed: () {
                          setState(() {
                            teamBPoint++;
                          });
                        },
                        child: const Text("Add 1 Point",
                            style: TextStyle(
                                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold))),
                    const SizedBox(height: 16),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                            shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
                        onPressed: () {
                          setState(() {
                            teamBPoint += 2;
                          });
                        },
                        child: const Text("Add 2 Point",
                            style: TextStyle(
                                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold))),
                    const SizedBox(height: 16),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                            shape:
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
                        onPressed: () {
                          setState(() {
                            teamBPoint += 3;
                          });
                        },
                        child: const Text("Add 3 Point",
                            style: TextStyle(
                                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold))),
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0))),
                onPressed: () {
                  setState(() {
                    teamAPoint = 0;
                    teamBPoint = 0;
                  });
                },
                child: const Text("Reset",
                    style:
                        TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold))),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
