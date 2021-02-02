//
//  UrlRequest.swift
//  GoodNews
//
//  Created by PuNeet on 02/02/21.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

struct Resourse<T: Decodable> {
    let url: URL
}

extension URLRequest {
    
    static func load<T>(recourse: Resourse<T>) -> Observable<T?>{
        return Observable.from([recourse.url]).flatMap { url -> Observable<Data> in
            let request = URLRequest(url: url)
            return URLSession.shared.rx.data(request: request)
        }.map{ data -> T? in
            return try? JSONDecoder().decode(T.self, from: data)
        }.asObservable()
    }
}
