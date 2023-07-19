// ignore_for_file: unnecessary_this, unnecessary_new, prefer_collection_literals, recursive_getters

class Product {
  String? sId;
  String? productName;
  String? description;
  String? image;
  String? category;
  String? foodType;
  String? baseType;
  String? productUrl;
  String? downloadUrl;
  List<RequirementSpecification>? requirementSpecification;
  List<String>? highlights;
  String? stripeProductId;
  List<FeedbackDetails>? feedbackDetails;
  List<SkuDetails>? skuDetails;
  String? createdAt;
  String? updatedAt;
  int? iV;
  int? avgRating;
  late List<Product> _products;
  List<Product> get products => _products;

  Product(
      {this.sId,
      this.productName,
      this.description,
      this.image,
      this.category,
      this.foodType,
      this.baseType,
      this.productUrl,
      this.downloadUrl,
      this.requirementSpecification,
      this.highlights,
      this.stripeProductId,
      this.feedbackDetails,
      this.skuDetails,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.avgRating});

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    productName = json['productName'];
    description = json['description'];
    image = json['image'];
    category = json['category'];
    foodType = json['foodType'];
    baseType = json['baseType'];
    productUrl = json['productUrl'];
    downloadUrl = json['downloadUrl'];
    if (json['requirementSpecification'] != null) {
      requirementSpecification = <RequirementSpecification>[];
      json['requirementSpecification'].forEach((v) {
        requirementSpecification!.add(new RequirementSpecification.fromJson(v));
      });
    }
    highlights = json['highlights'].cast<String>();
    stripeProductId = json['stripeProductId'];
    if (json['feedbackDetails'] != null) {
      feedbackDetails = <FeedbackDetails>[];
      json['feedbackDetails'].forEach((v) {
        feedbackDetails!.add(new FeedbackDetails.fromJson(v));
      });
    }
    if (json['skuDetails'] != null) {
      skuDetails = <SkuDetails>[];
      json['skuDetails'].forEach((v) {
        skuDetails!.add(new SkuDetails.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    avgRating = json['avgRating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['productName'] = this.productName;
    data['description'] = this.description;
    data['image'] = this.image;
    data['category'] = this.category;
    data['foodType'] = this.foodType;
    data['baseType'] = this.baseType;
    data['productUrl'] = this.productUrl;
    data['downloadUrl'] = this.downloadUrl;
    if (this.requirementSpecification != null) {
      data['requirementSpecification'] =
          this.requirementSpecification!.map((v) => v.toJson()).toList();
    }
    data['highlights'] = this.highlights;
    data['stripeProductId'] = this.stripeProductId;
    if (this.feedbackDetails != null) {
      data['feedbackDetails'] =
          this.feedbackDetails!.map((v) => v.toJson()).toList();
    }
    if (this.skuDetails != null) {
      data['skuDetails'] = this.skuDetails!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['avgRating'] = this.avgRating;
    return data;
  }
}

class RequirementSpecification {
  String? wholeSaller;
  String? retailer;
  String? quantity;

  RequirementSpecification({this.wholeSaller, this.retailer, this.quantity});

  RequirementSpecification.fromJson(Map<String, dynamic> json) {
    wholeSaller = json['WholeSaller'];
    retailer = json['Retailer'];
    quantity = json['Quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['WholeSaller'] = this.wholeSaller;
    data['Retailer'] = this.retailer;
    data['Quantity'] = this.quantity;
    return data;
  }
}

class FeedbackDetails {
  String? customerId;
  String? customerName;
  int? rating;
  String? feedbackMsg;
  String? sId;
  String? createdAt;
  String? updatedAt;

  FeedbackDetails(
      {this.customerId,
      this.customerName,
      this.rating,
      this.feedbackMsg,
      this.sId,
      this.createdAt,
      this.updatedAt});

  FeedbackDetails.fromJson(Map<String, dynamic> json) {
    customerId = json['customerId'];
    customerName = json['customerName'];
    rating = json['rating'];
    feedbackMsg = json['feedbackMsg'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customerId'] = this.customerId;
    data['customerName'] = this.customerName;
    data['rating'] = this.rating;
    data['feedbackMsg'] = this.feedbackMsg;
    data['_id'] = this.sId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class SkuDetails {
  String? skuName;
  int? price;
  int? validity;
  bool? lifetime;
  String? stripePriceId;
  String? skuCode;
  String? sId;
  String? updatedAt;

  SkuDetails(
      {this.skuName,
      this.price,
      this.validity,
      this.lifetime,
      this.stripePriceId,
      this.skuCode,
      this.sId,
      this.updatedAt});

  SkuDetails.fromJson(Map<String, dynamic> json) {
    skuName = json['skuName'];
    price = json['price'];
    validity = json['validity'];
    lifetime = json['lifetime'];
    stripePriceId = json['stripePriceId'];
    skuCode = json['skuCode'];
    sId = json['_id'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['skuName'] = this.skuName;
    data['price'] = this.price;
    data['validity'] = this.validity;
    data['lifetime'] = this.lifetime;
    data['stripePriceId'] = this.stripePriceId;
    data['skuCode'] = this.skuCode;
    data['_id'] = this.sId;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
