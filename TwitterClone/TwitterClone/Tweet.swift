//
//  Tweet.swift
//  TwitterClone
//
//  Created by Jeremy Moore on 6/13/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

import Foundation

class Tweet
{
    let text: String
    let id: String
    let user: User?
    
    init?(json: [String: AnyObject])
    {
        if let text = json["text"] as? String, id = json["id_str"] as? String, user = json["user"] as? [String: AnyObject] {
            self.text = text
            self.id = id
            self.user = User(json: user)
        }
            
        else {
            
            return nil
        }
    }
}