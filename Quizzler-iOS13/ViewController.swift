//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["1 + 1 is equal to 2","True"],
        ["2 - 2 is equal to 4","False"],
        ["1 / 0 is equal to 0","True"]
    ]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        //--MARK: Cek Jawaban
        let userAnswer = sender.currentTitle //True, False
        let actualAnswer = quiz[questionNumber][1] //kok 1? kalau bingung coba pahami array 2D
        
        if userAnswer == actualAnswer{
            print("GoodJob")
        }else{
            print("Idiot")
        }
        
        //--MARK: Validasi jumlah pertanyaan untuk fix(index out of range)
        if questionNumber + 1 < quiz.count{
            //note: questionNumber kan index, bukan jumlah.
            questionNumber += 1
        }else{
            print("Repeat!")
            questionNumber = 0
        }
        updateUI()
        
        
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

