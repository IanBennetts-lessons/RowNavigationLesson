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
    @State private var showIDView = false
    @State private var showNameView = false
    @State private var showAddressView = false
    @State private var pageView: PageView = PageView(text: "Some data")
    init(object: DummyTestObject, viewModel: ContentViewModel){
        self.dummyData = object
        self.viewModel = viewModel
    }
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack{
                ZStack{
                    Text("Id = \(self.dummyData.id)")
                        .onTapGesture {
                            print ("Id \(self.dummyData.id) has been tapped" )
                            self.pageView = PageView(text: "ID")
                            self.showIDView = true
                    }
                    NavigationLink(destination: self.pageView, isActive: self.$showIDView){
                        EmptyView()
                    }
                }
                ZStack{
                Text("Name = \(self.dummyData.name)")
                    .onTapGesture {
                        print ("Name \(self.dummyData.id) has been tapped" )
                        self.viewModel.changeName(id: 1, newName: "Changed Name ")
                        self.pageView = PageView(text: "Name")
                        self.showNameView = true
                }
                NavigationLink(destination: PageView(text: "Name"), isActive: self.$showNameView){
                        EmptyView()
                    }
                }
                ZStack{
                Text("Address = \(self.dummyData.address)")
                    .onTapGesture {
                        print ("Address no \(self.dummyData.id) has been tapped" )
                        self.pageView = PageView(text: "Address")
                        self.showAddressView = true
                }
                    NavigationLink(destination: PageView(text: "Address"), isActive: self.$showAddressView){
                        EmptyView()
                    }
                }
                
            }.frame(width: geometry.size.width, height: geometry.size.height)
            
            
        }
        
    }
}

//struct RowView_Previews: PreviewProvider {
//    static var previews: some View {
//        RowView()
//    }
//}
