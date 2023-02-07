import 'package:flutter/material.dart';
import 'package:grants/Utiles/utilies.dart';
import 'package:grants/Widget/cutom_listTile.dart';
import 'package:grants/Widget/dropdown_button.dart';
import 'package:grants/Widget/text_fields.dart';

class Planing extends StatefulWidget {
  Size size;
  TextEditingController ProgramImpact;
  TextEditingController ProgramStatus;
  TextEditingController ProgramStatement;
  TextEditingController MissionStatement;
  TextEditingController GoalStatement;
  TextEditingController OutComeStatement;
  TextEditingController AGGFUNDER;
  Function changeTileStatus;
  GlobalKey<FormState> formKey;
  Planing({
    Key? key,
    required this.formKey,
    required this.size,
    required this.ProgramStatement,
    required this.MissionStatement,
    required this.GoalStatement,
    required this.OutComeStatement,
    required this.ProgramImpact,
    required this.AGGFUNDER,
    required this.ProgramStatus,
    required this.changeTileStatus,
  }) : super(key: key);

  @override
  State<Planing> createState() => _PlaningState();
}

class _PlaningState extends State<Planing> {
  @override
  void dispose() {
    widget.ProgramStatement.dispose();
    widget.MissionStatement.dispose();
    widget.GoalStatement.dispose();
    widget.OutComeStatement.dispose();
    widget.ProgramImpact.dispose();
    widget.ProgramStatus.dispose();
    widget.AGGFUNDER.dispose();
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
    widget.ProgramStatus.text = "Please Select";
    widget.changeTileStatus = changeStatus;
  }

  bool status = false;
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
            text: "PROGRAM PLANNING AND GOALS",
          ),
          status
              ? Container(
                  margin: EdgeInsets.all(widget.size.height / 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              length: 100,
                              controller: widget.ProgramStatement,
                              hinttext: "Type here...",
                              text: "ENTER PROGRAM NAME",
                            ),
                          ),
                          SizedBox(
                            width: widget.size.width / 20,
                          ),
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              controller: widget.MissionStatement,
                              hinttext: "Type here...",
                              text: "ENTER MISSION STATEMENT",
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
                              length: 500,
                              controller: widget.GoalStatement,
                              hinttext: "Type here...",
                              text: "ENTER GOAL STATEMENT",
                            ),
                          ),
                          SizedBox(
                            width: widget.size.width / 20,
                          ),
                          Expanded(
                            child: customtextfield2(
                              size: widget.size,
                              controller: widget.OutComeStatement,
                              hinttext: "Type here...",
                              text: "ENTER OUTCOME STATEMENT",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: widget.size.height / 25,
                      ),
                      customtextfield2(
                        size: widget.size,
                        length: 200,
                        controller: widget.ProgramImpact,
                        hinttext: "Type here...",
                        text: "ENTER PROGRAM IMPACT",
                      ),
                      SizedBox(
                        height: widget.size.height / 25,
                      ),
                      Dropdown(
                        size: widget.size,
                        controller: widget.ProgramStatus,
                        item: programStatusList,
                        label: "SELECT CURRENT PROGRAM STATUS",
                      ),
                      SizedBox(
                        height: widget.size.height / 25,
                      ),
                      customtextfield2(
                          size: widget.size,
                          controller: widget.AGGFUNDER,
                          text: "ENTER THE ALIGNED GOALS OF THE GRANT FUNDER",
                          hinttext: "Type here..."),
                      SizedBox(
                        height: widget.size.height / 25,
                      ),
                    ],
                  ),
                )
              : SizedBox(
                  height: 0,
                ),
        ],
      ),
    );
  }
}
