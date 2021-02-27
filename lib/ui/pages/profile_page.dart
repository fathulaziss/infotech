part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      "Student",
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
          Material(
            elevation: 1,
            child: Container(
              width: double.infinity,
              height: 220,
              child: Column(
                children: [
                  Container(
                    width: 72,
                    height: 72,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      Icons.person_pin,
                      size: 60,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Mahasiswa Baru',
                    style: blackTextFont.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '201610370311001',
                    style: blackTextFont.copyWith(
                        fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(17, 17, 17, 0),
            child: Wrap(
              spacing: 24,
              runSpacing: 24,
              children: generateUserMenuWidgets(context),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> generateUserMenuWidgets(BuildContext context) {
    double width = (MediaQuery.of(context).size.width - 2 * 24 - 24) / 2;
    return mockUserMenu
        .map(
          (e) => Container(
            width: width,
            height: 115,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
              boxShadow: [BoxShadow(blurRadius: 1, color: Colors.black26)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 44,
                  width: 44,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                    image: DecorationImage(
                      image: AssetImage(e.picturePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  e.userMenu,
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
          ),
        )
        .toList();
  }
}
