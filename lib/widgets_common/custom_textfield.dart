import 'package:eecm/consts/consts.dart';

Widget customTextField({String? title, String? hint,controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title!,
        style: TextStyle(color: Colors.red, fontFamily: bold),
      ),
      SizedBox(
        height: 5,
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            fontFamily: semibold,color: textfieldGrey,
          ),
          isDense: true,
          fillColor: Colors.grey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red)
          )
        ),
      )
    ],
  );
}


