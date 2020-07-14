//
//  RowView.swift
//  RowLession
//
//  Created by Ian Bennetts on 14/7/20.
//  Copyright © 2020 Ian Bennetts. All rights reserved.
//

import SwiftUI

struct RowView: View {
    var dummyData: DummyTestObject
    init(object: DummyTestObject){
        self.dummyData = object
    }
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Spacer()
                Text("Id = \(self.dummyData.id)")
                Text("Name = \(self.dummyData.name)")
                Text("Address = \(self.dummyData.address)")
                Spacer()
            }.frame(width: geometry.size.width, height: geometry.size.height)
        }
        
    }
}

//struct RowView_Previews: PreviewProvider {
//    static var previews: some View {
//        RowView()
//    }
//}
