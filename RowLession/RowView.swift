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
    var viewModel: ContentViewModel
    init(object: DummyTestObject, viewModel: ContentViewModel){
        self.dummyData = object
        self.viewModel = viewModel
    }
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Spacer()
                Text("Id = \(self.dummyData.id)")
                    .onTapGesture {
                        print ("Id \(self.dummyData.id) has been tapped" )
                }
                Text("Name = \(self.dummyData.name)")
                    .onTapGesture {
                        print ("Name \(self.dummyData.id) has been tapped" )
                        self.viewModel.changeName(id: self.dummyData.id, newName: "Changed Name ")
                }
                Text("Address = \(self.dummyData.address)")
                    .onTapGesture {
                        print ("Address no \(self.dummyData.id) has been tapped" )
                }
                Spacer()
            }.frame(width: geometry.size.width, height: geometry.size.height)
                .onTapGesture {
                    print ("This is from RowView no \(self.dummyData.id)")
            }
        }
        
    }
}

//struct RowView_Previews: PreviewProvider {
//    static var previews: some View {
//        RowView()
//    }
//}
