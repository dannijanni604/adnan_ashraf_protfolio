import 'package:adnan_ashraf_portfolio/config/app_images.dart';
import 'package:flutter/material.dart';
import '../../../config/constants.dart';
import '../../../view model/responsive.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({super.key, this.height = 300, this.width = 250});
  final double? width;
  final double? height;
  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}
class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value), // Move the container up and down
          child: Container(
            height: widget.height!,
            width: widget.width!,
            padding: const EdgeInsets.all(defaultPadding / 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Colors.pinkAccent,
                Colors.blue,
              ]),
              boxShadow: const [
                BoxShadow(
                  color: Colors.pink,
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(2, 0),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(
                AppImages.logo,
                height: Responsive.isLargeMobile(context)
                    ? MediaQuery.sizeOf(context).width * 0.2
                    : Responsive.isTablet(context)
                        ? MediaQuery.sizeOf(context).width * 0.14
                        : 200,
                width: Responsive.isLargeMobile(context)
                    ? MediaQuery.sizeOf(context).width * 0.2
                    : Responsive.isTablet(context)
                        ? MediaQuery.sizeOf(context).width * 0.14
                        : 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
