import 'package:flutter/material.dart';
class ProfileTextField extends StatefulWidget {
  final String title;
  final String label;

  const ProfileTextField({Key? key, required this.title, required this.label})
      : super(key: key);

  @override
  _ProfileTextFieldState createState() => _ProfileTextFieldState();
}

class _ProfileTextFieldState extends State<ProfileTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 160,
          height: 47,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(0.2),
          ),
          padding: EdgeInsets.only(left: 25),
          child: TextFormField(
            // textInputAction: TextInputAction.continueAction,
            decoration: InputDecoration(
              hintText: widget.label,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
