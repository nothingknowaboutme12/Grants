import 'package:flutter/material.dart';
import 'package:grants/Widget/cutom_listTile.dart';
import 'package:grants/Widget/text_fields.dart';

class LocationStatus extends StatefulWidget {
  Size size;
  TextEditingController zipCode;
  GlobalKey<FormState> formKey;
  Function changeTileStatus;
  LocationStatus(
      {Key? key,
      required this.changeTileStatus,
      required this.size,
      required this.zipCode,
      required this.formKey})
      : super(key: key);

  @override
  State<LocationStatus> createState() => _LocationStatusState();
}

class _LocationStatusState extends State<LocationStatus> {
  @override
  void dispose() {
    widget.zipCode.dispose();
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

  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          CutsomListTile(
            size: widget.size,
            status: status,
            text: "PARTICIPANT LOCATION",
            onTap: () {
              setState(() {
                status = !status;
              });
            },
          ),
          status
              ? Container(
                  margin: EdgeInsets.all(widget.size.height / 80),
                  child: customtextfield2(
                    size: widget.size,
                    controller: widget.zipCode,
                    length: 20,
                    text:
                        "ENTER PARTICIPANT ZIP CODE, CITY, STATE, COUNTY, OR REGION",
                    hinttext: "Type Here...",
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
