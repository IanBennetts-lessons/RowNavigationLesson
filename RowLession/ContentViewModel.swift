//
//  ContentViewModel.swift
//  RowLession
//
//  Created by Ian Bennetts on 14/7/20.
//  Copyright © 2020 Ian Bennetts. All rights reserved.
//

import Foundation

class ContentViewModel: ObservableObject{
    var noOfObjects: Int
    @Published var dummyTestObjects: Array<DummyTestObject>
    init(numberOfObjects: Int){
        noOfObjects = numberOfObjects
        dummyTestObjects = Array<DummyTestObject>()
        for index in 0..<noOfObjects {
            dummyTestObjects.append(DummyTestObject(id: index, name: "TestData \(index)" , address: "TestAddress \(index)" ))
        }
    }
    func changeName(id: Int, newName: String){
        for index in 0..<dummyTestObjects.count{
            if id == dummyTestObjects[index].id{
                dummyTestObjects[index].name = newName
                print ("Name changed to \(newName)")
            }
        }
    }
    
    
}




