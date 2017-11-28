//
//  ViewController.swift
//  MyWisata
//
//  Created by Master on 19/10/17.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //declarasi nama seleted dan gmabar selected untuk mengirimkan data
    
    var namaSelected:String?
    var descSelected:String?
    var gambarSelected:String?
    
    
    @IBOutlet weak var tableView: UITableView!
    var wisataName = ["Ampat","Borobudur","Bromo","Monas","Toraja","Bali","Bandung","Batam","Jepara","Lamongan","Lawang Sewu","Pantai Surabaya","Riau","Yogyakarta"]
    
    var wisataDesc = ["Raja Ampat is Awesome Island","Borobudur Tample is full of history","Mount Bromo is Amazing Mount","Monas is a Cool Building","Tana Toraja is Beautifull House","Bali is most beautifull island","Bandung is a cool city","Batam beach is wonderful beach","Jepara Beach is Awesome beach","Lamongan beach is a good beach for View","Lawang Sewu is a coo building with one thousand door and a scary building","Surabaya Beach is a wonderful beach","Riau is a Awesome beach","Yogayakarta city is full of history"]
    
    var wisataPhoto = [#imageLiteral(resourceName: "Ampat"), #imageLiteral(resourceName: "Borobudur"), #imageLiteral(resourceName: "Bromo"), #imageLiteral(resourceName: "Monas"), #imageLiteral(resourceName: "Toraja"), #imageLiteral(resourceName: "Bali"), #imageLiteral(resourceName: "Bandung"), #imageLiteral(resourceName: "Batam"), #imageLiteral(resourceName: "Jepara"), #imageLiteral(resourceName: "Lamongan"), #imageLiteral(resourceName: "Lawang Sewu"), #imageLiteral(resourceName: "Pantai Surabaya"), #imageLiteral(resourceName: "Riau"), #imageLiteral(resourceName: "Yogyakarta")]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wisataName.count
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellWisata")! as UITableViewCell
        
        
       var wisataNamaLabel = cell.viewWithTag(1) as! UILabel
        var wisataDescLabel = cell.viewWithTag(2) as! UILabel
        var wisataImageView = cell.viewWithTag(3) as! UIImageView
        
        wisataNamaLabel.text = wisataName[indexPath.row]
        wisataDescLabel.text = wisataDesc[indexPath.row]
        wisataImageView.image = wisataPhoto[indexPath.row]
        
        
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //mengecek data yg dikirim
        print("Row \(indexPath.row)selected")
        
        namaSelected = self.wisataName[indexPath.row]
        gambarSelected = self.wisataName[indexPath.row]
        descSelected = self.wisataDesc[indexPath.row]
        //memanggil segue passdata
        performSegue(withIdentifier: "passDataWisata", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //mengecek apakah seguenya ada atau tidak
        if segue.identifier == "passDataWisata" {
            //kondisi ketika segue nya ada
            //mengirim ke detailViewController
            let kirimData = segue.destination as! DetailViewController
            //mengirim data ke masing2 variabel
            //mengirimnama wisata
            kirimData.passnamaWisata = namaSelected
            kirimData.passGambarWisata = gambarSelected
            kirimData.passdescWisata = descSelected
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

