// http://159.89.4.181:2000/api/v1/cases?caseStatus=2

class PrisonerModel {
  PrisonerModel({
    required this.statusCode,
    required this.success,
    required this.message,
    required this.model,
    required this.meta,
    this.errors,
  });
  late final int statusCode;
  late final bool success;
  late final String message;
  late final List<Model> model;
  late final Meta meta;
  late final Null errors;

  PrisonerModel.fromJson(Map<String, dynamic> json){
    statusCode = json['statusCode'];
    success = json['success'];
    message = json['message'];
    model = List.from(json['model']).map((e)=>Model.fromJson(e)).toList();
    meta = Meta.fromJson(json['meta']);
    errors = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['statusCode'] = statusCode;
    _data['success'] = success;
    _data['message'] = message;
    _data['model'] = model.map((e)=>e.toJson()).toList();
    _data['meta'] = meta.toJson();
    _data['errors'] = errors;
    return _data;
  }
}

class Model {
  Model({
    required this.id,
    this.name,
    required this.number,
    this.place,
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
  late final String? name;
  late final String number;
  late final String? place;
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
    place = null;
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

class Meta {
  Meta({
    required this.lastPage,
  });
  late final int lastPage;

  Meta.fromJson(Map<String, dynamic> json){
    lastPage = json['lastPage'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['lastPage'] = lastPage;
    return _data;
  }
}