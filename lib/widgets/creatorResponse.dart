import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// class CreatorResponse extends StatelessWidget {
//   const CreatorResponse({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: AppLayout.getHeight(500),
//       width: AppLayout.getWidth(350),
//       decoration: BoxDecoration(color: Colors.white),
//     );
//   }
// }
class CreatorResponse extends StatefulWidget {
  CreatorResponse({super.key});

  @override
  State<CreatorResponse> createState() => _CreatorResponseState();
}

class _CreatorResponseState extends State<CreatorResponse> {
  late TextEditingController emailController;
  late TextEditingController nameController;
  late TextEditingController phoneController;
  Color? submitColor = Colors.orange[100];
  @override
  void initState() {
    // TODO: implement initState
    emailController = TextEditingController();
    nameController = TextEditingController();
    phoneController = TextEditingController();
    super.initState();
  }

  void checkSubmitButton() {
    setState(() {
      if (nameController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          phoneController.text.isNotEmpty) {
        submitColor = Colors.orange;
      } else {
        submitColor = Colors.orange[100];
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: SingleChildScrollView(
          child: SizedBox(
            height: AppLayout.getHeight(550),
            width: AppLayout.getWidth(350),
            child: Padding(
              padding: EdgeInsets.all(AppLayout.getWidth(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Creator Access",
                        style: AppStyles.subHeaderTextStyle.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getWidth(8)),
                            decoration: BoxDecoration(
                                color: AppStyles.secondaryColor,
                                borderRadius: BorderRadius.circular(
                                    AppLayout.getWidth(10))),
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                  Container(
                    height: AppLayout.getHeight(1),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 208, 208, 208),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(2))),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(10),
                  ),
                  TextField(
                    onChanged: (value) {
                      checkSubmitButton();
                    },
                    controller: nameController,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[50],
                      hintText: "Enter Your Name",
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(10)),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.all(AppLayout.getWidth(8)),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(10),
                  ),
                  TextField(
                    onChanged: (value) {
                      checkSubmitButton();
                    },
                    controller: emailController,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[50],
                      hintText: "Email Address",
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(10)),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.all(AppLayout.getWidth(8)),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(10),
                  ),
                  TextField(
                    onChanged: (value) {
                      checkSubmitButton();
                    },
                    controller: phoneController,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[50],
                      hintText: "Mobile No",
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(10)),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.all(AppLayout.getWidth(8)),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(10),
                  ),
                  TextField(
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[50],
                      hintText: "Subject you teach on your channel",
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(10)),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.all(AppLayout.getWidth(8)),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(10),
                  ),
                  TextField(
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[50],
                      hintText: "Youtube channel link(if any?)",
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(10)),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.all(AppLayout.getWidth(8)),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(10),
                  ),
                  TextField(
                    maxLines: 5,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue[50],
                      hintText:
                          "Would you be needing any assistance in channel creation on CipherSchools? If yes, please share your contact number and a good time to call",
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(10)),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.all(AppLayout.getWidth(8)),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Container(
                            width: AppLayout.getWidth(80),
                            padding: EdgeInsets.all(AppLayout.getWidth(8)),
                            decoration: BoxDecoration(
                                color: submitColor,
                                borderRadius: BorderRadius.circular(
                                    AppLayout.getWidth(5))),
                            child: const Center(
                              child: Text(
                                "Submit",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
