part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                elevation: 2,
                color: Colors.white,
                child: Container(
                  height: 44,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 170),
                        child: Text(
                          "Hubla Main",
                          style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.only(right: 24),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/menu_ic.png"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 13, left: 16, bottom: 17),
                child: Text(
                  "Info",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
              // List Info
              Container(
                width: double.infinity,
                height: 216,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: mockInfo
                          .map((e) => Padding(
                                padding: EdgeInsets.only(
                                  left: (e == mockInfo.first) ? 16 : 0,
                                  right: 16,
                                ),
                                child: InfoCard(e),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Left Stuff",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StuffPage(),
                            ));
                      },
                      child: Text(
                        "View All",
                        style: GoogleFonts.poppins(
                            color: Color(0xFF0071ED),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              // List Stuff
              Container(
                width: double.infinity,
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: mockStuff
                          .map((stuff) => Padding(
                                padding: EdgeInsets.only(
                                  left: (stuff == mockStuff.first) ? 16 : 0,
                                  right: 10,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              StuffDetailPage(stuff: stuff)),
                                    );
                                  },
                                  child: StuffCard(stuff),
                                ),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Event",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => EventPage()),
                        );
                      },
                      child: Text(
                        "View All",
                        style: GoogleFonts.poppins(
                            color: Color(0xFF0071ED),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              // List Event
              Container(
                width: double.infinity,
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: mockEvent
                          .map((e) => Padding(
                                padding: EdgeInsets.only(
                                  left: (e == mockEvent.first) ? 16 : 0,
                                  right: 12,
                                ),
                                child: EventCard(e),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Certification",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "View All",
                      style: GoogleFonts.poppins(
                          color: Color(0xFF0071ED),
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              // List Certification
              Container(
                width: double.infinity,
                height: 125,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: mockCertification
                          .map((e) => Padding(
                              padding: EdgeInsets.only(
                                left: (e == mockCertification.first) ? 16 : 0,
                                right: 12,
                              ),
                              child: CertificationCard(e)))
                          .toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 75,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
