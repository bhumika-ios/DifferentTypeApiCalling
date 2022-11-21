//
//  SecondApiViewController.swift
//  DifferentTypeApiCalling
//
//  Created by Bhumika Patel on 21/11/22.
//

import UIKit

class SecondApiViewController: UIViewController {

    @IBOutlet var tblView: UITableView!
    var viewModelUser = UserViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModelUser.vc = self
        // Do any additional setup after loading the view.
        viewModelUser.getAllUserDataAF()
      //  tblView.register(UserCell.self, forCellReuseIdentifier: "UserCell")
        tblView.register(UINib(nibName: "UserCellTableViewCell", bundle: nil), forCellReuseIdentifier: "UserCellTableViewCell")        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension SecondApiViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModelUser.arrUser.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "UserCellTableViewCell", for: indexPath) as? UserCellTableViewCell
        let modelUser = viewModelUser.arrUser[indexPath.row]
        cell?.modelUser = modelUser

        return cell!
    }
}
