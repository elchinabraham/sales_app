import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpApproveTextFields extends StatefulWidget {
  const OtpApproveTextFields({super.key});

  @override
  State<OtpApproveTextFields> createState() => _OtpApproveTextFieldsState();
}

class _OtpApproveTextFieldsState extends State<OtpApproveTextFields> {
  final _formKey = GlobalKey<FormState>();

  late FocusNode _focusNode1;
  late FocusNode _focusNode2;
  late FocusNode _focusNode3;
  late FocusNode _focusNode4;

  @override
  void initState() {
    super.initState();
    _focusNode1 = FocusNode();
    _focusNode2 = FocusNode();
    _focusNode3 = FocusNode();
    _focusNode4 = FocusNode();
  }

  @override
  void dispose() {
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
    _focusNode4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: Form(
        key: _formKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OtpAuthTextField(
              width: screenWidth * 0.12,
              focusNode: _focusNode1,
              nextFocusNode: _focusNode2,
            ),
            OtpAuthTextField(
              width: screenWidth * 0.12,
              focusNode: _focusNode2,
              nextFocusNode: _focusNode3,
            ),
            OtpAuthTextField(
              width: screenWidth * 0.12,
              focusNode: _focusNode3,
              nextFocusNode: _focusNode4,
            ),
            OtpAuthTextField(
              width: screenWidth * 0.12,
              focusNode: _focusNode4,
              nextFocusNode: _focusNode4,
            ),
          ],
        ),
      ),
    );
  }
}

class OtpAuthTextField extends StatelessWidget {
  const OtpAuthTextField({
    super.key,
    required this.width,
    required this.focusNode,
    required this.nextFocusNode,
  });

  final double width;
  final FocusNode focusNode;
  final FocusNode nextFocusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8, left: 8),
      width: width,
      child: TextFormField(
        focusNode: focusNode,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          hintText: '*',
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.allow(RegExp('[^.,-]')),
        ],
        keyboardType: TextInputType.number,
        onChanged: (value) {
          if (value.isNotEmpty) {
            FocusScope.of(context).requestFocus(nextFocusNode);
          }
        },
      ),
    );
  }
}
