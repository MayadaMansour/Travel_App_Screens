class HotelData {
  String? name;
  int? starts;
  int? price;
  String? currency;
  String? image;
  double? reviewScore;
  String? review;
  String? address;

  HotelData(
      {this.name,
        this.starts,
        this.price,
        this.currency,
        this.image,
        this.reviewScore,
        this.review,
        this.address});

  HotelData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    starts = json['starts'];
    price = json['price'];
    currency = json['currency'];
    image = json['image'];
    reviewScore = json['review_score']== null ? 0.0 : json['review_score'].toDouble();
    review = json['review'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['starts'] = this.starts;
    data['price'] = this.price;
    data['currency'] = this.currency;
    data['image'] = this.image;
     data['review_score'] = this.reviewScore;


    data['review'] = this.review;
    data['address'] = this.address;
    return data;
  }
}