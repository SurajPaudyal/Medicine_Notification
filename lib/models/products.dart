class Products {
  String id;
  String name;
  String companyName;
  String picture;
  String details;
  String price;

  Products({
    this.id,
    this.name,
    this.companyName,
    this.details,
    this.picture,
    this.price,
  });
}

class GenericName {
  String id;
  String composition;
  String indication;
  String adultDose;
  String childDose;
  String sideEffects;
  String pregnancyCategory;

  GenericName({
    this.id,
    this.composition,
    this.indication,
    this.adultDose,
    this.childDose,
    this.sideEffects,
    this.pregnancyCategory,
  });
}

class CategoryName {
  String id;
  String category;
  String picture;

  CategoryName({
    this.id,
    this.category,
    this.picture,
  });
}

class BloodGroup {
  String id;
  String name;
  String location;
  String phone;
  String type;

  BloodGroup({
    this.id,
    this.name,
    this.location,
    this.phone,
    this.type,
  });
}
