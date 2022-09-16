import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: LottieAnim(),));
}
class LottieAnim extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //child: Lottie.network("https://assets2.lottiefiles.com/packages/lf20_gy2uwkhh.json"),
        child: Lottie.asset("animation.json"),
      ),
    );
  }

}