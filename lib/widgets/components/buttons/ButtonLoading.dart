import 'package:flutter/material.dart';

class ButtonLoading extends StatelessWidget {
  final String text;
  final bool isEnabled;
  final bool isLoading;
  final VoidCallback onPressed;
  final double fontSize;
  final double cornerRadius;
  final Color buttonColor;
  final Color enabledTextColor;
  final Color disabledTextColor;
  final Color borderColor;
  final double borderWidth;

  const ButtonLoading({
    super.key,
    required this.text,
    required this.isEnabled,
    this.isLoading = false,
    required this.onPressed,
    required this.fontSize,
    this.cornerRadius = 8,
    this.buttonColor = Colors.blue,
    this.enabledTextColor = Colors.white,
    this.disabledTextColor = Colors.white,
    this.borderColor = Colors.blueAccent,
    this.borderWidth = 2,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isEnabled || isLoading,
      child: Container(
        width: double.infinity,
        height:
            MediaQuery.of(context).size.width /
            10, // similar a screenWidthDp.dp / 10
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(cornerRadius),
          border: Border.all(
            color: isEnabled ? borderColor : Colors.white,
            width: borderWidth,
          ),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(cornerRadius),
            ),
            padding: EdgeInsets.zero,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isLoading)
                const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.5,
                    color: Colors.white,
                  ),
                )
              else
                Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: isEnabled ? enabledTextColor : disabledTextColor,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
