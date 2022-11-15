//
//  ViewController.swift
//  UIkitEx3
//
//  Created by Linna Lux on 2022-11-15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var frukt = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        frukt = ["Apelsin", "Banan", "Citron"]
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowInSection
                   section: Int) -> Int {
        return frukt.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell: UITableViewCell = self.tableView!.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = self.frukt[indexPath.row]
        return cell
    }
}

