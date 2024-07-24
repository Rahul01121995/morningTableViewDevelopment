//
//  ViewController.swift
//  morningTableViewDevelopment
//
//  Created by Rahul Heerekar on 02/06/24.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var dailySunRoutineTableView: UITableView!
    
    struct sunset {
        let title: String
        let imageName: String
    }
    let data:[sunset] = [
        sunset(title: "morning", imageName: "morning"),
        sunset(title: "afternoon", imageName: "afternooon"),
        sunset(title: "evening", imageName: "evening"),
        sunset(title: "night", imageName: "night")

    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sunset = data[indexPath.row]
        
    let suncell = tableView.dequeueReusableCell(withIdentifier: "suncell", for: indexPath) as! sunTableViewCell
        suncell.sunLabel.text = sunset.title
        suncell.sunsetImageView.image = UIImage(named: sunset.imageName)
        
        return suncell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100.0
    }
}

