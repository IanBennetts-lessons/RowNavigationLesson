//
//  PageView.swift
//  RowNavigationLesson
//
//  Created by Ian Bennetts on 14/7/20.
//  Copyright © 2020 Ian Bennetts. All rights reserved.
//

import SwiftUI

struct PageView: View {
    var text: String
    var body: some View {
        VStack{
            Text(text)
//            NavigationLink(destination: Text("This is another view")){
//                Text("Another View")
//            }
//            StandUpImageView()
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(text: "Stuff")
    }
}

