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

struct Article: Decodable {
    let title: String
    let description: String
}
