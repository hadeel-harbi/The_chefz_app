class Restaurant {
  String? restaurantId;
  String? restaurantName;
  String? restaurantImage;
  String? restaurantLogo;
  String? category;
  String? location;
  String? rating;
  String? ratingMember;
  List<Menu>? menu;

  Restaurant(
      {this.restaurantId,
      this.restaurantName,
      this.restaurantImage,
      this.restaurantLogo,
      this.category,
      this.location,
      this.rating,
      this.ratingMember,
      this.menu});

  Restaurant.fromJson(Map<String, dynamic> json) {
    restaurantId = json['restaurant_id'];
    restaurantName = json['restaurant_name'];
    restaurantImage = json['restaurant_image'];
    restaurantLogo = json['restaurant_logo'];
    category = json['category'];
    location = json['location'];
    rating = json['rating'];
    ratingMember = json['rating_member'];
    if (json['menu'] != null) {
      menu = <Menu>[];
      json['menu'].forEach((v) {
        menu!.add(new Menu.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurant_id'] = this.restaurantId;
    data['restaurant_name'] = this.restaurantName;
    data['restaurant_image'] = this.restaurantImage;
    data['restaurant_logo'] = this.restaurantLogo;
    data['category'] = this.category;
    data['location'] = this.location;
    data['rating'] = this.rating;
    data['rating_member'] = this.ratingMember;
    if (this.menu != null) {
      data['menu'] = this.menu!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Menu {
  String? foodType;
  String? foodTitle;
  String? foodPrice;
  String? foodImage;
  String? foodRating;

  Menu(
      {this.foodType,
      this.foodTitle,
      this.foodPrice,
      this.foodImage,
      this.foodRating});

  Menu.fromJson(Map<String, dynamic> json) {
    foodType = json['food_type'];
    foodTitle = json['food_title'];
    foodPrice = json['food_price'];
    foodImage = json['food_image'];
    foodRating = json['food_rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['food_type'] = this.foodType;
    data['food_title'] = this.foodTitle;
    data['food_price'] = this.foodPrice;
    data['food_image'] = this.foodImage;
    data['food_rating'] = this.foodRating;
    return data;
  }
}
