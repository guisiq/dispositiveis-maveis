class Bank {
  String? ispb;
  String? name;
  int? code;
  String? fullName;

  Bank({this.ispb, this.name, this.code, this.fullName});

  Bank.fromJson(Map<String, dynamic> json) {
    ispb = json['ispb'];
    name = json['name'];
    code = json['code'];
    fullName = json['fullName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ispb'] = this.ispb;
    data['name'] = this.name;
    data['code'] = this.code;
    data['fullName'] = this.fullName;
    return data;
  }
}