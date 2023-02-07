import 'package:flutter/material.dart';
import 'package:grants/Utiles/utilies.dart';
import 'package:grants/Widget/cutom_listTile.dart';
import 'package:grants/Widget/text_fields.dart';

class Evulations extends StatefulWidget {
  Size size;
  TextEditingController input1;
  TextEditingController input2;
  TextEditingController input3;
  TextEditingController output1;
  TextEditingController output2;
  TextEditingController output3;
  TextEditingController outcome1;
  TextEditingController outcome2;
  TextEditingController outcome3;
  TextEditingController Measure1;
  TextEditingController Measure2;
  TextEditingController Measure3;
  TextEditingController Verification1;
  TextEditingController Verification2;
  TextEditingController Verification3;
  GlobalKey<FormState> formKey;
  Function changeTileStatus;

  Evulations({
    Key? key,
    required this.changeTileStatus,
    required this.size,
    required this.formKey,
    required this.input1,
    required this.input2,
    required this.input3,
    required this.output1,
    required this.output2,
    required this.output3,
    required this.outcome1,
    required this.outcome2,
    required this.outcome3,
    required this.Measure1,
    required this.Measure2,
    required this.Measure3,
    required this.Verification1,
    required this.Verification2,
    required this.Verification3,
  }) : super(key: key);

  @override
  State<Evulations> createState() => _EvulationsState();
}

class _EvulationsState extends State<Evulations> {
  bool status = false;
  @override
  void dispose() {
    widget.input1.dispose();
    widget.input2.dispose();
    widget.input3.dispose();
    widget.output1.dispose();
    widget.output2.dispose();
    widget.output3.dispose();
    widget.outcome1.dispose();
    widget.outcome2.dispose();
    widget.outcome3.dispose();
    widget.Verification1.dispose();
    widget.Verification2.dispose();
    widget.Verification3.dispose();
    widget.Measure1.dispose();
    widget.Measure2.dispose();
    widget.Measure3.dispose();

    super.dispose();
  }

  changeStatus(bool stat) {
    setState(() {
      status = stat;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.changeTileStatus = changeStatus;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          CutsomListTile(
            size: widget.size,
            onTap: () {
              setState(() {
                status = !status;
              });
            },
            status: status,
            text: "PROGRAM EVALUATION",
          ),
          status
              ? Container(
                  margin: EdgeInsets.all(widget.size.height / 80),
                  child: Column(
                    children: [
                      SizedBox(
                        height: widget.size.height / 25,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 100,
                              controller: widget.input1,
                              hinttext: "Type here...",
                              text: "ENTER INPUT 1",
                            ),
                          ),
                          SizedBox(
                            width: widget.size.width / 20,
                          ),
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              controller: widget.input2,
                              length: 100,
                              hinttext: "Type here...",
                              text: "ENTER INPUT 2",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: widget.size.height / 25,
                      ),
                      customtextfield2(
                        size: widget.size,
                        controller: widget.input3,
                        length: 100,
                        hinttext: "Type here...",
                        text: "ENTER INPUT 3",
                      ),
                      SizedBox(
                        height: widget.size.height / 40,
                      ),
                      const Divider(
                        color: backgroundColor,
                        height: 3,
                      ),
                      SizedBox(
                        height: widget.size.height / 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 150,
                              controller: widget.output1,
                              hinttext: "Type here...",
                              text: "ENTER OUTPUT 1",
                            ),
                          ),
                          SizedBox(
                            width: widget.size.width / 20,
                          ),
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 150,
                              controller: widget.outcome1,
                              hinttext: "Type here...",
                              text: "ENTER OUTCOME 1",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: widget.size.height / 25,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 150,
                              controller: widget.Measure1,
                              hinttext: "Type here...",
                              text: "ENTER MEASURE 1",
                            ),
                          ),
                          SizedBox(
                            width: widget.size.width / 20,
                          ),
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 150,
                              controller: widget.Verification1,
                              hinttext: "Type here...",
                              text: "ENTER VERIFICATION 1",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: widget.size.height / 40,
                      ),
                      const Divider(
                        color: backgroundColor,
                        height: 3,
                      ),
                      SizedBox(
                        height: widget.size.height / 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 150,
                              controller: widget.output2,
                              hinttext: "Type here...",
                              text: "ENTER OUTPUT 2",
                            ),
                          ),
                          SizedBox(
                            width: widget.size.width / 20,
                          ),
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 150,
                              controller: widget.outcome2,
                              hinttext: "Type here...",
                              text: "ENTER OUTCOME 2",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: widget.size.height / 25,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 150,
                              controller: widget.Measure2,
                              hinttext: "Type here...",
                              text: "ENTER MEASURE 2",
                            ),
                          ),
                          SizedBox(
                            width: widget.size.width / 20,
                          ),
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 150,
                              controller: widget.Verification2,
                              hinttext: "Type here...",
                              text: "ENTER VERIFICATION 2",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: widget.size.height / 40,
                      ),
                      const Divider(
                        color: backgroundColor,
                        height: 3,
                      ),
                      SizedBox(
                        height: widget.size.height / 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 150,
                              controller: widget.output3,
                              hinttext: "Type here...",
                              text: "ENTER OUTPUT 3",
                            ),
                          ),
                          SizedBox(
                            width: widget.size.width / 20,
                          ),
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 150,
                              controller: widget.outcome3,
                              hinttext: "Type here...",
                              text: "ENTER OUTCOME 3",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: widget.size.height / 25,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 150,
                              controller: widget.Measure3,
                              hinttext: "Type here...",
                              text: "ENTER MEASURE 3",
                            ),
                          ),
                          SizedBox(
                            width: widget.size.width / 20,
                          ),
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 150,
                              controller: widget.Verification3,
                              hinttext: "Type here...",
                              text: "ENTER VERIFICATION 3",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: widget.size.height / 40,
                      ),
                      const Divider(
                        color: backgroundColor,
                        height: 3,
                      ),
                      SizedBox(
                        height: widget.size.height / 40,
                      ),
                    ],
                  ),
                )
              : const SizedBox(height: 0),
        ],
      ),
    );
  }
}
