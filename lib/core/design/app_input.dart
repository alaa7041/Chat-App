import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  final String hintText, icon;
  final bool isPhone, isPassword, isEnabled, isSearch;
  final FormFieldValidator<String?>? validator;
  final TextEditingController? controller;

  const AppInput(
      {super.key,
      required this.hintText,
      required this.icon,
      this.isPhone = false,
      this.isPassword = false,
      this.isEnabled = true,
      this.isSearch = false,
      this.validator = null,
      this.controller});

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
      enabled: widget.isEnabled,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: isPasswordHidden && widget.isPassword,
      decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: widget.isPassword
              ? IconButton(
            onPressed: () {
              isPasswordHidden = !isPasswordHidden;
              setState(() {});
            },
            icon: Icon(isPasswordHidden
                ? Icons.visibility_off
                : Icons.visibility),
          )
              : null,
          icon: widget.isPhone
              ? Container(
            width: 70,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xffF7F7FC),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: const Color(0xffF7F7FC)),
            ),
            child: Row(
              children: [
                Image.network(
                  "https://cdn-icons-png.flaticon.com/512/321/321226.png",
                  width: 32,
                  height: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text("+20"),
              ],
            ),
          )
              : null),
    ),
    );
  }
}
