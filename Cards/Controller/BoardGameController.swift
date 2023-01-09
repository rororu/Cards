//
//  BoardGameUIViewController.swift
//  Cards
//
//  Created by Роман Романов on 10.01.2023.
//

import UIKit

class BoardGameController: UIViewController {
    
    var cardsPairsCounts = 8
    lazy var game: Game = getNewGame()
    
    private func getNewGame() -> Game {
        let game = Game()
        game.cardsCount = self.cardsPairsCounts
        game.generateCards()
        
        return game
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
