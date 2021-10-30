import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/pages/home.dart';
import 'package:flutter_payment_app/widgets/button.dart';
import 'package:flutter_payment_app/widgets/larg_button.dart';
import 'package:get/route_manager.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? screenHeight = MediaQuery.of(context).size.height;
    double? screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
        ),
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/paymentbackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: screenHeight * .14,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/success.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Text(
              "Success",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: AppColor.mainColor,
              ),
            ),
            Text(
              "Payment is completed for 2 bills ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColor.idColor,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.045,
            ),
            Container(
              height: 160,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.withOpacity(.5),
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: 2,
                itemBuilder: (_, index) {
                  return Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, left: 10, bottom: 10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.green,
                              ),
                              child: Icon(
                                Icons.done,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kengen Power",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.mainColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "ID: 98766788877",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.idColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  '',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.mainColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '\$3456.77',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.mainColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 3,
                          color: Colors.grey.withOpacity(.5),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: screenWidth * .045,
            ),
            Column(
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.idColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$3456.77',
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColor.mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * .15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(icon: Icons.share_sharp, onTap: () {}, text: "Share"),
                SizedBox(
                  width: 80,
                ),
                Button(icon: Icons.print_outlined, onTap: () {}, text: "Print"),
              ],
            ),
            LargButton(
              text: "Done",
              backgroundColor: Colors.white,
              textColor: AppColor.mainColor,
              onTap: () {
                Get.to(
                  () => Home(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
