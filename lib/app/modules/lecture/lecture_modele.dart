class LectureModele{
  String text;
  String imageUrl;
  Map<String, String> audioMap;
  LectureModele({
    required this.text,
    required this.imageUrl,
    required this.audioMap,
  });

   //Pour créer une instance de modèle à partir de JSON :
   factory LectureModele.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> audioJson = json['audioMap'] as Map<String, dynamic>;
    Map<String, String> audioMap = Map<String, String>.from(audioJson);
    
    return LectureModele(
      text: json['text'] as String,
      imageUrl: json['image_url'] as String,
      audioMap: audioMap,
    );
  }
 //Pour convertir une instance de modèle en JSON :
  Map<String,dynamic> toJson(){
    return {
      'text':text,
      'image_url':imageUrl,
      'audio_map': audioMap,
    };
  }
}