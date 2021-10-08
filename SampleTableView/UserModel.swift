//
//  UserModel.swift
//  SampleTableView
//
//  Created by 佐藤瑠偉史 on 2021/10/08.
//

import Foundation

struct UserModel: Codable {
    var id: Int
    var icon: String?
    var name: String?
    var mainText: String
    var image: String?
}
