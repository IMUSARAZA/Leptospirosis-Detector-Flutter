import 'package:flutter/material.dart';

class AnimatedCheckNowButton extends StatefulWidget {
  final VoidCallback onPressed;

  const AnimatedCheckNowButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  _AnimatedCheckNowButtonState createState() => _AnimatedCheckNowButtonState();
}

class _AnimatedCheckNowButtonState extends State<AnimatedCheckNowButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
        final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.scale(
          scale: _animation.value,
          child: child,
        );
      },
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF6E83CA),
          onPrimary: Colors.white,
          shadowColor: const Color(0xFF6E83CA),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding:  EdgeInsets.symmetric(vertical: screenHeight * 0.03, horizontal: screenWidth * 0.18),
        ),
        child: const Text(
          'Check Now',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
