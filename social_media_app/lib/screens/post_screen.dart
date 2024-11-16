import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 168, 206, 237),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Image.asset(
                      fit: BoxFit.cover,
                      'assets/images/bike_roadtrip.jpg',
                      height: h / 2.3,
                    ),
                    SizedBox(
                      height: 36,
                    )
                  ],
                ),
                Positioned(
                  bottom: 0.0,
                  right: 25.0,
                  child: CircleAvatar(
                    radius: 36.0,
                    foregroundImage:
                        AssetImage('assets/images/my_profile_photo.png'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 10.0,
                    color: Colors.red,
                  ),
                  Text(' Social Media Post Title Here',
                      style: GoogleFonts.lato(
                          fontSize: 28.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                      ' The Lorem ipum filling text is used by graphic designers',
                      style: GoogleFonts.lato(
                          fontSize: 16.0, color: Colors.black87)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DataIconWidget(
                          dataText: '20',
                          iconData: Icons.favorite,
                        ),
                        DataIconWidget(
                          dataText: '34',
                          iconData: Icons.logout_outlined,
                        ),
                        DataIconWidget(
                          dataText: '83',
                          iconData: Icons.question_answer_outlined,
                        ),
                        DataIconWidget(
                          dataText: '89',
                          iconData: Icons.face,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    maxLines: 8,
                    'Lorem ipsum odor amet, consectetuer adipiscing elit. Sagittis per eros augue urna metus maecenas. Justo lacinia fames varius ultricies proin; arcu quisque vehicula. Est ultricies commodo pulvinar metus hac congue in finibus. \n\nPorta metus mollis mollis sollicitudin est sem penatibus tortor sagittis. Egestas praesent vitae ad maximus congue. Malesuada diam sed netus mus dui. ',
                    style: GoogleFonts.lato(
                      fontSize: 18.0,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DataIconWidget extends StatelessWidget {
  final String dataText;
  final IconData iconData;
  const DataIconWidget({
    required this.dataText,
    required this.iconData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          dataText,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Icon(iconData),
      ],
    );
  }
}
