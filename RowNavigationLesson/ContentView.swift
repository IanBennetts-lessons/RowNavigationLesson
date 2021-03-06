//
//  ContentView.swift
//  RowLession
//
//  Created by Ian Bennetts on 14/7/20.
//  Copyright © 2020 Ian Bennetts. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var contentViewModel: ContentViewModel
    var body: some View {
        NavigationView{
            List(contentViewModel.dummyTestObjects) { object in
                RowView(object: object, viewModel: self.contentViewModel).frame(height: 120)
            }.navigationBarTitle("Display Navigation options", displayMode: .inline)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(ContentViewModel())
//    }
//}
