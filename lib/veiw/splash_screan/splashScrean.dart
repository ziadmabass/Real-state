import 'package:flutter/material.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:the_real_state/veiw/onbording1/onBording1.dart';

class Splashscrean extends StatelessWidget {
  const Splashscrean({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic width = MediaQuery.of(context).size.width;
    dynamic height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: AppColors.primary,
        child: InkWell(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Onbording1()));
          },
          child: Image.asset("images/Logo.png",)),
      )
    );
  }
}