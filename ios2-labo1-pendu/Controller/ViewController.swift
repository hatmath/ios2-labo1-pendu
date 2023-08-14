//
//  ViewController.swift
//  ios2-labo1-pendu
//
//  Created by Simon Turcotte (2395412) et Mathieu Hatin (2296939)
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
    var hangmanGame: HangmanGame!
    var movieDownloader = MovieDownloader.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtFieldUneLettre.text = ""
        txtFieldLesLettres.text = ""

        fetchRandomMovieTitle()
    }

    func fetchRandomMovieTitle() {
        movieDownloader.fetchRandomMovie { result in
            switch result {
            case .success(let movie):
                DispatchQueue.main.async {
                    self.hangmanGame = HangmanGame(word: movie.Title.uppercased())
                    self.lblDevinette.text = self.hangmanGame.getGuessedWord()
                }
            case .failure(let error):
                print("Error fetching movie title: \(error)")
                // Handle error if needed
            }
        }
    }

    @IBAction func pushValider(_ sender: Any) {
        if hangmanGame.getIncorrectGuessCount() < hangmanGame.getNumberOfGuess() {
            if let letter = txtFieldUneLettre.text?.first {
                nbEssais += 1
                // Make a guess using the HangmanGame instance
                hangmanGame.makeGuess(letter: letter)

                // Update UI elements
                txtFieldLesLettres.text = hangmanGame.getSelectedLetters().sorted().map { String($0) }.joined(separator: ", ")
                lblPointage.text = "Pointage: \(hangmanGame.getIncorrectGuessCount())/\(hangmanGame.getNumberOfGuess() )"
                lblDevinette.text = hangmanGame.getGuessedWord()

                if hangmanGame.isWordGuessed() {
                    // update UI
                }
            }
        } else {
            // Game over
        }

        txtFieldUneLettre.text = ""
    }

}



//import UIKit
//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var txtFieldUneLettre: UITextField!
//    @IBOutlet weak var txtFieldLesLettres: UITextField!
//    @IBOutlet weak var btnValider: UIButton!
//    @IBOutlet weak var lblDevinette: UILabel!
//    @IBOutlet weak var imgViewPendu: UIImageView!
//    @IBOutlet weak var lblPointage: UILabel!
//
//    var pointage = 0
//    var nbEssais = 7
//    var strLeMotChercher = ""
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        txtFieldUneLettre.text = ""
//        txtFieldLesLettres.text = ""
//    }
//
//    @IBAction func pushValider(_ sender: Any) {
//
//        if (pointage < nbEssais) {
//            if (txtFieldUneLettre.text != "") {
//
//                if (txtFieldLesLettres.text == ""){
//                    txtFieldLesLettres.text = txtFieldUneLettre.text
//                } else {
//                    txtFieldLesLettres.text =
//                    [txtFieldLesLettres.text,txtFieldUneLettre.text]
//                        .compactMap { $0 }
//                        .joined(separator: ",")
//                }
//
//                pointage += 1
//
//                switch pointage {
//                  case 0:
//                    lblPointage.text = "Pointage: 0/7"
//                  case 1:
//                    lblPointage.text = "Pointage: 1/7"
//                  case 2:
//                    lblPointage.text = "Pointage: 2/7"
//                  case 3:
//                    lblPointage.text = "Pointage: 3/7"
//                  case 4:
//                    lblPointage.text = "Pointage: 4/7"
//                  case 5:
//                    lblPointage.text = "Pointage: 5/7"
//                  case 6:
//                    lblPointage.text = "Pointage: 6/7"
//                  case 7:
//                    lblPointage.text = "Pointage: 7/7"
//                  default:
//                    lblPointage.text = "Pointage:"
//                }
//
//            }
//
//            txtFieldUneLettre.text = ""
//        } else {
//
//        }
//
//    }
//
//}
//
