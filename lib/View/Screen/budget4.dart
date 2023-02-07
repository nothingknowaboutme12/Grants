import 'package:flutter/material.dart';
import 'package:grants/Widget/cutom_listTile.dart';
import 'package:grants/Widget/text_fields.dart';

class Budget4 extends StatefulWidget {
  Size size;
  TextEditingController TotalBudget;
  TextEditingController AmountScured;
  TextEditingController AmountRequested;
  GlobalKey<FormState> formKey;
  Function changeTileStatus;
  double validatorSize;
  Budget4({
    Key? key,
    required this.changeTileStatus,
    required this.validatorSize,
    required this.formKey,
    required this.size,
    required this.TotalBudget,
    required this.AmountScured,
    required this.AmountRequested,
  }) : super(key: key);

  @override
  State<Budget4> createState() => _Budget4State();
}

class _Budget4State extends State<Budget4> {
  bool status = false;
  @override
  void dispose() {
    widget.TotalBudget.dispose();
    widget.AmountScured.dispose();
    widget.AmountRequested.dispose();
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
            text: "PROGRAM BUDGET PROJECTIONS",
          ),
          status
              ? Container(
                  margin: EdgeInsets.all(widget.size.height / 80),
                  child: Column(
                    children: [
                      SizedBox(
                        height: widget.size.height / 25,
                      ),
                      customtextfield2(
                          size: widget.size,

                          // selector: true,
                          controller: widget.TotalBudget,
                          // length: ,
                          text: "ENTER TOTAL BUDGET SCURED",
                          hinttext: ""),
                      Row(
                        children: [
                          labeltextfield(
                              size: widget.size,
                              validatorSize: widget.validatorSize,
                              isBudget: true,
                              textEditingController: widget.AmountScured,
                              text: "ENTER AMOUNT SCURED"),
                          SizedBox(
                            width: widget.size.width / 20,
                          ),
                          labeltextfield(
                              size: widget.size,
                              validatorSize: widget.validatorSize,
                              isBudget: true,
                              textEditingController: widget.AmountRequested,
                              text: "ENTER AMOUNT REQUESTED"),
                        ],
                      ),
                    ],
                  ),
                )
              : const SizedBox(
                  height: 0,
                ),
        ],
      ),
    );
  }
}
