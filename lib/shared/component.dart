import 'package:bmi_healthy/shared/constance.dart';
import 'package:flutter/material.dart';

// default Button
Widget defaultButton({
  double width = double.infinity,
  Color backgroundColor = primaryAppColor,
  required Function() function,
  required String text,
  required double fontSize,
  required Color Textcolor ,
  bool isUpperCase = true,
}) => Container(
      width: width,
      height: 40,
      child: MaterialButton(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            fontSize: fontSize,
            color: Textcolor,
          ),
        ),
      ),
    );

// default FormField
Widget defaultFormField({
   TextInputType? type,
  ControlsWidgetBuilder? cont,
  Function? onSubmit,
  Function? onChange,
  required Function onSave,
  bool isPassword = false,
  required Function validate,
  required IconData prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
  required String labelText,
  Border? border,
}) => TextFormField(

      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: (s) {
        onSubmit.noSuchMethod;
      },
      onSaved: (v) {
        onSave;
      },
      validator: (s) {
        validate;
        // return null;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
        labelText: labelText,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  suffixPressed;
                },
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );

//default Text
Widget defaultText({
  required String text,
  Color color = primaryAppColor,
  required double fontSize,
  FontWeight? fontWeight,
}) => Text(
      text,
      style: TextStyle(

        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );

Widget defaultButtonSocial ({
  required String text,
  required String imageName,
  Icon? icon,
  required double fontSize,
  required Color textColor,
  required Function() onPress,
})=> Container(
  height: 35,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    border: Border.all(width: 1.0, color: primaryTextColor),
  ),
  child:   MaterialButton(
    onPressed: onPress,
    child: Center(
      child: Row(
        children: [
          Image.asset(imageName),
          const SizedBox(
            width: 50,
          ),
          defaultText(
            text: text,
            fontSize: fontSize,
            color: textColor,
          ), // defaultText
        ],
      ),
    ),
  ),
);

// to move to another page
void navigateTo(context, widget) => Navigator.push(
  context, // place you now
  MaterialPageRoute(
    // place you go to
    builder: (context) => widget,
  ),
);