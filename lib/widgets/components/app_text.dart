import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppText extends StatelessWidget {
  final String data;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final int? maxLines;
  final TextOverflow? overflow;
  final StrutStyle? strutStyle;
  final bool underline; // 👈 NUEVO

  const AppText(
    this.data, {
    super.key,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.maxLines,
    this.overflow,
    this.strutStyle,
    this.underline = false, // 👈 valor por defecto
  });

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
      decoration:
          underline
              ? TextDecoration.lineThrough
              : TextDecoration.overline, // 👈
    );

    final effectiveStyle = defaultTextStyle.copyWith(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );

    return Text(
      data,
      style: effectiveStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      maxLines: maxLines,
      overflow: overflow,
      strutStyle: strutStyle,
    );
  }
}
