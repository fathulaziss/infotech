part of 'widgets.dart';

class StuffCard extends StatelessWidget {
  final Stuff stuff;

  StuffCard(this.stuff);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(spreadRadius: 1, blurRadius: 2, color: Colors.black26)
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 120,
            width: 120,
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
            margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stuff.name,
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                ),
                Text(
                  stuff.description,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF04BC2C),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
