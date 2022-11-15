//
//  ViewController.swift
//  Uikit
//
//  Created by Linna Lux on 2022-11-12.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    

    @IBOutlet weak var startText: UILabel!
    
    @IBOutlet weak var TableList: UITableView!
    
    var frukt = ["Apelsin", "Banan", "Citron"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        startText.text = "Start"
        TableList.dataSource = self
    
    }

    
    @IBAction func OneButton(_ sender: Any) {
        startText.text = "Ett"
    }
    
    
    @IBAction func TwoButton(_ sender: Any) {
        startText.text = "Två"
    }
    
    
    @IBAction func merFrukt(_ sender: Any) {
        frukt.append("Äpple")
        TableList.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frukt.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "raden") as! FruktTableViewCell
        cell.fruktlist.text = frukt[indexPath.row]
        
        return cell
    }
    
}

