import 'package:flutter/material.dart';

class customtextfield2 extends StatelessWidget {
  customtextfield2({
    Key? key,
    required this.size,
    required this.controller,
    required this.text,
    this.selector = false,
    this.length = 200,
    required this.hinttext,
  }) : super(key: key);

  final Size size;
  final String text;
  final String hinttext;
  bool selector;
  int length;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      // width: double.infinity,
      // margin: selector ? EdgeInsets.only(left: 10) : null,
      // height: size.height / 8,
      height: size.width > 600 ? size.height / 6 : size.height / 8,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: selector
                ? null
                : Text(
                    text,
                    style: TextStyle(
                      fontWeight:
                          size.width > 600 ? FontWeight.w800 : FontWeight.w500,
                      fontSize: size.width > 600 ? 12 : 8,
                      letterSpacing: size.width > 600 ? 1.2 : null,
                      color: Colors.black87,
                    ),
                  ),
          ),
          SizedBox(
            height: size.width > 600 ? 4 : 4,
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.multiline,
              validator: (val) {
                if (val.toString().isEmpty) {
                  return "All fields are required";
                }

                return null;
              },
              maxLines: selector ? 1 : 3,
              // enabled: !selector,
              maxLength: length,
              decoration: InputDecoration(
                hintText: hinttext,
                fillColor: Colors.grey.shade200,
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 5, vertical: size.width > 600 ? 5 : 0),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class labeltextfield extends StatelessWidget {
  labeltextfield({
    Key? key,
    required this.size,
    required this.textEditingController,
    required this.text,
    this.enabled = true,
    this.isEmail = false,
    this.isBudget = false,
    required this.validatorSize,
  }) : super(key: key);

  final Size size;
  bool isEmail;
  bool isBudget;
  bool enabled;
  double validatorSize;
  final String text;

  TextEditingController textEditingController;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              text,
              style: TextStyle(
                fontWeight:
                    size.width > 600 ? FontWeight.w800 : FontWeight.w500,
                fontSize: size.width > 600 ? 12 : 8,
                letterSpacing: size.width > 600 ? 1.2 : null,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          SizedBox(
            height: size.height / validatorSize,
            child: TextFormField(
              maxLines: 1,
              validator: (val) {
                if (val.toString().isEmpty) {
                  return "All field are required";
                }

                return null;
              },
              controller: textEditingController,
              style: const TextStyle(
                fontSize: 14,
              ),
              // maxLength: 20,
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                enabled: enabled,
                fillColor: Colors.grey.shade200,
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                )),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
          isEmail
              ? const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
                  child: Text(
                    "example@example.com",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                )
              : const SizedBox(
                  height: 0,
                ),
          isBudget
              ? const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
                  child: Text(
                    "\$",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                )
              : const SizedBox(
                  height: 0,
                ),
          SizedBox(
            height: isEmail ? size.height / 50 : size.height / 25,
          ),
        ],
      ),
    );
  }
}
