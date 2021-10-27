import 'dart:async';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  static const countdownDuration = Duration(minutes: 1, seconds: 30);
  Duration duration = Duration();
  Timer? timer;
  bool countDown = true;
  @override
  void initState() {
    super.initState();
    reset();
  }

  void startTimer() {
    stopTimer();
    reset();
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  void reset() {
    if (countDown) {
      setState(() => duration = countdownDuration);
    } else {
      setState(() => duration = Duration());
    }
  }

  void addTime() {
    final addSeconds = countDown ? -1 : 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 1) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void stopTimer({bool resets = true}) {
    if (resets) {
      reset();
    }
    setState(() => timer?.cancel());
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildButtons(),
        ],
      );

  Widget buildButtons() {
    final isRunning = timer == null ? false : timer!.isActive;
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    // ignore: unused_local_variable
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return isRunning
        ? Text(
            "$minutes" + ":$seconds",
            style: TextStyle(color: Colors.grey),
          )
        : TextButton(
            onPressed: () {
              startTimer();
            },
            child: Text(
              "ReSend".toUpperCase(),
              style: TextStyle(color: Colors.grey),
            ),
          );
  }
}
