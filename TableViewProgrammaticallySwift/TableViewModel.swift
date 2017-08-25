//
//  TableViewModel.swift
//  TableViewProgrammaticallySwift
//
//  Created by Chi Hwa Michael Ting on 8/24/17.
//  Copyright © 2017 Chi Hwa Michael Ting. All rights reserved.
//

import Foundation

class TableViewModel: TableViewModelProtocol {
    
    var dataBackArray: [TableCellViewModelProtocol]
    var models: [Model]! {
        didSet {
            self.dataBackArray.removeAll()
            for model in models {
                self.dataBackArray.append(TableCellViewModel(model: model))
            }
        }
    }
    
    init(models: [Model]) {
        self.dataBackArray = [TableCellViewModelProtocol]()
        
        setModel(models)
    }
    
    func setModel(_ models: [Model]) {
        self.models = models
    }
}

class TableCellViewModel: TableCellViewModelProtocol {
    
    var model: Model!
    init(model:Model) {
        self.model = model
    }
    
    let placeHolder = "PLACEHOLDER"
}


class Model {
    
    
    
}
