class ListItensModels {
  int? id;
  String? description;
  // ToDoListModels({this.id, this.description});

  categoryMap() {
    var map = Map<String, dynamic>();
    map['id'] = id;
    map['description'];
    return map;
  }
}
