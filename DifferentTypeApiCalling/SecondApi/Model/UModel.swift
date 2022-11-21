//
//  UModel.swift
//  DifferentTypeApiCalling
//
//  Created by Bhumika Patel on 21/11/22.
//

import Foundation
import UIKit

struct UModel : Codable{
    let userId : Int?
    let id : Int?
    let title : String?
    let completed : Bool?
    
    enum CodingKeys: String, CodingKey {
        case userId = "userId"
        case id = "id"
        case title = "title"
        case completed = "completed"
    }
    
    init(from decoder: Decoder) throws {
        let values =  try decoder.container(keyedBy: CodingKeys.self)
        userId = try values.decodeIfPresent(Int.self, forKey: .userId)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        completed = try values.decodeIfPresent(Bool.self, forKey: .completed)
    }
//    func getStatus() -> String{
//        if completed ?? true{
//            return "Completed"
//        } else{
//            return "Not completed"
//        }
//    }
    func getStatusColor() ->(String, UIColor){
        if completed ?? true{
            return ("Completed", .blue)
        }else{
            
            return ("Not completed", .red)
        }
    }
}
