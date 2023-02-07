import 'package:flutter/material.dart';
import 'package:grants/Utiles/utilies.dart';
import 'package:grants/Widget/cutom_listTile.dart';
import 'package:grants/Widget/dropdown_button.dart';

class Participant6 extends StatefulWidget {
  Size size;
  TextEditingController programpriorty;
  GlobalKey<FormState> formKey;
  Function changeTileStatus;
  Participant6(
      {Key? key,
      required this.formKey,
      required this.size,
      required this.changeTileStatus,
      required this.programpriorty})
      : super(key: key);

  @override
  State<Participant6> createState() => _Participant6State();
}

class _Participant6State extends State<Participant6> {
  bool status = false;
  @override
  void dispose() {
    widget.programpriorty.dispose();

    super.dispose();
  }

  changeStatus(bool stat) {
    setState(() {
      status = stat;
    });
  }

  @override
  void initState() {
    widget.programpriorty.text = "Please Select";
    super.initState();
    widget.changeTileStatus = changeStatus;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(children: [
        CutsomListTile(
          size: widget.size,
          onTap: () {
            setState(() {
              status = !status;
            });
          },
          status: status,
          text: "PROGRAM PRIORITY",
        ),
        status
            ? Container(
                margin: EdgeInsets.all(widget.size.height / 80),
                child: Column(
                  children: [
                    SizedBox(
                      height: widget.size.height / 50,
                    ),
                    Dropdown(
                        size: widget.size,
                        item: ProgramCategoryL,
                        controller: widget.programpriorty,
                        label: "SELECT PROGRAM PRIORITY")
                  ],
                ),
              )
            : const SizedBox(
                height: 0,
              ),
      ]),
    );
  }
}
