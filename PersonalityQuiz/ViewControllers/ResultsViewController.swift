//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Игорь Богданов on 10.04.2022.
//

import UIKit

class ResultsViewController: UIViewController {

    var results: [Answer] = []
    var dog = 0
    var cat = 0
    var rabbit = 0
    var turtle = 0
    var animalsChosen: [Int] = []
    
    @IBOutlet var defenitionLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
       
    }
    
    private func countAnswers() {
        for  result in results {
            let animalChosen = result.animal
            switch animalChosen {
            case .dog:
                dog += 1
                animalsChosen.append(dog)
            case .cat:
                cat += 1
                animalsChosen.append(cat)
            case .turtle:
                turtle += 1
                animalsChosen.append(turtle)
            case .rabbit:
                rabbit += 1
                animalsChosen.append(rabbit)
            }
        }
    }
    
    private func getYourPersonalAnimal() {
        
        if animalsChosen.max() == dog {
            defenitionLabel.text = "Вы - \(Animal.dog.rawValue)"
            descriptionLabel.text = "\(Animal.dog.definition)"
        } else if animalsChosen.max() == cat {
            defenitionLabel.text = "Вы - \(Animal.cat.rawValue)"
            descriptionLabel.text = "\(Animal.cat.definition)"
        } else if animalsChosen.max() == turtle {
            defenitionLabel.text = "Вы - \(Animal.turtle.rawValue)"
            descriptionLabel.text = "\(Animal.turtle.definition)"
        } else if animalsChosen.max() == rabbit {
            defenitionLabel.text = "Вы - \(Animal.rabbit.rawValue)"
            descriptionLabel.text = "\(Animal.rabbit.definition)"
        }
        
    }
    
}
