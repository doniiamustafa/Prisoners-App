class DetailsModel {
  DetailsModel({
    required this.statusCode,
    required this.success,
    required this.message,
    required this.model,
    this.meta,
    this.errors,
  });
  late final int statusCode;
  late final bool success;
  late final String message;
  late final Model model;
  late final Null meta;
  late final Null errors;

  DetailsModel.fromJson(Map<String, dynamic> json){
    statusCode = json['statusCode'];
    success = json['success'];
    message = json['message'];
    model = Model.fromJson(json['model']);
    meta = null;
    errors = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['statusCode'] = statusCode;
    _data['success'] = success;
    _data['message'] = message;
    _data['model'] = model.toJson();
    _data['meta'] = meta;
    _data['errors'] = errors;
    return _data;
  }
}

class Model {
  Model({
    required this.id,
    this.name,
    required this.number,
    required this.details,
    required this.place,
    required this.thumbnail,
    required this.image,
    required this.status,
    required this.neededAmount,
    required this.collectedAmount,
    required this.isPinned,
    required this.createdAt,
    required this.updatedAt,
  });
  late final String id;
  late final Null name;
  late final String number;
  late final String details;
  late final String place;
  late final String thumbnail;
  late final String image;
  late final String status;
  late final int neededAmount;
  late final int collectedAmount;
  late final bool isPinned;
  late final String createdAt;
  late final String updatedAt;

  Model.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = null;
    number = json['number'];
    details = json['details'];
    place = json['place'];
    thumbnail = json['thumbnail'];
    image = json['image'];
    status = json['status'];
    neededAmount = json['neededAmount'];
    collectedAmount = json['collectedAmount'];
    isPinned = json['isPinned'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['number'] = number;
    _data['details'] = details;
    _data['place'] = place;
    _data['thumbnail'] = thumbnail;
    _data['image'] = image;
    _data['status'] = status;
    _data['neededAmount'] = neededAmount;
    _data['collectedAmount'] = collectedAmount;
    _data['isPinned'] = isPinned;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    return _data;
  }
}