class Course {
   late String id;

  late String teacherName;

  late String courseName;

  late String numberOfLessons;

  Course();

  Course.fromMap(Map<String, dynamic> documentMap) {
    teacherName = documentMap['teacherName'];
    courseName = documentMap['courseName'];
    numberOfLessons = documentMap['numberOfLessons'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['teacherName'] = teacherName;
    map['courseName'] = courseName;
    map['numberOfLessons'] = numberOfLessons;
    return map;
  }
}
