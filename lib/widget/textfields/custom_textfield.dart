import 'package:ecommerce/core/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LabeledTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool isBorderNeed;
  final Color? borderColor;
  final Color? fillColor;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;

  const LabeledTextField(
      {super.key,
      required this.label,
      required this.hintText,
      this.obscureText = false,
      this.controller,
      this.keyboardType,
      this.isBorderNeed = false,
      this.borderColor,
      this.fillColor,
      this.validator,
      this.suffixIcon,
      this.inputFormatters});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: AppTextStyle().br16w400),
          const SizedBox(height: 8),
          TextFormField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            validator: validator,
            decoration: InputDecoration(
                suffixIcon: suffixIcon,
                hintText: hintText,
                filled: true,
                fillColor: fillColor ?? const Color(0xFFF5F5F5),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                border: isBorderNeed
                    ? OutlineInputBorder(
                        borderSide: BorderSide(
                            color: borderColor ?? const Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(12),
                      )
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                hintStyle: const TextStyle(color: Colors.grey),
                enabledBorder: isBorderNeed
                    ? OutlineInputBorder(
                        borderSide: BorderSide(
                            color: borderColor ?? const Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(12),
                      )
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                focusedBorder: isBorderNeed
                    ? OutlineInputBorder(
                        borderSide: BorderSide(
                            color: borderColor ??
                                const Color.fromARGB(255, 102, 93, 93)),
                        borderRadius: BorderRadius.circular(12),
                      )
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: borderColor ?? Colors.red),
                  borderRadius: BorderRadius.circular(12),
                )),
            inputFormatters: inputFormatters,
          ),
        ],
      ),
    );
  }
}
