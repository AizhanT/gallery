class LoadData {
  Urls? urls;

  LoadData({this.urls});

  LoadData.fromJson(Map<String, dynamic> json) {
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.urls != null) {
      data['urls'] = this.urls!.toJson();
    }
    return data;
  }
}

class Urls {
  String? full;

  Urls({this.full});

  Urls.fromJson(Map<String, dynamic> json) {
    full = json['full'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['full'] = this.full;

    return data;
  }
}
