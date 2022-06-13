//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Владимир  on 13.06.22.
//

import Foundation





class ViewModel: TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?
   
    
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
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
    
}
