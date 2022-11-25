import 'package:flutter/material.dart';

class GradientButton extends StatefulWidget {
  const GradientButton({
    Key? key,
    this.height,
    this.width,
    this.color1,
    this.color2,
    this.title = "Hello world",
    this.textColor,
    this.fontsize,
    this.onTap,
    this.padding,
    this.titleStyle,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color? color1;
  final Color? color2;
  final String title;
  final Color? textColor;
  final double? fontsize;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final TextStyle? titleStyle;

  @override
  State<GradientButton> createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.width ?? 300,
        height: widget.height ?? 40,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          gradient: LinearGradient(colors: [
            widget.color1 ?? const Color(0xffffffff),
            widget.color2 ?? const Color(0xff1CBBEE)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            '${widget.title}',
            style: widget.titleStyle ??
                TextStyle(
                  color: widget.textColor,
                  fontSize: widget.fontsize ?? 18,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
