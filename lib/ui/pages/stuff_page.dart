part of 'pages.dart';

class StuffPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Material(
            color: Colors.white,
            elevation: 1,
            child: Container(
              width: double.infinity,
              height: 88,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(HomePage());
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(16, 30, 100, 0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      "All Left Stuff",
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(17, 17, 17, 0),
            child: Wrap(
              spacing: 24,
              runSpacing: 24,
              children: generateStuffWidgets(context),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> generateStuffWidgets(BuildContext context) {
    double width = (MediaQuery.of(context).size.width - 2 * 24 - 24) / 2;

    return mockStuff
        .map(
          (e) => Container(
            width: width,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
              boxShadow: [BoxShadow(blurRadius: 1, color: Colors.black26)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(e.picturePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  margin: EdgeInsets.fromLTRB(11, 10, 5, 11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.name,
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                      Text(
                        e.description,
                        style: (e.description == "Available")
                            ? GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF04BC2C),
                              )
                            : GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF969696),
                              ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
        .toList();
  }
}
