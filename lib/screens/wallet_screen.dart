import 'package:flutter/material.dart';
import 'package:paysmart/utils/constants.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 24,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("My wallet",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: defaultSpacing * 2,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Bank account",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: fontSizeTitle, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: defaultSpacing,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset.zero,
                          spreadRadius: 3,
                          blurRadius: 12)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(35, 60, 103, 1),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: primaryDark,
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                          Text(
                            "VISA",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Text(
                        "**** **** **** 9453",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.0),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "CARD HOLDER",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue[100],
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 2.0),
                              ),
                              Text(
                                "HAITHEM GHATTAS",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[100],
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 2.0),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "EXPIRES",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue[100],
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 2.0),
                              ),
                              Text(
                                "08/25",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[100],
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 2.0),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )),
              const SizedBox(
                height: defaultSpacing * 2,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Phone Number",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: fontSizeTitle, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset.zero,
                          spreadRadius: 3,
                          blurRadius: 12)
                    ],
                    color: background,
                    borderRadius:
                        BorderRadius.all(Radius.circular(defaultRadius))),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                margin: const EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.lightBlue[900],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(defaultSpacing),
                          child: Text(
                            "52 693 684",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 16,
                      backgroundColor: primaryDark,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
