// ignore: file_names
import 'package:flutter/material.dart';

class FadedAnimation extends StatefulWidget {
  const FadedAnimation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FadedAnimationState createState() => _FadedAnimationState();
}

class _FadedAnimationState extends State<FadedAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Container(
      ),
    );
  }
}