//
//  TableViewModel.swift
//  TableViewProgrammaticallySwift
//
//  Created by Chi Hwa Michael Ting on 8/24/17.
//  Copyright © 2017 Chi Hwa Michael Ting. All rights reserved.
//

import Foundation

class TableViewModel: TableViewModelProtocol {
    
    var dataBackArray: DataBinder<[TableCellViewModelProtocol]>
    var models: [Model]! {
        didSet {
            
            var tempArray = [TableCellViewModel]()
            for model in models {
                tempArray.append(TableCellViewModel(model: model))
            }
            
            dataBackArray.value = tempArray
        }
    }
    
    init(models: [Model]?) {
        self.dataBackArray = DataBinder(value: [TableCellViewModel]())
        
        if let models = models {
            setModel(models)
        }
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
