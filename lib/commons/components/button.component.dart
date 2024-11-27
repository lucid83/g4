import 'package:flutter/material.dart';
import 'package:g4/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class SystemButton extends StatelessWidget {
  const SystemButton({super.key, this.onPressed, required this.text});

  final dynamic onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.nature,
        foregroundColor: AppColors.offWhite,
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.outfit(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
