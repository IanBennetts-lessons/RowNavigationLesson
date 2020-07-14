//
//  Navigation1View.swift
//  RowNavigationLesson
//
//  Created by Ian Bennetts on 14/7/20.
//  Copyright © 2020 Ian Bennetts. All rights reserved.
//

import SwiftUI

struct Navigation1View: View {
    var body: some View {
        NavigationLink(destination: Text("Outside Struct")){
            Text("Outside Struct")
        }
    }
}
struct Navigation1View_Previews: PreviewProvider {
    static var previews: some View {
        Navigation1View()
    }
}
