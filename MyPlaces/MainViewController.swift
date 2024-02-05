//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Lera Savchenko on 5.02.24.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
        "McDonalds", "Cloud Nine", "Moon Light",
        "Ali's", "Burger King", "Slaelong",
        "Babylon", "Irish Pub", "KFC"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        restaurantNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let restaurantName = restaurantNames[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = restaurantName
        cell.contentConfiguration = content
        
        return cell
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

