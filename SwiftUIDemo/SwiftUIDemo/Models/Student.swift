//
//  Student.swift
//  SwiftUIDemo
//
//  Created by Apple on 23/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import Foundation

class Student {
    
    let name: String
    let rno: Int
    let marks: Double
    
    init(name: String, rno: Int, marks: Double) {
        self.name = name
        self.rno = rno
        self.marks = marks
    }
    
    static func all() -> [Student] {
        return [Student(name: "ABC", rno: 1, marks: 98.23), Student(name: "PQR", rno: 2, marks: 87.38), Student(name: "XYZ", rno: 3, marks: 67.87)]
    }
}
