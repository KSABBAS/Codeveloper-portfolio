import 'package:codeveloper_portfolio/Data/membersData.dart';
import 'package:codeveloper_portfolio/MyTools.dart';
import 'package:codeveloper_portfolio/constants/UsedColors.dart';
import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TypeWriterController typeWriterController = TypeWriterController(
      text:
          "At GoDeveloper, we are dedicated to delivering high-quality, innovative software solutions that help businesses and individuals thrive in the digital world. Specializing in both mobile and web application development, we leverage the latest technologies to create scalable, efficient, and user-friendly products. Our expertise spans across various platforms, including Flutter, Kotlin, Java, and PostgreSQL, ensuring that we can provide tailored solutions to meet the unique needs of each client. Our mission is to bridge the gap between ideas and execution by offering end-to-end development services. From concept and design to implementation and maintenance, we handle every step of the process with precision and attention to detail. Whether it’s a mobile app to enhance customer engagement or a robust backend system to support complex business operations, our solutions are designed to be intuitive, scalable, and future-proof.At GoDeveloper, we believe that collaboration is key to success. We work closely with our clients to understand their goals, challenges, and target audience, ensuring that our products not only meet but exceed expectations. Our commitment to transparency and communication ensures that clients are involved in every stage of the development process, fostering trust and delivering results that align with their vision. Innovation is at the heart of everything we do. We constantly explore new tools, frameworks, and methodologies to stay ahead of the curve, ensuring that our solutions are built on the latest and most reliable technologies. In addition to our technical expertise, we pride ourselves on delivering aesthetically pleasing, user-friendly interfaces that enhance the overall experience for end-users. By combining functionality with creativity, we create products that are not only powerful but also enjoyable to use. GoDeveloper is your trusted partner for turning ideas into digital solutions that drive success.",
      duration: Duration(milliseconds: 1));
  @override
  Widget build(BuildContext context) {
    return CMaker(
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              UsedColors.black,
              UsedColors.gray,
              UsedColors.black,
            ]),
        child: CMaker(
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(86, 0, 0, 0),
              offset: Offset(2, 3),
              blurRadius: 10,
              spreadRadius: .2,
            )
          ],
          color: UsedColors.gray,
          circularRadius: 20,
          margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 40),
          child: ListView(
            children: [
              PMaker(
                top: 30,
              ),
              CMaker(
                width: double.infinity,
                height: 350,
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CMaker(
                          height: 200,
                          width: 200,
                          child: CircleAvatar(
                              child: ClipOval(
                                  child:
                                      Image.asset("images/Codeveloper.jpg"))),
                        ),
                        CMaker(
                          width: 270,
                          circularRadius: 20,
                          height: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: CMaker(
                                      height: 70,
                                      width: 70,
                                      child:
                                          Image.asset("images/5968764.png"))),
                              IconButton(
                                  onPressed: () {},
                                  icon: CMaker(
                                      height: 70,
                                      width: 70,
                                      child:
                                          Image.asset("images/15707749.png"))),
                              IconButton(
                                  onPressed: () {},
                                  icon: CMaker(
                                      height: 70,
                                      width: 70,
                                      child:
                                          Image.asset("images/4494497.png"))),
                            ],
                          ),
                        )
                      ],
                    ),
                    Expanded(child: CMaker()),
                    Expanded(
                        flex: 10,
                        child: CMaker(
                            child: ListView(
                          children: [
                            TypeWriter(
                              controller: typeWriterController,
                              builder: (p0, value) {
                                return Text(
                                  textAlign: TextAlign.center,
                                  value.text,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                );
                              },
                            ),
                          ],
                        ))),
                    Expanded(child: CMaker()),
                  ],
                ),
              ),
              PMaker(
                top: 20,
              ),
              CMaker(
                height: 200,
                width: 500,
                child: WGridBuilder(
                    builder: (Index) {
                      return Text("hi$Index");
                    },
                    itemCount: MembersData.GetMembersData().length,
                    crossAxisCount: MembersData.GetMembersData().length),
              )
            ],
          ),
        ),
      );
  }
}