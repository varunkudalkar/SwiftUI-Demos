//
//  Student.swift
//  SwiftUIDemo2
//
//  Created by Apple on 23/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import Foundation

class Student {
    var name: String
    var rno: Int
    var marks: Double
    var imageUrl: String
    
    init(name: String, rno: Int, marks: Double, imageUrl: String) {
        self.name = name
        self.rno = rno
        self.marks = marks
        self.imageUrl = imageUrl
    }
    
    static func all() -> [Student] {
        return [
            Student(name: "ABC", rno: 1, marks: 87.34, imageUrl: "aj"),
            Student(name: "PQR", rno: 2, marks: 63.45, imageUrl: "mastar"),
            Student(name: "XYZ", rno: 3, marks: 64.99, imageUrl: "tana")
        ]
    }
}
