In Dart, JSON data handling with lists of maps and factory constructors involves defining classes with factory constructors to facilitate the conversion between JSON and Dart objects.

### Example JSON Data

```json
[
  {
    "name": "John Doe",
    "age": 30,
    "courses": [
      {"courseName": "Computer Science", "grade": "A"},
      {"courseName": "Mathematics", "grade": "B"}
    ]
  },
  {
    "name": "Jane Smith",
    "age": 25,
    "courses": [
      {"courseName": "Physics", "grade": "A"},
      {"courseName": "Chemistry", "grade": "A"}
    ]
  }
]
```

### Dart Classes

1. **Course Class**

```dart
class Course {
  String courseName;
  String grade;

  Course({required this.courseName, required this.grade});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      courseName: json['courseName'],
      grade: json['grade'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'courseName': courseName,
      'grade': grade,
    };
  }
}
```

2. **User Class**

```dart
class User {
  String name;
  int age;
  List<Course> courses;

  User({required this.name, required this.age, required this.courses});

  factory User.fromJson(Map<String, dynamic> json) {
    var coursesFromJson = json['courses'] as List;
    List<Course> courseList = coursesFromJson.map((courseJson) => Course.fromJson(courseJson)).toList();

    return User(
      name: json['name'],
      age: json['age'],
      courses: courseList,
    );
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> coursesToJson = courses.map((course) => course.toJson()).toList();

    return {
      'name': name,
      'age': age,
      'courses': coursesToJson,
    };
  }
}
```

### JSON to Dart Objects

```dart
import 'dart:convert';

void main() {
  String jsonString = '[{"name": "John Doe", "age": 30, "courses": [{"courseName": "Computer Science", "grade": "A"}, {"courseName": "Mathematics", "grade": "B"}]}, {"name": "Jane Smith", "age": 25, "courses": [{"courseName": "Physics", "grade": "A"}, {"courseName": "Chemistry", "grade": "A"}]}]';

  List<dynamic> jsonData = jsonDecode(jsonString);
  List<User> users = jsonData.map((userJson) => User.fromJson(userJson)).toList();

  // Print user data
  users.forEach((user) {
    print('Name: ${user.name}, Age: ${user.age}');
    user.courses.forEach((course) {
      print('  Course: ${course.courseName}, Grade: ${course.grade}');
    });
  });
}
```

### Dart Objects to JSON

```dart
void main() {
  List<User> users = [
    User(
      name: 'John Doe',
      age: 30,
      courses: [
        Course(courseName: 'Computer Science', grade: 'A'),
        Course(courseName: 'Mathematics', grade: 'B'),
      ],
    ),
    User(
      name: 'Jane Smith',
      age: 25,
      courses: [
        Course(courseName: 'Physics', grade: 'A'),
        Course(courseName: 'Chemistry', grade: 'A'),
      ],
    ),
  ];

  List<Map<String, dynamic>> jsonData = users.map((user) => user.toJson()).toList();
  String jsonString = jsonEncode(jsonData);

  print(jsonString);
}
```

### Summary

- **Factory Constructors**: Create instances from JSON.
- **toJson Method**: Converts instances to JSON.
- **dart:convert**: Library used for encoding and decoding JSON.

This setup ensures easy handling of JSON data with lists of maps in Dart.
