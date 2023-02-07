import 'package:flutter/material.dart';
import 'package:grants/Utiles/utilies.dart';
import 'package:grants/Widget/cutom_listTile.dart';

class ProgramParticipant5 extends StatefulWidget {
  Size size;
  // TextEditingController cat;
  TextEditingController applicableCategory;
  GlobalKey<FormState> formKey;
  Function changeTileStatus;
  ProgramParticipant5({
    Key? key,
    required this.formKey,
    required this.size,
    required this.changeTileStatus,
    required this.applicableCategory,
  }) : super(key: key);

  @override
  State<ProgramParticipant5> createState() => _ProgramParticipant5State();
}

class _ProgramParticipant5State extends State<ProgramParticipant5> {
  bool status = false;
  @override
  void dispose() {
    widget.applicableCategory.dispose();
    super.dispose();
  }

  changeStatus(bool stat) {
    setState(() {
      status = stat;
    });
  }

  @override
  void initState() {
    widget.applicableCategory.text = "Please Select";
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
            text: "PROGRAM PARTICIPANT DESCRIPTION",
          ),
          status
              ? Container(
                  margin: EdgeInsets.all(widget.size.height / 80),
                  child: Column(
                    children: [
                      SizedBox(
                        height: widget.size.height / 50,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              "SELECT PROGRAM PARTICIPANTS FROM APPLICABLE CATEGORIES",
                              style: labelStyle,
                              // style: ,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: widget.size.height / 20,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.grey.shade200,
                                border: Border.all(color: Colors.black)),
                            child: DropdownButton(
                              isExpanded: true,
                              items:
                                  AplicabeCList.map<DropdownMenuItem<String>>(
                                      (menu) => DropdownMenuItem(
                                            child: Text(menu),
                                            value: menu,
                                          )).toList(),
                              onChanged: (value) {
                                setState(() {
                                  widget.applicableCategory.text =
                                      value.toString();
                                });
                              },
                              value: widget.applicableCategory.text,
                            ),
                          ),
                        ],
                      ),
                      // Dropdown(
                      //   size: size,
                      //   item: AplicabeCList,
                      //   updatevalue: applicableCategory,
                      //   label:
                      //       "SELECT PROGRAM PARTICIPANTS FROM APPLICABLE CATEGORIES",
                      // ),
                      SizedBox(
                        height: widget.size.height / 50,
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
