
class Posts {
  const Posts({
    this.title,
    this.author,
    this.imageUrl,
  });
  final String title;
  final String author;
  final String imageUrl;
}

final List<Posts> posts = [
  Posts(
    title: 'girl',
    author: 'wbq',
    imageUrl: 'resources/Image/girls/1.jpg',
  ),
  Posts(
    title: 'girl2',
    author: 'wbq',
    imageUrl: 'resources/Image/girls/2.jpg',
  ),
  Posts(
    title: 'girl3',
    author: 'wbq',
    imageUrl: 'resources/Image/girls/3.jpg',
  ),
  Posts(
    title: 'girl4',
    author: 'wbq',
    imageUrl: 'resources/Image/girls/4.jpg',
  ),
];