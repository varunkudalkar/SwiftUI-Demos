//
//  DetailedView.swift
//  SwiftUIDemo2
//
//  Created by Apple on 23/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import SwiftUI

struct DetailedView: View {
    let item: Student
    var body: some View {
        VStack {
            Image(item.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                Text(item.name)
                Text("\(item.marks)")
            }
        }
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(item: Student(name: "a", rno: 1, marks: 23, imageUrl: "aj"))
    }
}
