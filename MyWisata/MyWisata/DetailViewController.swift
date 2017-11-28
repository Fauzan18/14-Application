//
//  DetailViewController.swift
//  MyWisata
//
//  Created by Master on 20/10/17.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var descWisata: UILabel!
    @IBOutlet weak var namaWisata: UILabel!
    @IBOutlet weak var imgWisata: UIImageView!
    
    //untuk mendeklarasi variable untuk dikirim
    
    var passnamaWisata:String?
    var passGambarWisata:String?
    var passdescWisata:String?
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //menampilkan data yang sudah dikirim
        
        namaWisata.text = passnamaWisata
        imgWisata.image = UIImage(named: passGambarWisata!)
        descWisata.text = passdescWisata

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
