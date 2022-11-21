//
//  FirstApiViewController.swift
//  DifferentTypeApiCalling
//
//  Created by Bhumika Patel on 21/11/22.
//

import UIKit

class FirstApiViewController: UIViewController {
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    var arrMovieVM = [MovieViewModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        self.getData()

        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    func getData(){
        Service.shareInstance.getAllMovieData { (movies, error) in
            if(error==nil){
                self.arrMovieVM = movies?.map({ return MovieViewModel(movie: $0) }) ?? []
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }

    }
}
extension FirstApiViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMovieVM.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let MVM = arrMovieVM[indexPath.row]
        cell.textLabel?.text = MVM.artistName ?? ""
       // cell.textLabel?.text = MVM.trackName ?? ""
        return cell
    }
    
}

