import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

textFormField(
  TextEditingController controller,
  TextInputAction textInputAction,
  TextInputType keyboardType,
  String labelText,
  String? Function(String?)? validator,
  double fontSize,
  double width,
  FocusNode focusNode,
  String selectedNode,
) {
  return Container(
    margin: EdgeInsets.all(fontSize * 0.6),
    // padding: EdgeInsets.all(fontSize * 0.7),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: (width > 600)
          ? AppColors.textFieldColor
          : AppColors.textFieldColorPhone,
    ),
    // height: fontSize * 2.5,
    child: TextFormField(
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      autofocus: true,
      focusNode: focusNode,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        filled: false,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
            color: (width > 600) ? AppColors.backColor : AppColors.whiteColor,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        labelText: labelText,
        labelStyle: GoogleFonts.getFont(
          'Ubuntu',
          fontSize: fontSize,
          color: (width > 600) ? AppColors.backColor : AppColors.whiteColor,
          fontWeight: FontWeight.w400,
        ),
        hintText: 'Enter $labelText',
        hintStyle: GoogleFonts.getFont(
          'Ubuntu',
          fontSize: fontSize,
          color: AppColors.hintColor,
          fontWeight: FontWeight.w400,
        ),
        errorStyle: const TextStyle(height: 0),
      ),
      style: GoogleFonts.getFont(
        'Ubuntu',
        fontSize: fontSize,
        color: (width > 600) ? AppColors.backColor : AppColors.whiteColor,
        fontWeight: FontWeight.w300,
      ),
      cursorColor: (width > 600) ? AppColors.backColor : AppColors.whiteColor,
      inputFormatters: [
        FilteringTextInputFormatter.singleLineFormatter,
      ],
      validator: validator,
    ),
  );
  // return Container(
  //   margin: EdgeInsets.symmetric(
  //     horizontal: fontSize * 0.6,
  //     vertical: fontSize * 0.7,
  //   ),
  //   padding: EdgeInsets.fromLTRB(
  //     fontSize * 0.4,
  //     fontSize * 0.3,
  //     fontSize * 0.4,
  //     fontSize * 0.3,
  //   ),
  //   decoration: BoxDecoration(
  //     color: Colors.white,
  //     border: Border.all(
  //       color: (selectedNode == labelText)
  //           ? AppColors.backColor
  //           : Colors.transparent,
  //       width: 2,
  //     ),
  //     borderRadius: BorderRadius.circular(8),
  //     // color: AppColors.textFieldColor,
  //   ),
  //   // height: fontSize * 2.5,
  //   child: TextFormField(
  //     focusNode: focusNode,
  //     controller: controller,
  //     textInputAction: textInputAction,
  //     keyboardType: keyboardType,
  //     autofocus: true,
  //     textCapitalization: TextCapitalization.words,
  //     decoration: InputDecoration(
  //       filled: false,
  //       border: InputBorder.none,
  //       errorBorder: InputBorder.none,
  //       focusedBorder: InputBorder.none,
  //       enabledBorder: InputBorder.none,
  //       disabledBorder: InputBorder.none,
  //       // isCollapsed: true,
  //       isDense: true,
  //       floatingLabelBehavior: FloatingLabelBehavior.auto,
  //       // labelText: labelText,
  //       // labelStyle: GoogleFonts.getFont(
  //       //   'Ubuntu',
  //       //   fontSize: fontSize,
  //       //   color: AppColors.backColor,
  //       //   fontWeight: FontWeight.w400,
  //       // ),
  //       // floatingLabelStyle: GoogleFonts.getFont(
  //       //   'Ubuntu',
  //       //   fontSize: fontSize * 0.5,
  //       //   color: AppColors.backColor,
  //       //   fontWeight: FontWeight.w400,
  //       // ),
  //       hintText: labelText,
  //       hintStyle: GoogleFonts.getFont(
  //         'Ubuntu',
  //         fontSize: fontSize,
  //         color: (selectedNode == labelText)
  //             ? AppColors.hintColor
  //             : AppColors.backColor,
  //         fontWeight: FontWeight.w300,
  //       ),
  //       // errorStyle: GoogleFonts.getFont(
  //       //   'Ubuntu',
  //       //   color: Colors.red,
  //       //   h
  //       //   fontWeight: FontWeight.w400,
  //       // ),
  //     ),
  //     style: GoogleFonts.getFont(
  //       'Ubuntu',
  //       fontSize: fontSize,
  //       color: AppColors.backColor,
  //       fontWeight: FontWeight.w300,
  //     ),
  //     cursorColor: AppColors.backColor,
  //     inputFormatters: [
  //       FilteringTextInputFormatter.singleLineFormatter,
  //     ],
  //     validator: validator,
  //   ),
  // );
}
