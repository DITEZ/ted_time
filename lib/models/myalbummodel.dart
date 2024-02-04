class Album{
  final title;
  final image;

Album({required this.title, this.image});
factory Album.fromJson(Map<String,dynamic>json){
  return Album(title: json['title'],image:json['thumbnailurl']);
}
  }
