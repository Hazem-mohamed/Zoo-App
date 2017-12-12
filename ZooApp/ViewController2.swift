//
//  ViewController2.swift
//  ZooApp
//
//  Created by Hazem on 11/26/17.
//  Copyright © 2017 Hazem. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var AnimalList: UITableView!
    
    var Animals = Array<Animal>()

    override func viewDidLoad() {
        super.viewDidLoad()
        Animals.append(Animal(Name: "baboon", Detail: "This Is The Description And Deatail About This Animal", Image: "baboon"))
        
        Animals.append(Animal(Name: "bulldog", Detail: "This Is The Description And Deatail About This Animal", Image: "bulldog"))
        
        Animals.append(Animal(Name: "panda", Detail: "This Is The Description And Deatail About This Animal", Image: "panda"))
        
        Animals.append(Animal(Name: "swallow bird", Detail: "This Is The Description And Deatail About This Animal", Image: "swallow_bird"))
        
        Animals.append(Animal(Name: "white tiger", Detail: "This Is The Description And Deatail About This Animal", Image: "white_tiger"))
        
        Animals.append(Animal(Name: "zebra", Detail: "This Is The Description And Deatail About This Animal", Image: "zebra"))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:mycell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! mycell
        cell.AnimalName.text=Animals[indexPath.row].Name!
        cell.AnimalDesc.text=Animals[indexPath.row].Detail!
        cell.AnimalImage.image = UIImage(named: Animals[indexPath.row].Image!)
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
