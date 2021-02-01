part of 'models.dart';

class Certification extends Equatable {
  final int id;
  final String title;
  final String detailTitle;
  final String picturePath;
  final String examTitle;
  final String examCode;
  final String cost;
  final String formatExam;
  final int duration;
  final int passingScore;

  Certification(
      {this.id,
      this.title,
      this.detailTitle,
      this.picturePath,
      this.examTitle,
      this.examCode,
      this.cost,
      this.formatExam,
      this.duration,
      this.passingScore});

  @override
  List<Object> get props => [
        id,
        title,
        detailTitle,
        picturePath,
        examTitle,
        examCode,
        cost,
        formatExam,
        duration,
        passingScore
      ];
}

List<Certification> mockCertification = [
  Certification(
      id: 1,
      title: "Java SE 11",
      picturePath:
          "https://cdn.app.compendium.com/uploads/user/e7c690e8-6ff9-102a-ac6d-e4aebca50425/9f78fc09-faec-4068-82bd-09e7cc8bbf34/File/5e992a1d408cf9773157761c0fa13bb9/java_se_8u131_releases__bl.png",
      detailTitle: "Oracle Certified Profesional: Java SE 11 Developer",
      examTitle: "Java Foundations",
      examCode: "1Z0-811",
      cost: "Free",
      formatExam: "Multiple Choice",
      duration: 150,
      passingScore: 65),
  Certification(
      id: 2,
      title: "Java SE 8",
      picturePath:
          "https://cdn.app.compendium.com/uploads/user/e7c690e8-6ff9-102a-ac6d-e4aebca50425/9f78fc09-faec-4068-82bd-09e7cc8bbf34/File/5e992a1d408cf9773157761c0fa13bb9/java_se_8u131_releases__bl.png",
      detailTitle: "Oracle Certified Profesional: Java SE 8 Developer",
      examTitle: "Java Foundations",
      examCode: "1Z0-812",
      cost: "Free",
      formatExam: "Multiple Choice",
      duration: 150,
      passingScore: 65),
  Certification(
      id: 3,
      title: "Java EE 7",
      picturePath:
          "https://cdn.app.compendium.com/uploads/user/e7c690e8-6ff9-102a-ac6d-e4aebca50425/9f78fc09-faec-4068-82bd-09e7cc8bbf34/File/5e992a1d408cf9773157761c0fa13bb9/java_se_8u131_releases__bl.png",
      detailTitle: "Oracle Certified Profesional: Java EE 7 Developer",
      examTitle: "Java Foundations",
      examCode: "1Y0-811",
      cost: "Free",
      formatExam: "Multiple Choice",
      duration: 150,
      passingScore: 65),
  Certification(
      id: 4,
      title: "Java EE 6",
      picturePath:
          "https://cdn.app.compendium.com/uploads/user/e7c690e8-6ff9-102a-ac6d-e4aebca50425/9f78fc09-faec-4068-82bd-09e7cc8bbf34/File/5e992a1d408cf9773157761c0fa13bb9/java_se_8u131_releases__bl.png",
      detailTitle: "Oracle Certified Profesional: Java EE 6 Developer",
      examTitle: "Java Foundations",
      examCode: "1Y0-812",
      cost: "Free",
      formatExam: "Multiple Choice",
      duration: 150,
      passingScore: 65),
];
