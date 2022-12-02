import 'package:flutter/material.dart';

Widget defaultTextForm({
  required TextEditingController controller,
  required TextInputType keyboardType,
  required String label,
  bool formEnable = true,
  bool readOnly = false,
  required IconData prefix,
  IconData? suffix,
  Function? suffixPress,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  required Function validate,
  bool isPassword = false,
}) =>
    TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      readOnly: readOnly,
      obscureText: isPassword,
      enabled: formEnable,
      controller: controller,
      keyboardType: keyboardType,
      onTap: () {
        onTap!();
      },
      onFieldSubmitted: (value) {
        onSubmit!(value);
      },
      onChanged: (value) {
        onChange!(value);
      },
      validator: (s) {
        return validate(s);
      },
      decoration: InputDecoration(

        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        labelText: label,
        //border: const OutlineInputBorder(),
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null ? IconButton(
          onPressed: () {
            suffixPress!();
          },
          icon: Icon(
            suffix,
          ),
        ) : null,
      ),
    );

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  double radius = 0.0,
  bool isUpperCase = true,
  required String text,
  required Function function,
}) => Container(
      width: width,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultTextButton({required Function function, required String text}) =>
    TextButton(
      onPressed: () {
        function();
      },
      child: Text(
        text.toUpperCase(),
      ),
    );