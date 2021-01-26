part of 'widgets.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  CustomBottomNavBar({this.selectedIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(0);
              }
            },
            child: Container(
              width: 65,
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    size: 30,
                    color: (selectedIndex == 0) ? mainColor : Color(0xFF8E8E93),
                  ),
                  Text(
                    "Home",
                    style: (selectedIndex == 0)
                        ? GoogleFonts.poppins(
                            color: mainColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )
                        : GoogleFonts.poppins(
                            color: Color(0xFF8E8E93),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Container(
              width: 65,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 65),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    MdiIcons.calendarBlank,
                    size: 30,
                    color: (selectedIndex == 1) ? mainColor : Color(0xFF8E8E93),
                  ),
                  Text(
                    "Inventory",
                    style: (selectedIndex == 1)
                        ? GoogleFonts.poppins(
                            color: mainColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )
                        : GoogleFonts.poppins(
                            color: Color(0xFF8E8E93),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: Container(
              width: 65,
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    size: 30,
                    color: (selectedIndex == 2) ? mainColor : Color(0xFF8E8E93),
                  ),
                  Text(
                    "Student",
                    style: (selectedIndex == 2)
                        ? GoogleFonts.poppins(
                            color: mainColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )
                        : GoogleFonts.poppins(
                            color: Color(0xFF8E8E93),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
