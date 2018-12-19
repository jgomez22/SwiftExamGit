//
//  Ticket.swift
//  SwiftExamGit
//
//  Created by Josue on 12/19/18.
//  Copyright © 2018 tcs. All rights reserved.
//

import UIKit

class Ticket: NSObject {

    var code:String = ""
    var title:String = ""
    var date:String = ""
    var startTime:String = ""
    var endTime:String = ""
    var address:String = ""
    var detail:String = ""
    var created_at:String = ""
    var modify_at:String = ""
    var url_img:String = ""
    
    func initWithDictionary(data:Dictionary<String, String>) {
        self.code = data["code"]!
        self.title = data["title"]!
        self.date = data["date"]!
        self.startTime = data["startTime"]!
        self.endTime = data["endTime"]!
        self.address = data["address"]!
        self.detail = data["detail"]!
        self.created_at = data["created_at"]!
        self.modify_at = data["modify_at"]!
        self.url_img = data["url_img"]!
    }
    
}
