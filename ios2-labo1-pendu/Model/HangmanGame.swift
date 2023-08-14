//
//  GameOne.swift
//  ios2-labo1-pendu
//
//  Created by Simon Turcotte (2395412) et Mathieu Hatin (2296939)
//

class HangmanGame {
    private let word: String
    private var guessedWord: [Character]
    private var incorrectGuessCount = 0
    private var selectedLetters: Set<Character> = []

    init(word: String) {
        self.word = word.uppercased()
        self.guessedWord = Array(repeating: "_", count: word.count)
    }

    func makeGuess(letter: Character) {
        let uppercasedLetter = Character(letter.uppercased())
        guard !selectedLetters.contains(uppercasedLetter) else {
            return // Letter has already been guessed
        }
        
        selectedLetters.insert(uppercasedLetter)

        if word.contains(uppercasedLetter) {
            for (index, char) in word.enumerated() {
                if char == uppercasedLetter {
                    guessedWord[index] = char
                }
            }
        } else {
            incorrectGuessCount += 1
        }
    }

    func isWordGuessed() -> Bool {
        return guessedWord == Array(word)
    }

    func isGameOver() -> Bool {
        return incorrectGuessCount >= 7 || isWordGuessed()
    }

    func getGuessedWord() -> String {
        return guessedWord.map { String($0) }.joined(separator: " ")
    }

    func getIncorrectGuessCount() -> Int {
        return incorrectGuessCount
    }

    func getSelectedLetters() -> Set<Character> {
        return selectedLetters
    }
}
