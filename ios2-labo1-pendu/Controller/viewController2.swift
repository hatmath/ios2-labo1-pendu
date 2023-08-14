import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFieldUneLettre: UITextField!
    @IBOutlet weak var txtFieldLesLettres: UITextField!
    @IBOutlet weak var btnValider: UIButton!
    @IBOutlet weak var lblDevinette: UILabel!
    @IBOutlet weak var imgViewPendu: UIImageView!
    @IBOutlet weak var lblPointage: UILabel
    
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
        if pointage < nbEssais {
            if let letter = txtFieldUneLettre.text?.first {
                // Make a guess using the HangmanGame instance
                hangmanGame.makeGuess(letter: letter)
                
                // Update UI elements
                txtFieldLesLettres.text = hangmanGame.getSelectedLetters().sorted().map { String($0) }.joined(separator: ", ")
                lblPointage.text = "Pointage: \(hangmanGame.getIncorrectGuessCount())/\(nbEssais)"
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
