import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardJob extends StatelessWidget {
  const CardJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white, // Background color
        boxShadow: [
          BoxShadow(
            color: Colors.grey, // Shadow color
            blurRadius: 4.0, // Spread of the shadow
            offset: Offset(0, 2), // Offset of the shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/googleLogo.png",
                    fit: BoxFit.contain,
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Judul Pekerjaan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("Nama Perusahaan"),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            size: 14,
                            color: Color(0xFFED4F2C),
                          ),
                          Text("Lokasi")
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Wrap(
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines
                alignment: WrapAlignment.start,
                children: [
                  CardAdditionalInfo(
                      information: "Text 1: Lorem ipsum dolor amet"),
                  CardAdditionalInfo(
                    information: "Text 2: Lorem ipsum dolor amet",
                  ),
                  CardAdditionalInfo(
                    information: "Text 3: Lorem ipsum",
                  ),
                  CardAdditionalInfo(
                    information: "Text 4: Lorem ipsum",
                  ),
                  CardAdditionalInfo(
                    information: "Text 5: dolor amet",
                  ),
                  CardAdditionalInfo(
                    information: "Text 6: Lorem ipsum dolor amet",
                  )
                ],
              )
            ],
          ),
          Divider(color: Colors.grey[600], thickness: 0.5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "4 days ago",
                  style: TextStyle(fontSize: 12),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add your button press logic here
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 4.0),
                        backgroundColor: Color(0xFFED4F2C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Apply",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.app_registration,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.bookmark_outline,
                      color: Colors.black,
                      size: 40,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardAdditionalInfo extends StatelessWidget {
  final String information;
  const CardAdditionalInfo({super.key, required this.information});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: const BoxDecoration(
          color: Color(0xFFFF6B49),
          borderRadius: BorderRadius.all(Radius.circular(100))),
      child: Text(
        information,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}
