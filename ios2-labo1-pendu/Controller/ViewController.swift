//
//  ViewController.swift
//  ios2-labo1-pendu
//
//  Created by Mathieu Hatin (Étudiant) on 2023-08-08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFieldUneLettre: UITextField!
    @IBOutlet weak var txtFieldLesLettres: UITextField!
    @IBOutlet weak var btnValider: UIButton!
    @IBOutlet weak var lblDevinette: UILabel!
    @IBOutlet weak var imgViewPendu: UIImageView!
    @IBOutlet weak var lblPointage: UILabel!
    
    var pointage = 0
    var nbEssais = 7
    var strLeMotChercher = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtFieldUneLettre.text = ""
        txtFieldLesLettres.text = ""
    }

    @IBAction func pushValider(_ sender: Any) {
        
        if (pointage < nbEssais) {
            if (txtFieldUneLettre.text != "") {
            
                if (txtFieldLesLettres.text == ""){
                    txtFieldLesLettres.text = txtFieldUneLettre.text
                } else {
                    txtFieldLesLettres.text =
                    [txtFieldLesLettres.text,txtFieldUneLettre.text]
                        .compactMap { $0 }
                        .joined(separator: ",")
                }
                
                pointage += 1
                
                switch pointage {
                  case 0:
                    lblPointage.text = "Pointage: 0/7"
                  case 1:
                    lblPointage.text = "Pointage: 1/7"
                  case 2:
                    lblPointage.text = "Pointage: 2/7"
                  case 3:
                    lblPointage.text = "Pointage: 3/7"
                  case 4:
                    lblPointage.text = "Pointage: 4/7"
                  case 5:
                    lblPointage.text = "Pointage: 5/7"
                  case 6:
                    lblPointage.text = "Pointage: 6/7"
                  case 7:
                    lblPointage.text = "Pointage: 7/7"
                  default:
                    lblPointage.text = "Pointage:"
                }
                           
            }
            
            txtFieldUneLettre.text = ""
        } else {
        
        }
        
    }
    
}

