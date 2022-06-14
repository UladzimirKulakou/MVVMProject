//
//  DetailViewModelType.swift
//  MVVM-2
//
//  Created by Владимир  on 13.06.22.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get }
}
