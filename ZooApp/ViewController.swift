//
//  ViewController.swift
//  ZooApp
//
//  Created by Hazem on 11/26/17.
//  Copyright © 2017 Hazem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var NotKiller = ["Monkey","Deer","Cow","Elephant","Donkey"]
    var Killer = ["Tiger","Bear","Lion","Fox","shark"]
    var Sections = ["Not Killer","Killer"]
    
    @IBOutlet weak var AnimalTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Sections.count
    }
    // Title Of Each section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Sections[section]
    }
    //Number Of Item That Will Despalyed
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return NotKiller.count
    }
    
    //Display The Item
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.section==0{
            cell.textLabel?.text = NotKiller[indexPath.row]
        }else{
            cell.textLabel?.text = Killer[indexPath.row]
        }
    return cell
    }


}

