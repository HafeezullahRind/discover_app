class Article {
  final String title;
  final String image;
  final String location;
  final String author;
  final int likes;
  final int comments;
  final int shares;
  final double rating;
  bool isLiked = false;

  Article(this.title, this.image, this.comments, this.likes, this.isLiked,
      this.location, this.shares, this.author, this.rating);
}

List<Article> articles = [
  Article(
      'Lahore is one of Pakistan\'s major economic hubs',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoO-dqTJSEgYZF4IfL2yECk_Ev0o7sJ5ONzQ&usqp=CAU',
      100,
      32000,
      true,
      'The Uni of Lahore',
      50,
      'Hussain Mustafa',
      4.5),
  Article(
      'Known as the City of Lights for obvious reasons',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyxPtqStjFfVjLtUNtwywmH3xHjb0Zp6j91A&usqp=CAU',
      300,
      50000,
      true,
      'Karachi Sindh',
      1250,
      'Tim Salvatore',
      5),
  Article(
      'Capital of Pakistan',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOJSaDGwZ3tj9EbT62-K1lkAsk8cc7vNDZVQ&usqp=CAU',
      200,
      10000,
      true,
      'Islamabad Pakistan',
      1000,
      'Ely Marya',
      5),
];
