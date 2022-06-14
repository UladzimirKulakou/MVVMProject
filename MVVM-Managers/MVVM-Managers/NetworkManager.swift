//
//  NetworkManager.swift
//  MVVM-Managers
//
//  Created by Владимир  on 14.06.22.
//

import Foundation

class NetworkManager: NSObject {
    func fetchMovies(completion: ([String]) -> ()) {
        completion(["Movie 1", "Movie 2", "Movie 3"])
    }
}
