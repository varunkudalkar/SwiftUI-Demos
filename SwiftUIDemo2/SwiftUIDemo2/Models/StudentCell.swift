//
//  StudentCell.swift
//  SwiftUIDemo2
//
//  Created by Apple on 23/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import SwiftUI

struct StudentCell: View {
    
    let item: Student
    var body: some View {
        HStack {
            Image(item.imageUrl)
                .resizable()
                .frame(width: 100, height: 100)
            VStack(alignment: .leading) {
                Text(item.name)
                Text("\(item.marks)")
            }
        }
    }
}

struct StudentCell_Previews: PreviewProvider {
    static var previews: some View {
        StudentCell(item: Student(name: "a", rno: 1, marks: 100, imageUrl: "aj"))
    }
}
