import 'dart:ui';

import 'package:airweconnect/config/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PastTicketScreen extends StatelessWidget {
  const PastTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            size.heightSpace(48),
            Expanded(
              child: ListView.builder(
                  itemCount: 2,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Container(
                        height: size.height(142),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF6F6F6),
                            borderRadius: BorderRadius.circular(6)),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  size.heightSpace(7),
                                  Row(
                                    children: [
                                      const Text(
                                        "Ticket: ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xFF1D1D1B),
                                        ),
                                      ),
                                      Text(
                                        (index == 0)
                                            ? "151514224"
                                            : "151514223",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xFF1D1D1B),
                                        ),
                                      ),
                                    ],
                                  ),
                                  size.heightSpace(7),
                                  const Row(
                                    children: [
                                      Text(
                                        "Created: ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          fontSize: 16,
                                          color: Color(0xFF9C9C9E),
                                        ),
                                      ),
                                      Text(
                                        "26 July 2023",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w100,
                                          fontSize: 12,
                                          color: Color(0xFF9C9C9E),
                                        ),
                                      ),
                                    ],
                                  ),
                                  size.heightSpace(7),
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "KYC Unable to upload and account not verified",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Color(0xFF1D1D1B),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 25,
                              right: 25,
                              child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Colors.white,
                                    isScrollControlled: true,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(24),
                                            topRight: Radius.circular(24))),
                                    builder: (context) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            bottom: MediaQuery.of(context)
                                                .viewInsets
                                                .bottom),
                                        child: Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 24),
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(24),
                                                  topRight:
                                                      Radius.circular(24))),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              size.heightSpace(15),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      Get.back();
                                                    },
                                                    child: Icon(
                                                      Icons.close,
                                                      color: Colors.black,
                                                    ),
                                                  )),
                                              size.heightSpace(10),
                                              const Center(
                                                child: Text(
                                                  'Reopen Ticket',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontFamily:
                                                          'Poppins-Medium',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              size.heightSpace(24),
                                              const Text(
                                                'Ticket: 151514224',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily:
                                                        'Poppins-Medium',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Text(
                                                'Subject: KYC Unable to upload',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Poppins-Medium',
                                                ),
                                              ),
                                              size.heightSpace(12),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xFFF7F7F8),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                child: TextFormField(
                                                  controller:
                                                      TextEditingController(),
                                                  maxLines: 5,
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontFamily:
                                                          'Poppins-Medium'),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Please provide the essential details you believe we should know.',
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 14,
                                                            vertical: 14),
                                                    hintStyle: const TextStyle(
                                                        fontSize: 16,
                                                        fontFamily:
                                                            'Poppins-Medium'),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 0)),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 0)),
                                                  ),
                                                ),
                                              ),
                                              size.heightSpace(8),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xFFF7F7F8),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6)),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    const Icon(
                                                      Icons.attachment,
                                                    ),
                                                    size.widthSpace(6),
                                                    const Text(
                                                      'Attach file',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontFamily:
                                                              'Poppins-Medium',
                                                          color: Color(
                                                              0xFF797979)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              size.heightSpace(37),
                                              Container(
                                                width: double.infinity,
                                                padding: const EdgeInsets.only(
                                                    left: 24,
                                                    right: 24,
                                                    bottom: 24),
                                                child: ElevatedButton(
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.black,
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 14),
                                                        shape: const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        10)))),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'Submit',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontFamily:
                                                              'Poppins-Medium',
                                                          color: Colors.white),
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  height: size.height(30),
                                  width: size.width(100),
                                  decoration: BoxDecoration(
                                      color: Color((index == 0)
                                          ? 0xFF73B802
                                          : 0xFFD7D7D7),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Text(
                                      (index == 0) ? "ACTIVE" : "CLOSED",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Color(0xFFFFFFFF)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
