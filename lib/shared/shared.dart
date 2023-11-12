import 'package:flutter/material.dart';

void navigateTo(context, widget) => Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
        margin: const EdgeInsets.all(10),
      ),
    );

Widget defaultForm({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmit,
  Function(String)? onChanged,
  required String hintText,
  bool isPassword = false,
  required String label,
  IconData? prefix,
  IconData? suffix,
  Function()? suffispressed,
  Function()? onTap,
  required String? Function(dynamic value) validate,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
      onChanged: onChanged,
      onTap: onTap,
      enabled: isClickable,
      validator: validate,
      decoration: InputDecoration(
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffispressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.deepOrange,
  bool isUpperCase = true,
  double radius = 0.0,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
