//
//  ViewController.swift
//  SampleTableView
//
//  Created by 佐藤瑠偉史 on 2021/10/07.
//

import UIKit

class TableViewController: UIViewController {
    
    private let cellClassName = "TableViewCell"
    private let reuseId = "TableViewCell"
    
    private let api = SampleAPI()
    private var users: [UserModel] = []
    
    @IBOutlet weak var indecator: UIActivityIndicatorView!
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            let cellNib = UINib(nibName: cellClassName, bundle: nil)
            tableView.register(cellNib, forCellReuseIdentifier: reuseId)
            
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        api.getHome { users, error in
            if let _error = error {
                debugPrint(_error)
                return
            }
            guard let _users = users else {
                return
            }
            self.users = _users
            self.tableView.isHidden = false
            self.indecator.isHidden = true
            self.tableView.reloadData()
        }
    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        let user = users[indexPath.row]
        cell.configure(user: user)
        return cell
    }
}
