part of 'widgets.dart';

class CertificationCard extends StatelessWidget {
  final Certification certification;

  CertificationCard(this.certification);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154,
      height: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 1, color: Colors.black26),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 154,
            height: 57,
            margin: EdgeInsets.only(top: 17, bottom: 5),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(certification.picturePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            certification.title,
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
