//
//  Article.swift
//  GoodNews
//
//  Created by PuNeet on 01/02/21.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation


struct ArticleList: Decodable {
    let articles: [Article]
}

extension ArticleList{
    static var all: Resourse<ArticleList> = {
        let url = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2021-01-02&sortBy=publishedAt&apiKey=ca56b26a31d44e8c8d1b580784666ed9")!
        return Resourse(url: url)
    }()
}

struct Article: Decodable {
    let title: String
    let description: String
}
