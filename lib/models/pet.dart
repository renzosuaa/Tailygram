class Pet {
  final int pet_id;
  String? avatar_url;
  String pet_name;
  String species;
  String breed;
  int age;
  String? bio;

  Pet({
    required this.pet_id,
    required this.pet_name,
    required this.species,
    required this.breed,
    required this.age,
    this.bio,
    this.avatar_url,
  });
}
