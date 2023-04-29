//
//  DetailsAddViewController.swift
//  BitcodeApplication
//
//  Created by Mac on 28/04/23.
//

import UIKit

class DetailsShowViewController: UIViewController {

    var detailsAddVC:DetailsAddViewController?
    var tableViewCell:TableViewCellForReuse?
    var students:[Student] = []
    @IBOutlet weak var detailsShowTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        connectXib()
        studentAddData()
       
    }
    
    func studentAddData() {
        var s1 = Student(name: "Sachin", age: 22)
        students.append(s1)
        var s2 = Student(name: "Rohan", age: 22)
        students.append(s2)
        var s3 = Student(name: "Rutik", age: 24)
        students.append(s3)
        var s4 = Student(name: "Vaishnavi", age: 23)
        students.append(s4)
        var s5 = Student(name: "Aditya", age: 24)
        students.append(s5)
    }
    
    func connectXib() {
        let nibName = UINib(nibName: "TableViewCellForReuse", bundle: nil)
        detailsShowTableView.register(nibName, forCellReuseIdentifier: "TableViewCellForReuse")
    }
    
    @IBAction func addButton(_ sender: Any) {
        detailsAddVC = storyboard?.instantiateViewController(withIdentifier: "DetailsAddViewController") as! DetailsAddViewController
        detailsAddVC?.delegate = self
        navigationController?.pushViewController(detailsAddVC!, animated: true)
    }
    

}

extension DetailsShowViewController:BackDataPassingProtocol {
    func backDataPassing(student: Student) {
        students.append(student)
        detailsShowTableView.reloadData()
    }
    
    
}

extension DetailsShowViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableViewCell = detailsShowTableView.dequeueReusableCell(withIdentifier: "TableViewCellForReuse", for: indexPath) as! TableViewCellForReuse
        tableViewCell?.imgLabel.image = UIImage(named: "iosLogo")
        tableViewCell?.nameLabel.text = students[indexPath.row].name
        tableViewCell?.ageLabel.text = students[indexPath.row].age.description
        return tableViewCell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        140.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let showDetailVC = storyboard?.instantiateViewController(withIdentifier: "AllDetailsShowViewController") as! AllDetailsShowViewController
        showDetailVC.name = students[indexPath.row].name
        showDetailVC.age = students[indexPath.row].age.description
        showDetailVC.image = UIImage(named: "iosLogo")
        
        navigationController?.pushViewController(showDetailVC, animated: true)
    }
    
}
