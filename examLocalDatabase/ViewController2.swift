//
//  ViewController2.swift
//  examLocalDatabase
//
//  Created by R93 on 12/04/23.
//

import UIKit

class ViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var arr2 = fmdb.getData()
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr2.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.l1.text = arr2[indexPath.row].id.description
        cell.l2.text = arr2[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}
