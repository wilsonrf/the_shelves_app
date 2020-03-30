import 'package:the_shelves_app/common/embedded.dart';
import 'package:the_shelves_app/common/links.dart';
import 'package:the_shelves_app/common/page.dart';

class HalCollection {

  Embedded embedded;
  Links links;
  Page page;

  HalCollection({this.embedded, this.links, this.page});

  HalCollection.fromJson(Map<String, dynamic> json) {
    embedded = json['_embedded'] != null
        ? new Embedded.fromJson(json['_embedded'])
        : null;
    links = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
    page = json['page'] != null ? new Page.fromJson(json['page']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.embedded != null) {
      data['_embedded'] = this.embedded.toJson();
    }
    if (this.links != null) {
      data['_links'] = this.links.toJson();
    }
    if (this.page != null) {
      data['page'] = this.page.toJson();
    }
    return data;
  }
}