import 'package:airweconnect/config/size.dart';
import 'package:airweconnect/controller/get_help_controller.dart';
import 'package:airweconnect/screens/past_ticket.dart';
import 'package:airweconnect/screens/raied_ticket.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetHelpScreen extends StatelessWidget {
  const GetHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: Get.find<GetHelpController>(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFFFFF01),
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            title: const Text(
              'Get help',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, bottom: 24, top: 16),
                decoration: const BoxDecoration(
                    color: Color(0xFFFFFF01),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24))),
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.black,
                      )),
                  child: TabBar(
                    dividerColor: Colors.transparent,
                    controller: controller.tabController,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        7,
                      ),
                      color: Colors.black,
                    ),
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    labelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.black,
                    tabs: const [
                      Tab(
                        text: 'Raise Ticket',
                      ),
                      Tab(
                        text: 'Past Ticket',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children: const [RaisedTicketScreen(), PastTicketScreen()],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(24),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    builder: (context) {
                      return Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24))),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            size.heightSpace(24),
                            const Text(
                              'Success',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins-Medium',
                                  fontWeight: FontWeight.bold),
                            ),
                            size.heightSpace(24),
                            Image.asset(
                              'assets/images/ic_payment_successfully.png',
                              height: size.height(150),
                              width: size.width(150),
                            ),
                            size.heightSpace(8),
                            const Text(
                              'Ticket successfully raised.',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins-Medium',
                              ),
                            ),
                            size.heightSpace(32),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.only(
                                  left: 24, right: 24, bottom: 24),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                  onPressed: () {},
                                  child: const Text(
                                    'Ok',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins-Medium',
                                        color: Colors.white),
                                  )),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins-Medium',
                      color: Colors.white),
                )),
          ),
        );
      },
    );
  }
}
