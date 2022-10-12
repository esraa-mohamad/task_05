import 'package:flutter/material.dart';

Widget defaultButton({
  required double width,
  required Color backGround,
  required Function function,
  required String text,
  bool isUpper = true,
  double radius = 10,
  Builder? builder,
  Color colorText = Colors.black,
  double textSize =25,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: backGround,
        borderRadius: BorderRadius.circular(
          (radius),
        ),
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.w400,
            color: colorText,
          ),
        ),
      ),
    );

Widget defaultTextForm({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChanged,
  Function? onTap,
  required Function validate,
  String? label,
  String? hint,
  bool isClickable = true,
  Color? colorLabel,
  bool isPassword = false,
  double sizeWriting =15,
  Color? colorWriting,
}) =>
    TextFormField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        labelStyle: TextStyle(
          fontSize: 18,
          color: colorLabel,
        ),
        hintStyle: TextStyle(
          fontSize: 18,
          color: colorLabel,
        ),
      ),
      style:  TextStyle(
        fontSize: sizeWriting,
        color: colorWriting,
      ),
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: (value) {
        onSubmit!(value);
      },
      onChanged: (value) {
        onChanged!(value);
      },
      validator: (value) {
        return validate(value);
      },
      onTap: () {
        onTap!();
      },
      enabled: isClickable,
    );
Widget categories ({
  required String pathImage,
  required String name,
})=> Column(
  children: [
    Container(

      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(30),

        gradient: LinearGradient(

          colors: [

            const Color(0xB3FFFFFF).withOpacity(0.9),

            const Color(0xFF1B5E20).withOpacity(0.6),

          ],

          begin: Alignment.topCenter,

          end: Alignment.bottomCenter,

        ),

      ),

      child: Padding(

        padding: const EdgeInsets.all(3.0),

        child: Image.asset(pathImage,

          width: 50,

          height: 60,

          color: Colors.black,

        ),

      ),

    ),
    const SizedBox(
      height: 15,
    ),
    Text(
      name,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
    ),
  ],
);

Widget selling(
{
  required String pathImage,
  required String name1,
  required String name2,
  required String price,
})=>Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children:
  [
    Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(pathImage,
          width: 160,
          height: 200,),
      ),
    ),
    const SizedBox(
      height: 10,
    ),
     Text(
        name1,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        )
    ),
     Text(
        name2,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        )
    ),
     Text(
        price,
        style: TextStyle(
          fontSize: 22,
          color: Colors.green[600],
          fontWeight: FontWeight.w900,
        )
    ),
  ],
);