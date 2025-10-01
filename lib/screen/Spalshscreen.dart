import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widget/AppString.dart';

class Spalshscreen extends StatelessWidget {
  const Spalshscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [_spalhWidget(context)]));
  }

  _spalhWidget(context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.cyanAccent, Colors.blueAccent],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 100,
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Image.asset('assets/images/bag.png'),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(right: 110),
                    child: Text(
                      AppString.connect,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    AppString.global,
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          isDismissible: true,
                          context: context,
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.cyanAccent,
                                      Colors.lightBlueAccent,
                                    ],
                                  ),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                    horizontal: 20,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 20,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 9,
                                              ),
                                              child: Icon(
                                                Icons.arrow_back_ios,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 40,
                                            child: Icon(Icons.person, size: 40),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            AppString.create,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            AppString.information,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          TextField(
                                            decoration: InputDecoration(
                                              hintText: AppString.name,
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          TextField(
                                            decoration: InputDecoration(
                                              hintText: AppString.email,
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          TextField(
                                            decoration: InputDecoration(
                                              hintText: AppString.password,
                                              border: OutlineInputBorder(),
                                              suffixIcon: Icon(
                                                Icons.remove_red_eye,
                                              ),
                                            ),
                                            obscureText: true,
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                AppString.accept,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                AppString.terms,
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(AppString.and),
                                          Text(
                                            AppString.policy,
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          Text(AppString.data),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [Text(AppString.lts)],
                                      ),
                                      SizedBox(height: 20),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black,
                                          minimumSize: Size(300, 50),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                            isDismissible: true,
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Colors.cyanAccent,
                                                      Colors.cyan,
                                                    ],
                                                    begin: Alignment.topRight,
                                                    end: Alignment.bottomRight,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        vertical: 30,
                                                        horizontal: 30,
                                                      ),
                                                  child: Column(
                                                    children: [
                                                      CircleAvatar(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                left: 10,
                                                              ),
                                                          child: Icon(
                                                            Icons
                                                                .arrow_back_ios,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 20),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons.verified_user,
                                                            size: 40,
                                                            color:
                                                                const Color.fromARGB(
                                                                  255,
                                                                  9,
                                                                  159,
                                                                  159,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 9),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            AppString
                                                                .verifications,
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 20,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.symmetric(
                                                              horizontal: 40,
                                                            ),
                                                        child: Text(
                                                          AppString.code,
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(height: 10),
                                                      Form(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            SizedBox(
                                                              height: 55,
                                                              width: 45,
                                                              child: TextField(
                                                                decoration: InputDecoration(
                                                                  filled: true,
                                                                  fillColor:
                                                                      Colors
                                                                          .white,
                                                                  border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.vertical(
                                                                      bottom:
                                                                          Radius.circular(
                                                                            10,
                                                                          ),
                                                                      top:
                                                                          Radius.circular(
                                                                            10,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                style: Theme.of(
                                                                  context,
                                                                ).textTheme.headlineMedium,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                inputFormatters: [
                                                                  LengthLimitingTextInputFormatter(
                                                                    1,
                                                                  ),
                                                                  FilteringTextInputFormatter
                                                                      .digitsOnly,
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 55,
                                                              width: 45,
                                                              child: TextField(
                                                                decoration: InputDecoration(
                                                                  filled: true,
                                                                  fillColor:
                                                                      Colors
                                                                          .white,
                                                                  border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.vertical(
                                                                      bottom:
                                                                          Radius.circular(
                                                                            10,
                                                                          ),
                                                                      top:
                                                                          Radius.circular(
                                                                            10,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                style: Theme.of(
                                                                  context,
                                                                ).textTheme.headlineMedium,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                inputFormatters: [
                                                                  LengthLimitingTextInputFormatter(
                                                                    1,
                                                                  ),
                                                                  FilteringTextInputFormatter
                                                                      .digitsOnly,
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 55,
                                                              width: 45,
                                                              child: TextField(
                                                                decoration: InputDecoration(
                                                                  filled: true,
                                                                  fillColor:
                                                                      Colors
                                                                          .white,
                                                                  border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.vertical(
                                                                      bottom:
                                                                          Radius.circular(
                                                                            10,
                                                                          ),
                                                                      top:
                                                                          Radius.circular(
                                                                            10,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                style: Theme.of(
                                                                  context,
                                                                ).textTheme.headlineMedium,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                inputFormatters: [
                                                                  LengthLimitingTextInputFormatter(
                                                                    1,
                                                                  ),
                                                                  FilteringTextInputFormatter
                                                                      .digitsOnly,
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 55,
                                                              width: 45,
                                                              child: TextField(
                                                                decoration: InputDecoration(
                                                                  filled: true,
                                                                  fillColor:
                                                                      Colors
                                                                          .white,
                                                                  border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.vertical(
                                                                      bottom:
                                                                          Radius.circular(
                                                                            10,
                                                                          ),
                                                                      top:
                                                                          Radius.circular(
                                                                            10,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                style: Theme.of(
                                                                  context,
                                                                ).textTheme.headlineMedium,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                inputFormatters: [
                                                                  LengthLimitingTextInputFormatter(
                                                                    1,
                                                                  ),
                                                                  FilteringTextInputFormatter
                                                                      .digitsOnly,
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 55,
                                                              width: 45,
                                                              child: TextField(
                                                                decoration: InputDecoration(
                                                                  filled: true,
                                                                  fillColor:
                                                                      Colors
                                                                          .white,
                                                                  border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.vertical(
                                                                      bottom:
                                                                          Radius.circular(
                                                                            10,
                                                                          ),
                                                                      top:
                                                                          Radius.circular(
                                                                            10,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                style: Theme.of(
                                                                  context,
                                                                ).textTheme.headlineMedium,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                inputFormatters: [
                                                                  LengthLimitingTextInputFormatter(
                                                                    1,
                                                                  ),
                                                                  FilteringTextInputFormatter
                                                                      .digitsOnly,
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 55,
                                                              width: 45,
                                                              child: TextField(
                                                                decoration: InputDecoration(
                                                                  filled: true,
                                                                  fillColor:
                                                                      Colors
                                                                          .white,
                                                                  border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.vertical(
                                                                      bottom:
                                                                          Radius.circular(
                                                                            10,
                                                                          ),
                                                                      top:
                                                                          Radius.circular(
                                                                            10,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                style: Theme.of(
                                                                  context,
                                                                ).textTheme.headlineMedium,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                inputFormatters: [
                                                                  LengthLimitingTextInputFormatter(
                                                                    1,
                                                                  ),
                                                                  FilteringTextInputFormatter
                                                                      .digitsOnly,
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 1),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            AppString
                                                                .didntrecivecode,
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          TextButton(
                                                            onPressed: () {},

                                                            child: Text(
                                                              AppString.resend,
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.blue,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Text(
                                          AppString.buttontext,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            AppString.haveanaccount,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17,
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              AppString.login,
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.lightBlue,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              minimumSize: Size(300, 50),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.apple,
                                                  size: 40,
                                                  color: Colors.black,
                                                ),

                                                Text(
                                                  AppString.apple,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 17,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: Size(400, 60),
                      ),
                      child: Text(
                        AppString.buttontext,
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
