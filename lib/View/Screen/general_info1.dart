import 'package:flutter/material.dart';
import 'package:grants/Utiles/utilies.dart';
import 'package:grants/Widget/cutom_listTile.dart';
import 'package:grants/Widget/dropdown_button.dart';
import 'package:grants/Widget/text_fields.dart';

class GeneralInfo extends StatefulWidget {
  Size size;
  String imagepath;
  TextEditingController OrganizationState;
  TextEditingController establishedYear;
  TextEditingController yearofactive;
  TextEditingController OrganiztionName;
  TextEditingController EdfirstName;
  TextEditingController EdlastName;
  TextEditingController EdBio;
  TextEditingController EdPhone;
  TextEditingController EdEmail;
  TextEditingController GcPhone;
  TextEditingController GcEmail;
  TextEditingController PdFirstName;
  TextEditingController PdLastName;
  TextEditingController PdBio;
  TextEditingController PcFirstName;
  TextEditingController PcLastName;
  TextEditingController PcBio;
  GlobalKey<FormState> formKey;
  Function changeTileStatus;
  double validatorSize;
  void Function()? selectImageFun;
  void Function()? CrossImageFun;
  GeneralInfo({
    Key? key,
    required this.changeTileStatus,
    required this.formKey,
    required this.imagepath,
    required this.validatorSize,
    required this.size,
    required this.OrganizationState,
    required this.establishedYear,
    required this.yearofactive,
    required this.OrganiztionName,
    required this.EdfirstName,
    required this.EdlastName,
    required this.EdBio,
    required this.EdPhone,
    required this.EdEmail,
    required this.GcPhone,
    required this.GcEmail,
    required this.PdFirstName,
    required this.PdLastName,
    required this.PdBio,
    required this.PcFirstName,
    required this.PcLastName,
    required this.PcBio,
    required this.selectImageFun,
    required this.CrossImageFun,
  }) : super(key: key);

  @override
  State<GeneralInfo> createState() => _GeneralInfoState();
}

class _GeneralInfoState extends State<GeneralInfo> {
  changeStatus(bool stat) {
    setState(() {
      status = stat;
    });
  }

  @override
  void initState() {
    widget.OrganizationState.text = "Please Select";
    widget.establishedYear.text = "Please Select";
    widget.yearofactive.text = "Please Select";
    widget.changeTileStatus = changeStatus;
    super.initState();
  }

  bool status = false;

