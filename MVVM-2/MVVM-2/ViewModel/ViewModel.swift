//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Владимир  on 13.06.22.
//

import Foundation





class ViewModel: TableViewViewModelType {
    
    var profiles = [Profile(name: "Jhon", secondName: "Kind", age: 23),
                    Profile(name: "Mike", secondName: "True", age: 45),
                    Profile(name: "Nick", secondName: "Miss", age: 64),
                    Profile(name: "Alton", secondName: "Vhon", age: 24),
    ]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
}
