//
//  ViewController.swift
//  WhitehousePetitions
//
//  Created by Talha Gölcügezli on 19.11.2022.
//

import UIKit

class ViewController: UITableViewController {
    var petitions = [Petition] ()
    var filterData = [Petition] ()
    var tester: Bool = true
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString: String
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Credit!", style: .done, target: self, action: #selector(creditView))
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchData))
        
        if navigationController?.tabBarItem.tag == 0 {
            urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        } else {
            urlString = "https://www.hackingwithswift.com/samples/petitions-2.json"
        }
        
        
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                parse(json: data)
                return
            }
        }
        
        showError()
        
    }
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonPetitions = try? decoder.decode(Petitions.self, from: json) {
            petitions = jsonPetitions.results
            tableView.reloadData()
        }
    }
    
    func showError() {
        let ac = UIAlertController(title: "Loading error", message: "There was a problem loading a feed; please check your connection and try again.", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        
        present(ac, animated: true)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let petition = petitions[indexPath.row]
        //let filterDatas = filterData[indexPath.row]
        if tester {
            cell.textLabel?.text = petition.title
            cell.detailTextLabel?.text = petition.body
        } else {
            cell.textLabel?.text = petition.title
            cell.detailTextLabel?.text = petition.body
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.detailItem = petitions[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func creditView() {
        
        let vc = UIAlertController(title: "Wrong!", message: "This the data comes from the We The People API of the Whitehouse.", preferredStyle: .alert)
        
        vc.addAction(UIAlertAction(title: "OK", style: .default))
        
        present(vc, animated: true)
        
    }
    
    @objc func searchData() {
        let ac = UIAlertController(title: "Search", message: nil, preferredStyle: .alert)
        
        ac.addTextField()
        
        let submitAction = UIAlertAction(title: "Submit", style: .default) {
                  [weak self, weak ac] action in
                  guard let answer = ac?.textFields?[0].text else {return}
                  self?.submit(answer: answer)
              }
              
        ac.addAction(submitAction)
              
        present(ac, animated: true)
    }
    
    func submit(answer: String) {
        for i in filterData {
            if i.title == answer {
                tester = false
            } else {
                tester = true
            }
        }
    }
    

}

