import 'package:flutter/material.dart';

class ReusableTextField extends StatefulWidget {
  final String hintText;
  final Function(String) onChanged;
  final double padingsize;

  const ReusableTextField({
    Key? key,
    required this.hintText,
    required this.onChanged ,
    this.padingsize = 20.0,
  }) : super(key: key);

  @override
  State<ReusableTextField> createState() => _ReusableTextFieldState();
}

class _ReusableTextFieldState extends State<ReusableTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      widget.onChanged(_controller.text);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        setState(() {
          widget.onChanged(_controller.text);
        });
      },
      controller: _controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white24,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: widget.padingsize,
          horizontal: widget.padingsize,
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(fontSize: 20.0),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: widget.padingsize),
          child: Icon(
            Icons.search,
            color: Colors.grey,
            size: 50.0,
          ),
        ),
      ),
    );
  }
}
