//
//  ContentViewModel.swift
//  RowLession
//
//  Created by Ian Bennetts on 14/7/20.
//  Copyright © 2020 Ian Bennetts. All rights reserved.
//

import Foundation

class ContentViewModel{
    var noOfObjects: Int
    var dummyTestObjects: Array<DummyTestObject>
    init(numberOfObjects: Int){
        noOfObjects = numberOfObjects
        dummyTestObjects = Array<DummyTestObject>()
        for index in 0..<noOfObjects {
            dummyTestObjects.append(DummyTestObject(id: index, name: "TestData \(index)" , address: "TestAddress \(index)" ))
        }
    }
    
    
}




