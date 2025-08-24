import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rabbitevc/generated_images.dart';

class AuthTextField extends StatefulWidget {
  final String? hintText;
  final String? path;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLength;
  final bool obscureText;

  const AuthTextField(
      {Key? key,
      this.controller,
      this.keyboardType,
      this.hintText,
      this.path,
      this.maxLength,
      this.obscureText = false})
      : super(key: key);

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = !widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white.withOpacity(0.05)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SvgPicture.asset(
              widget.path ?? '',
              width: 20,
            ),
          ),
          Container(
            height: 32,
            width: 1,
            color: Colors.white.withOpacity(0.10),
          ),
          Flexible(
            child: TextField(
              controller: widget.controller,
              style: const TextStyle(fontSize: 14, color: Colors.white),
              keyboardType: widget.keyboardType,
              maxLength: widget.maxLength,
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText,
                contentPadding: EdgeInsets.only(
                    left: 16, right: widget.obscureText ? 0 : 16),
                counterText: '',
                hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white.withOpacity(0.4)),
              ),
            ),
          ),
          if (widget.obscureText)
            IconButton(
              icon: Icon(
                // Based on passwordVisible state choose the icon
                _passwordVisible ? Icons.visibility : Icons.visibility_off,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                // Update the state i.e. toogle the state of passwordVisible variable
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            )
        ],
      ),
    );
  }
}
