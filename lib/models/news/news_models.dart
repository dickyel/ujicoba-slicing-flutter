class NewsModels {
  int id;
  String titleNews;
  String author;
  String imageUrl;
  String date;

  NewsModels(
      {this.id = 1,
      this.imageUrl = '',
      this.titleNews = '',
      this.author = '',
      this.date = ''});
}
