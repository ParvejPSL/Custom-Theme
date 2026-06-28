// ignore_for_file: must_be_immutable, sort_child_properties_last

import 'package:customize_console/core/const/app_text_style.dart';
import 'package:customize_console/core/global_widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintext;
  final String? title;
  final double? height;
  final String? prefixIconPath;
  final String? sufixText;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final double? radius;
  final Color? borderColor;
  final double? padding;
  final int? maxLength;
  final Color? bgColor;
  final bool isPassword;
  final String? errorText;
  final String? Function(String?)? validator;

  const CustomTextfield({
    super.key,
    this.controller,
    this.hintext,
    this.title,
    this.height,
    this.padding,
    this.sufixText,
    this.prefixIconPath,
    this.onChanged,
    this.keyboardType,
    this.inputFormatters,
    this.radius,
    this.borderColor,
    this.maxLines,
    this.maxLength,
    this.bgColor,
    this.isPassword = false,
    this.errorText,
    this.validator,
  });

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool _isVisible = false;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final obscureText = widget.isPassword ? !_isVisible : false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null)
          Text(widget.title!, style: TextStyle(fontSize: 12)),
        SizedBox(height: 12),

        TextFormField(
          controller: widget.controller,
          obscureText: obscureText,
          keyboardType: widget.keyboardType,
          inputFormatters: widget.inputFormatters,
          maxLines: widget.maxLines ?? 1,
          maxLength: widget.maxLength,
          onChanged: widget.onChanged,
          validator: widget.validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,

          style: TextStyle(fontSize: 12),

          decoration: InputDecoration(
            prefixIcon: widget.prefixIconPath != null
                ? Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgIcon(
                      icon: widget.prefixIconPath!,
                      height: 16,
                      width: 16,
                    ),
                  )
                : null,

            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: _toggleVisibility,
                    icon: Icon(
                      _isVisible ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  )
                : null,

            hintText: widget.hintext,
            hintStyle: AppTextStyle.body16(context, color: Colors.grey),

            filled: true,
            fillColor: Colors.white,

            contentPadding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 12,
            ),
            // focusedBorder: OutlineInputBorder(
            // ),
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: radius12(),
            //   borderSide: BorderSide(color: AppColors.borderColor),
            // ),
            // focusedErrorBorder: OutlineInputBorder(
            //   borderRadius: radius12(),
            //   borderSide: BorderSide(color: AppColors.red),
            // ),
            // errorBorder: OutlineInputBorder(
            //   borderRadius: radius12(),
            //   borderSide: BorderSide(color: AppColors.red, width: 1.2),
            // ),

            // errorStyle: AppTextStyle.label16(context, color: AppColors.red),
          ),
        ),
      ],
    );
  }
}
