//
//  ScavengeListViewController.swift
//  Photo Scavenger Hunt
//
//  Created by Jonathan Velez on 3/22/23.
//

import UIKit

class ScavengeListViewController: UIViewController{
    
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var emptyStateLabel: UILabel!
    
    var scavenge: [Scavenges]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        tableView.tableHeaderView = UIView()
        
        tableView.dataSource = self
        
        scavenge = Scavenges.mockedScavenges
        
        
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    
            if segue.identifier == "DetailSegue" {
                if let detailViewController = segue.destination as? ScavengeDetailViewController,
                    // Get the index path for the current selected table view row.
                   let selectedIndexPath = tableView.indexPathForSelectedRow {

                    // Get the task associated with the slected index path
                    let scavenge = scavenge[selectedIndexPath.row]

                    // Set the selected task on the detail view controller.
                    detailViewController.scavenge = scavenge
                }
            }
        }
    }
    extension ScavengeListViewController: UITableViewDataSource {

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return scavenge.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ScavengeCell", for: indexPath) as? ScavengeCell else {
                fatalError("Unable to dequeue Task Cell")
            }

            cell.configure(with: scavenge[indexPath.row])

            return cell
        }

}
