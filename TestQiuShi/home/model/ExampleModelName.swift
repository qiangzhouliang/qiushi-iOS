//
//  UserModel.swift
//  TestQiuShi
//
//  Created by qiangzhouliang on 2020/12/3.
//


class AttachmentsItem: Convertible {
    required init() {}
    var status: String!
    var format: String!
    var origin_url: String!
    var low_url: String!
    var download_url: String!
    var high_url: String!
    var pic_url: String!
}

class User: Convertible {
    required init() {}
    var medium: String!
    var thumb: String!
    var gender: String!
    var age: Int = 0
    var state: String!
    var role: String!
    var rel: String!
    var astrology: String!
    var login: String!
    var icon: String!
    var id: Int = 0
    var uid: Int = 0
}

class ExampleModelName    : Convertible {
    required init() {}
    var created_at: Int = 0
    var attachments: [AttachmentsItem]!
    var format: String!
    var image: String!
    var tag: String!
    var published_at: Int = 0
    var content: String!
    var state: String!
    var comments_count: Int = 0
    var allow_comment: Bool = false
    var share_count: Int = 0
    var src: Int = 0
    var id: Int = 0
    var user: User!
    //驼峰转换
//    func kj_modelKey(from property: Property) -> ModelPropertyKey {
//        return property.name.kj.underlineCased()
//    }
}