  // }
  @override
  void dispose() {
    widget.OrganiztionName.dispose();
    widget.EdfirstName.dispose();
    widget.EdlastName.dispose();
    widget.EdBio.dispose();
    widget.EdEmail.dispose();
    widget.EdPhone.dispose();
    widget.GcEmail.dispose();
    widget.GcPhone.dispose();
    widget.PdFirstName.dispose();
    widget.PdLastName.dispose();
    widget.PdBio.dispose();
    widget.PcFirstName.dispose();
    widget.PcLastName.dispose();
    widget.PcBio.dispose();
    widget.establishedYear.dispose();
    widget.yearofactive.dispose();
    widget.OrganizationState.dispose();
    super.dispose();
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
          text: "GENERAL INFORMATION",
        ),
        status
            ? Container(
                // color: Colors.red,
                margin: EdgeInsets.all(widget.size.height / 80),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ENTER LOGO",
                                style: TextStyle(
                                  fontWeight: widget.size.width > 600
                                      ? FontWeight.w800
                                      : FontWeight.w500,
                                  fontSize: widget.size.width > 600 ? 14 : 10,
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(
                                height: widget.size.width > 600 ? 4 : 1,
                              ),
                              ElevatedButton(
                                onPressed: widget.selectImageFun,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: listtilecolor,
                                  padding: EdgeInsets.symmetric(
                                    vertical: widget.size.width > 600 ? 17 : 12,
                                    horizontal:
                                        widget.size.width > 600 ? 27 : 20,
                                  ),
                                ),
                                child: Text(
                                  "Browse Files",
                                  style: TextStyle(
                                    fontWeight: widget.size.width > 600
                                        ? FontWeight.w800
                                        : FontWeight.w500,
                                    fontSize: widget.size.width > 600 ? 16 : 12,
                                    letterSpacing:
                                        widget.size.width > 600 ? 1.2 : null,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              widget.imagepath.isNotEmpty
                                  ? Container(
                                      height: widget.size.height / 25,
                                      width: widget.size.width / 3.3,
                                      padding: EdgeInsets.only(
                                          left: widget.size.width / 80),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "logo.${widget.imagepath.split('.').last}",
                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          IconButton(
                                              hoverColor: Colors.white,
                                              padding: EdgeInsets.zero,
                                              splashColor: Colors.transparent,
                                              onPressed: widget.CrossImageFun,
                                              icon: Icon(
                                                Icons.backspace,
                                                color: Colors.grey.shade400,
                                              ))
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                    )
                                  : const SizedBox(
                                      height: 0,
                                      width: 0,
                                    ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: widget.size.width / 10,
                        ),
                        labeltextfield(
                          size: widget.size,
                          validatorSize: widget.validatorSize,
                          text: "ENTER ORGANIZATION NAME",
                          textEditingController: widget.OrganiztionName,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: widget.size.height / 25,
                    ),
                    Row(
                      children: [
                        labeltextfield(
                            validatorSize: widget.validatorSize,
                            size: widget.size,
                            textEditingController: widget.EdfirstName,
                            text: "ENTER EXECUTIVE DIRECTOR FIRST NAME"),
                        SizedBox(
                          width: widget.size.width / 20,
                        ),
                        labeltextfield(
                            size: widget.size,
                            validatorSize: widget.validatorSize,
                            textEditingController: widget.EdlastName,
                            text: "ENTER EXECUTIVE DIRECTOR LAST NAME"),
                      ],
                    ),
                    customtextfield2(
                      size: widget.size,
                      hinttext: "Type here...",
                      controller: widget.EdBio,
                      text: "ENTER EXECUTIVE DIRECTOR BIO",
                    ),
                    SizedBox(
                      height: widget.size.height / 25,
                    ),
                    Row(
                      children: [
                        labeltextfield(
                            size: widget.size,
                            validatorSize: widget.validatorSize,
                            textEditingController: widget.EdPhone,
                            text: "ENTER EXECUTIVE DIRECTOR PHONE NUMBER"),
                        SizedBox(
                          width: widget.size.width / 20,
                        ),

                        labeltextfield(
                            size: widget.size,
                            validatorSize: widget.validatorSize,
                            isEmail: true,
                            textEditingController: widget.EdEmail,
                            text: "ENTER EXECUTIVE DIRECTOR EMAIL"),
                        // ),
                      ],
                    ),
                    const Divider(
                      color: listtilecolor,
                    ),
                    SizedBox(
                      height: widget.size.height / 25,
                    ),
                    Row(
                      children: [
                        labeltextfield(
                            size: widget.size,
                            validatorSize: widget.validatorSize,
                            textEditingController: widget.GcPhone,
                            text: "ENTER GRANT CONTACT PHONE NUMBER"),
                        SizedBox(
                          width: widget.size.width / 20,
                        ),

                        labeltextfield(
                            size: widget.size,
                            validatorSize: widget.validatorSize,
                            isEmail: true,
                            textEditingController: widget.GcEmail,
                            text: "ENTER GRANT CONTACT EMAIL"),
                        // ),
                      ],
                    ),
                    const Divider(
                      color: listtilecolor,
                    ),
                    SizedBox(
                      height: widget.size.height / 25,
                    ),
                    Row(
                      children: [
                        labeltextfield(
                            size: widget.size,
                            validatorSize: widget.validatorSize,
                            textEditingController: widget.PdFirstName,
                            text: "ENTER PROJECT DIRECTOR FIRST NAME"),
                        SizedBox(
                          width: widget.size.width / 20,
                        ),
                        labeltextfield(
                            size: widget.size,
                            validatorSize: widget.validatorSize,
                            textEditingController: widget.PdLastName,
                            text: "ENTER PROJECT DIRECTOR LAST NAME"),
                      ],
                    ),
                    customtextfield2(
                        size: widget.size,
                        hinttext: "Type here...",
                        controller: widget.PdBio,
                        text: "ENTER PROJECT DIRECTOR BIO"),
                    const Divider(
                      color: listtilecolor,
                    ),
                    SizedBox(
                      height: widget.size.height / 25,
                    ),
                    Row(
                      children: [
                        labeltextfield(
                            size: widget.size,
                            validatorSize: widget.validatorSize,
                            textEditingController: widget.PcFirstName,
                            text: "ENTER PROJECT COORDINATOR FIRST NAME"),
                        SizedBox(
                          width: widget.size.width / 20,
                        ),
                        labeltextfield(
                            size: widget.size,
                            validatorSize: widget.validatorSize,
                            textEditingController: widget.PcLastName,
                            text: "ENTER PROJECT COORDINATOR LAST NAME"),
                      ],
                    ),
                    customtextfield2(
                        size: widget.size,
                        hinttext: "Type here...",
                        controller: widget.PcBio,
                        text: "ENTER PROJECT COORDINATOR BIO"),
                    const Divider(
                      color: listtilecolor,
                    ),
                    SizedBox(
                      height: widget.size.height / 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Dropdown(
                            size: widget.size,
                            item: Countrylist,
                            controller: widget.OrganizationState,
                            label: "Select Organization State",
                          ),
                        ),
                        SizedBox(
                          width: widget.size.width / 20,
                        ),
                        Expanded(
                          child: Dropdown(
                            size: widget.size,
                            controller: widget.establishedYear,
                            item: EstabliedYearL,
                            label: "Select Year Established",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: widget.size.height / 25,
                    ),
                    Dropdown(
                        size: widget.size,
                        item: YearOfActiveL,
                        controller: widget.yearofactive,
                        label: "SELECT ORGANIZATION # OF YEARS ACTIVE"),
                    SizedBox(
                      height: widget.size.height / 25,
                    ),
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
