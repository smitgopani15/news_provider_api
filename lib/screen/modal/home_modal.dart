class NewsModal {
  String? status;
  var totalResults;
  List<ArticlesModal>? articlesList = [];

  NewsModal({
    this.status,
    this.totalResults,
    this.articlesList,
  });

  NewsModal newsFromJson(Map m1) {
    status = m1['status'];
    totalResults = m1['totalResults'];
    List aList = m1['articles'];
    articlesList =
        aList.map((e) => ArticlesModal().articlesFromJson(e)).toList();
    NewsModal newsModal = NewsModal(
      articlesList: articlesList,
      status: status,
      totalResults: totalResults,
    );
    return newsModal;
  }
}

class ArticlesModal {
  String? author, title, description, url, urlToImage, publishedAt, content;
  SourceModal? sourceModal;

  ArticlesModal({
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
    this.sourceModal,
  });

  ArticlesModal articlesFromJson(Map m1) {
    author = m1['author'];
    title = m1['title'];
    description = m1['description'];
    url = m1['url'];
    urlToImage = m1['urlToImage'];
    publishedAt = m1['publishedAt'];
    content = m1['content'];
    SourceModal sourceModal = SourceModal().sourceFromJson(m1['source']);
    ArticlesModal articlesModal = ArticlesModal(
      title: title,
      description: description,
      content: content,
      publishedAt: publishedAt,
      urlToImage: urlToImage,
      url: url,
      author: author,
      sourceModal: sourceModal,
    );
    return articlesModal;
  }
}

class SourceModal {
  String? id, name;

  SourceModal({
    this.id,
    this.name,
  });

  SourceModal sourceFromJson(Map m1) {
    id = m1['id'];
    name = m1['name'];
    SourceModal sourceModal = SourceModal(
      id: id,
      name: name,
    );
    return sourceModal;
  }
}
