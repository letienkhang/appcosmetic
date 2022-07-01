import 'dart:convert';

IngredientModel ingredientModelFromJson(String str) =>
    IngredientModel.fromJson(json.decode(str));

String ingredientModelToJson(IngredientModel data) =>
    json.encode(data.toJson());

class IngredientModel {
  IngredientModel(
      {this.id,
      this.name,
      this.function,
      this.safety,
      this.source,
      this.otherName,
      this.description});

  String? name;
  String? function;
  int? safety;
  String? source;
  String? otherName;
  String? description;
  String? id;

  factory IngredientModel.fromJson(Map<String, dynamic> json) =>
      IngredientModel(
        id: json["id"],
        name: json["name"],
        function: json["function"],
        safety: json["safety"] ?? -1,
        source: json["source"],
        otherName: json["otherName"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "function": function,
        "safety": safety,
        "source": source,
        "otherName": otherName,
        "description": description,
      };
}
