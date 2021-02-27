part of 'pages.dart';

class InventoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Material(
            color: Colors.white,
            elevation: 1,
            child: Container(
              height: 44,
              child: Center(
                child: Text(
                  "Inventory",
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(17, 17, 17, 0),
            child: Wrap(
              spacing: 24,
              runSpacing: 24,
              children: generateInventoryWidgets(context),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> generateInventoryWidgets(BuildContext context) {
    double width = (MediaQuery.of(context).size.width - 2 * 24 - 24) / 2;
    return mockInventory
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
                  e.inventoryName,
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
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
