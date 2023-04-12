//
//  ViewController.swift
//  examLocalDatabase
//
//  Created by R93 on 02/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t1: UITextField!
    
    @IBOutlet weak var t2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        fmdb.createFile()
        }

    @IBAction func saveButtonAction(_ sender: Any) {
        if let a = t1.text , let b = Int(a)
        {
            fmdb.addData(id: b, name: t2.text ?? "" )
        }
    }
    
    @IBAction func getDataButtonAction(_ sender: Any) {
        let naviget = storyboard? .instantiateViewController(withIdentifier: "ViewController2") as!
        ViewController2
        navigationController?.pushViewController(naviget, animated: true)
    }
    
    @IBAction func deleteButtonAction(_ sender: Any) {
        if let a = t1.text , let b = Int(a)
        {
            fmdb.DeleteData(id : b,name : t2.text ?? "")
        }
    }
}

