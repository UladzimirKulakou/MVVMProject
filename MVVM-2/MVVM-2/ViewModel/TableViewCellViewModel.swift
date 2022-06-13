//
//  TableViewCellViewModel.swift
//  MVVM-2
//
//  Created by Владимир  on 13.06.22.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile
    
    var fullName: String {
        return profile.name + "" + profile.secondName
    }
    var age: String {
        return String(describing: profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
