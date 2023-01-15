//
//  ViewController.swift
//  TicTacToe
//
//  Created by Berkay Sutlu on 15.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var turnCount = 0
    var p1Score = 0
    var p2Score = 0
    
    @IBOutlet weak var playAgainOut: UIButton!
    @IBOutlet weak var nextRoundOut: UIButton!
    @IBOutlet weak var topLeftOut: UIButton!
    @IBOutlet weak var topMidOut: UIButton!
    @IBOutlet weak var topRightOut: UIButton!
    @IBOutlet weak var midLeftOut: UIButton!
    @IBOutlet weak var midMidOut: UIButton!
    @IBOutlet weak var midRightOut: UIButton!
    @IBOutlet weak var botLeftOut: UIButton!
    @IBOutlet weak var botMidOut: UIButton!
    @IBOutlet weak var botRightOut: UIButton!
    @IBOutlet weak var gameOverLbl: UILabel!
    @IBOutlet weak var roundLbl: UILabel!
    @IBOutlet weak var crossLbl: UILabel!
    @IBOutlet weak var player1Score: UILabel!
    @IBOutlet weak var player2Score: UILabel!
    
    @IBAction func topLeftBtn(_ sender: UIButton) {
        if turnCount % 2 == 0 {
            topLeftOut.setTitle("O", for: .normal)
        }
        else {
            topLeftOut.setTitle("X", for: .normal)
        }
        turnCount += 1
        topLeftOut.isEnabled = false
        
        whoWins()
    }
    @IBAction func topMidBtn(_ sender: UIButton) {
        if turnCount % 2 == 0 {
            topMidOut.setTitle("O", for: .normal)
        }
        else {
            topMidOut.setTitle("X", for: .normal)
        }
        turnCount += 1
        topMidOut.isEnabled = false
        
        whoWins()
    }
    @IBAction func topRightBtn(_ sender: UIButton) {
        if turnCount % 2 == 0 {
            topRightOut.setTitle("O", for: .normal)
        }
        else {
            topRightOut.setTitle("X", for: .normal)
        }
        turnCount += 1
        topRightOut.isEnabled = false
        
        whoWins()
    }
    @IBAction func midLeftBtn(_ sender: UIButton) {
        if turnCount % 2 == 0 {
            midLeftOut.setTitle("O", for: .normal)
        }
        else {
            midLeftOut.setTitle("X", for: .normal)
        }
        turnCount += 1
        midLeftOut.isEnabled = false
        whoWins()
    }
    @IBAction func midMidBtn(_ sender: UIButton) {
        if turnCount % 2 == 0 {
            midMidOut.setTitle("O", for: .normal)
        }
        else {
            midMidOut.setTitle("X", for: .normal)
        }

        turnCount += 1
        midMidOut.isEnabled = false
        whoWins()
    }
    @IBAction func midRightBtn(_ sender: UIButton) {
        if turnCount % 2 == 0 {
            midRightOut.setTitle("O", for: .normal)
        }
        else {
            midRightOut.setTitle("X", for: .normal)
        }
        turnCount += 1
        midRightOut.isEnabled = false
        whoWins()
    }
    @IBAction func botLeftBtn(_ sender: UIButton) {
        if turnCount % 2 == 0 {
            botLeftOut.setTitle("O", for: .normal)
        }
        else {
            botLeftOut.setTitle("X", for: .normal)
        }
        turnCount += 1
        botLeftOut.isEnabled = false
        whoWins()
    }
    @IBAction func botMidBtn(_ sender: UIButton) {
        if turnCount % 2 == 0 {
            botMidOut.setTitle("O", for: .normal)
        }
        else {
            botMidOut.setTitle("X", for: .normal)
        }
        turnCount += 1
        botMidOut.isEnabled = false
        whoWins()
    }
    @IBAction func botRightBtn(_ sender: UIButton) {
        if turnCount % 2 == 0 {
            botRightOut.setTitle("O", for: .normal)
        }
        else {
            botRightOut.setTitle("X", for: .normal)
        }
        turnCount += 1
        botRightOut.isEnabled = false
        whoWins()
    }

    
    @IBAction func playAgainBtn(_ sender: UIButton) {
        p1Score = 0
        p2Score = 0
        player1Score.text = String(p1Score)
        player2Score.text = String(p2Score)
        gameOverLbl.isHidden = true
        turnCount = 0
        openUpBtn()
        
    }
    
    
    @IBAction func nextRoundBtn(_ sender: UIButton) {
        changeOX()
        
        openUpBtn()
        
        gameOverLbl.isHidden = true
    }
    
    func whoWins(){
        if topLeftOut.currentTitle == "O" && topMidOut.currentTitle == "O" &&
            topRightOut.currentTitle == "O"
        {
             scoreO()
             finishGame()
        }
        else if topLeftOut.currentTitle == "X" && topMidOut.currentTitle == "X" &&
            topRightOut.currentTitle == "X"

        {
            scoreX()
            finishGame()
        }
        
        else if midLeftOut.currentTitle == "O" &&  midMidOut.currentTitle == "O" &&
            midRightOut.currentTitle == "O"
        {
            scoreO()
            finishGame()
        }
         else if midLeftOut.currentTitle == "X" && midMidOut.currentTitle == "X" &&
            midRightOut.currentTitle == "X"
        {
            scoreX()
            finishGame()
        }
        else if botLeftOut.currentTitle == "O" && botMidOut.currentTitle == "O" && botRightOut.currentTitle == "O"
        {
           scoreO()
           finishGame()
        }
        else if botLeftOut.currentTitle == "X" && botLeftOut.currentTitle == "X" && botRightOut.currentTitle == "X"
        {
            scoreX()
            finishGame()
        }
        
        else if topLeftOut.currentTitle == "O" && midLeftOut.currentTitle == "O" && botLeftOut.currentTitle == "O"
        {
           scoreO()
           finishGame()
        }
        else if topLeftOut.currentTitle == "X" && midLeftOut.currentTitle == "X" && botLeftOut.currentTitle == "X"
        {
            scoreX()
            finishGame()
        }
        else if topMidOut.currentTitle == "O" && midMidOut.currentTitle == "O" && botMidOut.currentTitle == "O"
        {
           scoreO()
           finishGame()
        }
        else if topMidOut.currentTitle == "X" && midMidOut.currentTitle == "X" && botMidOut.currentTitle == "X"
        {
            scoreX()
            finishGame()
        }
        else if topRightOut.currentTitle == "O" && midRightOut.currentTitle == "O" && botRightOut.currentTitle == "O"
        {
           scoreO()
           finishGame()
        }
        else if topRightOut.currentTitle == "X" && midRightOut.currentTitle == "X" && botRightOut.currentTitle == "X"
        {
            scoreX()
            finishGame()
        }
        else if topLeftOut.currentTitle == "O" && midMidOut.currentTitle == "O" && botRightOut.currentTitle == "O"
        {
           scoreO()
           finishGame()
        }
        else if topLeftOut.currentTitle == "X" && midMidOut.currentTitle == "X" && botRightOut.currentTitle == "X"
        {
            scoreX()
            finishGame()
        }
        else if topRightOut.currentTitle == "O" && midMidOut.currentTitle == "O" && botLeftOut.currentTitle == "O"
        {
            scoreO()
           finishGame()
        }
        else if topRightOut.currentTitle == "X" && midMidOut.currentTitle == "X" && botLeftOut.currentTitle == "X"
        {
            scoreX()
            finishGame()
        }
        
        
    }
    func finishGame(){
        topLeftOut.isEnabled = false
        topMidOut.isEnabled = false
        topRightOut.isEnabled = false
        midLeftOut.isEnabled = false
        midMidOut.isEnabled = false
        midRightOut.isEnabled = false
        botLeftOut.isEnabled = false
        botMidOut.isEnabled = false
        botRightOut.isEnabled = false
        
        
        
        nextRoundOut.isEnabled = true
        
        player1Score.text = String(p1Score)
        player2Score.text = String(p2Score)
        
        if p1Score == 5  {
            gameOverLbl.text = "Congratz Player A"
            gameOverLbl.isHidden = false
            nextRoundOut.isEnabled = false
            playAgainOut.isEnabled = true
        }
        else if p2Score == 5 {
            gameOverLbl.text = "Congratz Player B"
            gameOverLbl.isHidden = false
            nextRoundOut.isEnabled = false
            playAgainOut.isEnabled = true
        }
    }
    
    
    func changeOX(){
        if roundLbl.text == "O" {
            roundLbl.text = "X"
            crossLbl.text = "O"
        }
        else{
            roundLbl.text = "O"
            crossLbl.text = "X"
        }
    }
    
    func scoreO(){
        if roundLbl.text == "O" {
            p1Score += 1
            gameOverLbl.text = "Player A Won!"
            gameOverLbl.isHidden = false
        }
        else if crossLbl.text == "O" {
            p2Score += 1
            gameOverLbl.text = "Player B Won!"
            gameOverLbl.isHidden = false
        }
        
    }
        func scoreX(){
            if roundLbl.text == "X" {
                p1Score += 1
                gameOverLbl.text = "Player A Won!"
                gameOverLbl.isHidden = false
            }
            else if crossLbl.text == "X" {
                p2Score += 1
                gameOverLbl.text = "Player B Won!"
                gameOverLbl.isHidden = false
            }
        
    }
    func openUpBtn(){
        topLeftOut.isEnabled = true
        topMidOut.isEnabled = true
        topRightOut.isEnabled = true
        midLeftOut.isEnabled = true
        midMidOut.isEnabled = true
        midRightOut.isEnabled = true
        botLeftOut.isEnabled = true
        botMidOut.isEnabled = true
        botRightOut.isEnabled = true
        
        topLeftOut.setTitle("", for: .normal)
        topMidOut.setTitle("", for: .normal)
        topRightOut.setTitle("", for: .normal)
        midLeftOut.setTitle("", for: .normal)
        midMidOut.setTitle("", for: .normal)
        midRightOut.setTitle("", for: .normal)
        botLeftOut.setTitle("", for: .normal)
        botMidOut.setTitle("", for: .normal)
        botRightOut.setTitle("", for: .normal)
    }
}
