import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/constants/color_constants.dart';

class InputWidget extends StatelessWidget {
  final String label;
  final bool isPassword;
  final TextEditingController controller;
  const InputWidget(
      {super.key,
      required this.label,
      this.isPassword = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 16,
            color: ColorContants.warnaLabel,
          ),
        ),
        const Gap(8),
        TextFormField(
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: ColorContants.warnaLabel,
          ),
          obscureText: isPassword,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            fillColor: ColorContants.warnaInput,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: ColorContants.primary),
            ),
          ),
          cursorColor: ColorContants.warnaLabel,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Mohon masukan $label';
            }
            if (label == "Email" &&
                !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
              return "Mohon masukan alamat email yang benar";
            }
            return null;
          },
        ),
        const Gap(20),
      ],
    );
  }
}
