import 'package:flutter/material.dart';
import 'package:flutter_payment_app/pages/payment.dart';
import 'package:flutter_payment_app/widgets/button.dart';
import 'package:flutter_payment_app/widgets/larg_button.dart';
import 'package:flutter_payment_app/widgets/text_size.dart';
import 'package:get/route_manager.dart';
import '/component/colors.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double? screenHeight, screenWidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: screenHeight,
        child: Stack(
          children: [
            _headSection(),
            _billsList(),
            _payButton(),
          ],
        ),
      ),
    );
  }

  Positioned _billsList() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: 320,
      child: ListView.builder(
          padding: EdgeInsets.all(0),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              height: 130,
              width: screenWidth! - 20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffd8dbe8),
                    offset: Offset(1, 1),
                    blurRadius: 20,
                    spreadRadius: 10,
                  )
                ],
              ),
              margin: EdgeInsets.only(
                top: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 3,
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("images/brand1.png"),
                                fit: BoxFit.cover,
                              ),
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
                        ],
                      ),
                      TextSize(
                        text: 'Auto pay in 24 nov 2021',
                        color: Colors.green,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            margin: const EdgeInsets.only(
                              top: 15,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColor.selectBackground,
                            ),
                            child: Center(
                              child: Text(
                                'Select',
                                style: TextStyle(
                                    fontSize: 16, color: AppColor.selectColor),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Text(
                            '\$3456.77',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColor.mainColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Due in 7 day',
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColor.idColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 5,
                        height: 35,
                        decoration: BoxDecoration(
                          color: AppColor.halfOval,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }

  Positioned _buttonContainer() {
    return Positioned(
      top: screenHeight! * .32,
      right: 35,
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            isScrollControlled: true,
            barrierColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Container(
                height: screenHeight! - 240,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        color: Color(0xffeef1f4).withOpacity(.7),
                        width: screenWidth,
                        height: screenHeight! - 270,
                      ),
                    ),
                    Positioned(
                      right: 35,
                      top: -10,
                      child: Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 20),
                        decoration: BoxDecoration(
                          color: AppColor.mainColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: 60,
                        height: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Button(
                              icon: Icons.cancel,
                              iconColor: AppColor.mainColor,
                              backgroundColor: Colors.white,
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            Button(
                              icon: Icons.add,
                              iconColor: AppColor.mainColor,
                              backgroundColor: Colors.white,
                              text: "Add Bill",
                              textColor: Colors.white,
                            ),
                            Button(
                              icon: Icons.history,
                              iconColor: AppColor.mainColor,
                              backgroundColor: Colors.white,
                              onTap: () {},
                              text: "History",
                              textColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/lines.png"),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 15,
                offset: Offset(0, 1),
                color: Color(0xff11324d).withOpacity(.2),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _curveImage() {
    return Positioned(
      left: 0,
      right: -25,
      top: screenHeight! * .3,
      child: Container(
        height: screenHeight! * 0.1,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('images/curve.png'),
          ),
        ),
      ),
    );
  }

  Container _headSection() => Container(
        height: screenHeight! * .4,
        child: Stack(
          children: [
            _mainBackground(),
            _curveImage(),
            _buttonContainer(),
            _textContainer(),
          ],
        ),
      );

  Positioned _mainBackground() {
    return Positioned(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Positioned _payButton() => Positioned(
        bottom: 15,
        child: LargButton(
          text: "Pay all bills",
          textColor: Colors.white,
          onTap: () {
            Get.to(
              () => Payment(),
            );
          },
        ),
      );

  Stack _textContainer() => Stack(
        children: [
          Positioned(
            top: 120,
            left: 0,
            child: Text(
              "My Bills",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w600,
                color: Color(0xff293952),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            child: Text(
              "My Bills",
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      );
}
