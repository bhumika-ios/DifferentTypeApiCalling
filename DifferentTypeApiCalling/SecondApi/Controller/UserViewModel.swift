//
//  UserViewModel.swift
//  DifferentTypeApiCalling
//
//  Created by Bhumika Patel on 21/11/22.
//

import UIKit
import Alamofire

class UserViewModel{
    weak var vc: SecondApiViewController?
    var arrUser = [UModel]()
    
    func getAllUserDataAF(){
        AF.request("https://jsonplaceholder.typicode.com/todos/")
            .response { response in
                if let data = response.data {
                do{
                    let userResponse = try JSONDecoder().decode([UModel].self, from: data)
                    self.arrUser.append(contentsOf: userResponse)
                    DispatchQueue.main.async {
                        self.vc?.tblView.reloadData()
                    }
                }catch let err{
                    print(err.localizedDescription)
                }
            }
        }
    }
    
    func getAllUserData(){
        URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/todos/")!) { [self] (data, respose, error) in
            if error == nil{
               
            }else{
                print(error?.localizedDescription)
            }
        }.resume()
    }
}


