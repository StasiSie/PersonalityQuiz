//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Игорь Богданов on 10.04.2022.
//

import UIKit

class ResultsViewController: UIViewController {

    var results: [Answer]!
    
    @IBOutlet var defenitionLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        countAnswers()
    }
    
    private func countAnswers() {
        
        let answers = Dictionary(grouping: results) {$0.animal}
            .sorted {$0.value.count > $1.value.count}
        let yourAnimal = answers.first?.key
        getYourAnimal(from: yourAnimal)
    }
    
    private func getYourAnimal(from animal: Animal?) {
        defenitionLabel.text = "Вы - \(animal?.rawValue ?? "🐳" )"
        descriptionLabel.text = "\(animal?.definition ?? "Something went wrong")"
    }
    
    
}
