// ignore_for_file: prefer_const_constructors

import 'package:airweconnect/config/size.dart';
import 'package:airweconnect/controller/get_help_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RaisedTicketScreen extends StatelessWidget {
  const RaisedTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: Get.find<GetHelpController>(),
      builder: (controller) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                size.heightSpace(16),
                const Row(
                  children: [
                    Text(
                      'Hi ',
                      style:
                          TextStyle(fontSize: 16, fontFamily: 'Poppins-Medium'),
                    ),
                    Text(
                      'User Name, ',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins-Medium',
                          color: Color(0xFF5083E7)),
                    ),
                    Text(
                      'we are here to help',
                      style:
                          TextStyle(fontSize: 16, fontFamily: 'Poppins-Medium'),
                    ),
                  ],
                ),
                size.heightSpace(6),
                const Text(
                  'Submit your ticket via Get Help for assistance.',
                  style: TextStyle(fontSize: 14, fontFamily: 'Poppins-Medium'),
                ),
                size.heightSpace(36),
                const Text(
                  'Select your Topic',
                  style: TextStyle(fontSize: 14, fontFamily: 'Poppins-Medium'),
                ),
                size.heightSpace(4),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF7F7F8),
                      borderRadius: BorderRadius.circular(8)),
                  child: Theme(
                    data:
                        ThemeData().copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Text(
                        'General Enquiry',
                        style: TextStyle(
                            fontSize: 16, fontFamily: 'Poppins-Medium'),
                      ),
                      expandedAlignment: Alignment.topLeft,
                      childrenPadding: EdgeInsets.only(left: 16, bottom: 16),
                      children: [
                        Text(
                          'Test 1',
                          style: TextStyle(
                              fontSize: 16, fontFamily: 'Poppins-Medium'),
                        ),
                        size.heightSpace(5),
                        Text(
                          'Test 2',
                          style: TextStyle(
                              fontSize: 16, fontFamily: 'Poppins-Medium'),
                        ),
                      ],
                    ),
                  ),
                ),
                size.heightSpace(30),
                const Text(
                  'Subject',
                  style: TextStyle(fontSize: 14, fontFamily: 'Poppins-Medium'),
                ),
                size.heightSpace(4),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF7F7F8),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    controller: controller.subjectController,
                    style:
                        TextStyle(fontSize: 16, fontFamily: 'Poppins-Medium'),
                    decoration: InputDecoration(
                      hintText: 'Subject',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                      hintStyle:
                          TextStyle(fontSize: 16, fontFamily: 'Poppins-Medium'),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0)),
                    ),
                  ),
                ),
                size.heightSpace(20),
                const Text(
                  'Write Details',
                  style: TextStyle(fontSize: 14, fontFamily: 'Poppins-Medium'),
                ),
                size.heightSpace(4),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF7F7F8),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextFormField(
                    controller: controller.detailController,
                    maxLines: 5,
                    style:
                        TextStyle(fontSize: 16, fontFamily: 'Poppins-Medium'),
                    decoration: InputDecoration(
                      hintText:
                          'Please provide the essential details you believe we should know.',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                      hintStyle:
                          TextStyle(fontSize: 16, fontFamily: 'Poppins-Medium'),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0)),
                    ),
                  ),
                ),
                size.heightSpace(20),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xFFF7F7F8),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.attachment,
                      ),
                      size.widthSpace(6),
                      Text(
                        'Attach file',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins-Medium',
                            color: Color(0xFF797979)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
