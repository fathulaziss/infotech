part of 'pages.dart';

class StuffPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SafeArea(
                child: Stack(
                  children: [
                    Material(
                      color: Colors.white,
                      elevation: 1,
                      child: Container(
                        width: double.infinity,
                        height: 44,
                        child: Center(
                          child: Text(
                            "All Left Stuff",
                            style: blackTextFont.copyWith(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 16, top: 12),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
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
        ],
      ),
    );
  }

  List<Widget> generateStuffWidgets(BuildContext context) {
    return mockStuff
        .map(
          (stuff) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => StuffDetailPage(stuff: stuff)),
              );
            },
            child: Container(
              width: 167,
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
                    width: 167,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(stuff.picturePath),
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
                          stuff.name,
                          style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                        ),
                        Text(
                          stuff.description,
                          style: (stuff.description == "Available")
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
          ),
        )
        .toList();
  }
}
