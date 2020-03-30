class Page {
  int size;
  int totalElements;
  int totalPages;
  int number;

  Page({this.size, this.totalElements, this.totalPages, this.number});

  Page.fromJson(Map<String, dynamic> json) {
    size = json['size'];
    totalElements = json['totalElements'];
    totalPages = json['totalPages'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['size'] = this.size;
    data['totalElements'] = this.totalElements;
    data['totalPages'] = this.totalPages;
    data['number'] = this.number;
    return data;
  }
}