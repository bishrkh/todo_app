import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  // Regular

  static TextStyle baseStyle = GoogleFonts.nunito();

  static TextStyle regular = baseStyle.copyWith(
    fontWeight: FontWeight.w400,
  );

  // Additional text styles based on weights and italics
  static TextStyle blackItalic = baseStyle.copyWith(
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
  );

  static TextStyle bold = baseStyle.copyWith(
    fontWeight: FontWeight.bold,
  );

  static TextStyle extraBold = baseStyle.copyWith(
    fontWeight: FontWeight.w800,
  );

  static TextStyle extraBoldItalic = baseStyle.copyWith(
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.italic,
  );

  static TextStyle extraLightItalic = baseStyle.copyWith(
    fontWeight: FontWeight.w200,
    fontStyle: FontStyle.italic,
  );

  static TextStyle light = baseStyle.copyWith(
    fontWeight: FontWeight.w300,
  );

  static TextStyle lightItalic = baseStyle.copyWith(
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic,
  );

  static TextStyle medium = baseStyle.copyWith(
    fontWeight: FontWeight.w500,
  );

  static TextStyle mediumItalic = baseStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic,
  );

  static TextStyle semiBold = baseStyle.copyWith(
    fontWeight: FontWeight.w600,
  );

  static TextStyle semiBoldItalic = baseStyle.copyWith(
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.italic,
  );
}
