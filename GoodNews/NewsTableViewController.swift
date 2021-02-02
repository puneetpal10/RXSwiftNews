//
//  NewsTableViewController.swift
//  GoodNews
//
//  Created by Mohammad Azam on 3/3/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa
//ca56b26a31d44e8c8d1b580784666ed9
class NewsTableViewController: UITableViewController {
    
    private var articles = [Article]()
    let disposebag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        populateNew()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell else {
            fatalError("ArticleTableViewCell does not exist")
        }
        cell.lblTitle.text = self.articles[indexPath.row].title
        cell.lblDescription.text = self.articles[indexPath.row].description
        return cell
    }
    
    private func populateNew(){
//        let url = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2021-01-02&sortBy=publishedAt&apiKey=ca56b26a31d44e8c8d1b580784666ed9")!
        
//        Observable.just(url).flatMap{ url -> Observable<Data> in
//            let request = URLRequest(url: url!)
//            return URLSession.shared.rx.data(request: request)
//        }.map { data -> [Article]? in
//            return try? JSONDecoder().decode(ArticleList.self, from: data).articles
//        }.subscribe(onNext:{ [weak self] articles in
//            if let articles = articles {
//                self?.articles = articles
//                DispatchQueue.main.async {
//                    self!.tableView.reloadData()
//                }
//            }
//        }).disposed(by: disposebag)
        
        
        URLRequest.load(recourse: ArticleList.all).subscribe(onNext: { [weak self] result in
            if let result = result {
                self?.articles = result.articles
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            }
        }).disposed(by: disposebag)
    }
}
