class Product {
  String? id;
  String productName;
  String description;
  String image;
  String category;
  String foodType;
  String baseType;
  String productUrl;
  String downloadUrl;
  List<Map<String, String>> requirementSpecification;
  List<String> highlights;
  String stripeProductId;
  List<Map<String, dynamic>> feedbackDetails;
  List<Map<String, dynamic>> skuDetails;
  String createdAt;
  String updatedAt;
  int v;
  ImageDetails imageDetails;
  int avgRating;

  Product({
    this.id,
    required this.productName,
    required this.description,
    required this.image,
    required this.category,
    required this.foodType,
    required this.baseType,
    required this.productUrl,
    required this.downloadUrl,
    required this.requirementSpecification,
    required this.highlights,
    required this.stripeProductId,
    required this.feedbackDetails,
    required this.skuDetails,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.imageDetails,
    required this.avgRating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['_id'],
      productName: json['productName'],
      description: json['description'],
      image: json['image'],
      category: json['category'],
      foodType: json['foodType'],
      baseType: json['baseType'],
      productUrl: json['productUrl'],
      downloadUrl: json['downloadUrl'],
      requirementSpecification:
          List<Map<String, String>>.from(json['requirementSpecification']),
      highlights: List<String>.from(json['highlights']),
      stripeProductId: json['stripeProductId'],
      feedbackDetails: List<Map<String, dynamic>>.from(json['feedbackDetails']),
      skuDetails: List<Map<String, dynamic>>.from(json['skuDetails']),
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      v: json['__v'],
      imageDetails: ImageDetails.fromJson(json['imageDetails']),
      avgRating: json['avgRating'],
    );
  }
}

class ImageDetails {
  String assetId;
  String publicId;
  int version;
  String versionId;
  String signature;
  int width;
  int height;
  String format;
  String resourceType;
  String createdAt;
  List<dynamic> tags;
  int bytes;
  String type;
  String etag;
  bool placeholder;
  String url;
  String secureUrl;
  String folder;
  String originalFilename;
  String apiKey;

  ImageDetails({
    required this.publicId,
    required this.assetId,
    required this.version,
    required this.versionId,
    required this.signature,
    required this.width,
    required this.height,
    required this.format,
    required this.resourceType,
    required this.createdAt,
    required this.tags,
    required this.bytes,
    required this.type,
    required this.etag,
    required this.placeholder,
    required this.url,
    required this.secureUrl,
    required this.folder,
    required this.originalFilename,
    required this.apiKey,
  });

  factory ImageDetails.fromJson(Map<String, dynamic> json) {
    return ImageDetails(
      assetId: json['asset_id'],
      publicId: json['public_id'],
      version: json['version'],
      versionId: json['version_id'],
      signature: json['signature'],
      width: json['width'],
      height: json['height'],
      format: json['format'],
      resourceType: json['resource_type'],
      createdAt: json['created_at'],
      tags: List<dynamic>.from(json['tags']),
      bytes: json['bytes'],
      type: json['type'],
      etag: json['etag'],
      placeholder: json['placeholder'],
      url: json['url'],
      secureUrl: json['secure_url'],
      folder: json['folder'],
      originalFilename: json['original_filename'],
      apiKey: json['api_key'],
    );
  }
}
