import 'package:flutter/material.dart';

class Speedometer extends StatefulWidget {
  const Speedometer({Key? key}) : super(key: key);

  @override
  State<Speedometer> createState() => _SpeedometerState();
}

class _SpeedometerState extends State<Speedometer> with TickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
  // TODO: implement initState
  super.initState();
  _controller=AnimationController(vsync:this,duration: const Duration(milliseconds: 500));
  _animation=CurvedAnimation(parent: _controller, curve: Curves.easeIn,);
  _controller.forward();
  }

  @override
  void dispose() {
  _controller.dispose();
  // TODO: implement dispose
  super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45),
      child: Stack(
        children: [
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Image.asset('assets/images/scale.png',width: 318,),
            )),
          Positioned(
            top: 70,
            left: 95,
            child: RotationTransition(
              turns: _animation,
              child: Image.asset('assets/images/speed_arrow.png', width: 140,)),
            )
        ],
      ),
    );
  }
}