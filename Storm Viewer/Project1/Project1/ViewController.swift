//
//  ViewController.swift
//  Project1
//
//  Created by Talha Gölcügezli on 2.11.2022.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String] ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Storm Viewer"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(sharedOnPeople))
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                // this is a picture a load!
                pictures.append(item)
            }
        }
        
        pictures.sort() // resim isimlerini küçükten büyüğe doğru sıralayarak göstermek için kullandım.
        print(pictures)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count // tableview size pictures.count return 
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
            
                
    }

    @objc func sharedOnPeople() {
       
        //ltrtif
        
        //let vc = UIActivityViewController(activityItems: [], applicationActivities: nil)
        
        //vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        
        //present(vc, animated: true)
    }

}

