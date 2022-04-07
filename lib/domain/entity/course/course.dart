import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/model/course/course.dart' as data;
part 'course.freezed.dart';
part 'course.g.dart';

@Freezed()
class Course with _$Course {
  const Course._();
  const factory Course({
    String? iri,
    int? id,
    String? title,
    String? picture,
    String? time,
    String? description,
    Location? location,
    School? school,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
  static const empty = Course();

  static List<Course> listFromMapData(dynamic str) {
    return List<Course>.from(str.map((model) => Course.fromDataModel(model)));
  }

  static fromDataModel(data.Course dataModel) {
    return Course.fromJson(dataModel.toMap());
  }

  data.Course toDataModel() {
    return data.Course.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
