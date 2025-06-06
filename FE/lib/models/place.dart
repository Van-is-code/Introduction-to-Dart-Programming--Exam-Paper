class Place {
  final int id;
  final String name;
  final String description;
  final String imageUrl; // URL for the image
  final double rating;

  Place({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    this.rating = 0.0,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Unknown',
      description: json['description'] ?? 'No description',
      imageUrl: json['imageUrl'] ?? '', // Parse image URL
      rating: (json['rating'] ?? 0).toDouble(),
    );
  }
}