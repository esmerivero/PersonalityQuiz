//
//  QuestionViewController.swift
//  Single View App
//
//  Created by Apple Device 7 on 10/19/19.
//  Copyright © 2019 PersonalityQuiz-ECC. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    
    @IBOutlet weak var singleStackView: UIStackView!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    
    
    @IBOutlet weak var rangedStackView: UIStackView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleQuestion1: UIButton!
    
    @IBOutlet weak var singleQuestion2: UIButton!
    
    @IBOutlet weak var singleQuestion3: UIButton!
    
    @IBOutlet weak var singleQuestion4: UIButton!
    
    // Multiple stack
    
    @IBOutlet weak var multipleQuestionLabel1: UILabel!
    
    @IBOutlet weak var multipleQuestionSwitch1: UISwitch!
    
    @IBOutlet weak var multipleQuestionLabel2: UILabel!
    
    @IBOutlet weak var multipleQuestionSwitch2: UISwitch!
    
    @IBOutlet weak var multipleStackViewLabel3: UILabel!
    
    @IBOutlet weak var multipleStackViewSwitch3: UISwitch!
    
    
    @IBOutlet weak var multipleStackViewLabel4: UILabel!
    
    @IBOutlet weak var multipleStackViewSwitch4: UISwitch!
    
    
    @IBOutlet weak var multipleStackViewLabel5: UILabel!
    
    @IBOutlet weak var multipleStackViewSwitch5: UISwitch!
    
    
    @IBOutlet weak var multipleStackViewLabel6: UILabel!
    
    @IBOutlet weak var multipleStackViewSwitch6: UISwitch!
    
    @IBOutlet weak var rangedStackLabel1: UILabel!
    
    @IBOutlet weak var rangedStackViewLabel2: UILabel!
    
    @IBOutlet weak var rangedStackViewSlider: UISlider!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    func updateUI(){
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        switch questionIndex {
        case 0:
            singleStackView.isHidden = false
            multipleStackView.isHidden = true
            rangedStackView.isHidden = true
        case 1:
            singleStackView.isHidden = true
            multipleStackView.isHidden = false
            rangedStackView.isHidden = true
        case 2:
            singleStackView.isHidden = true
            multipleStackView.isHidden = true
            rangedStackView.isHidden = false
        default:
            singleStackView.isHidden = true
            multipleStackView.isHidden = true
            rangedStackView.isHidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    var questionOne = Question.init(text: "Cual es tu actividad favorita?", type: .single, answer: [Answer.init(text:"Leer un libro", type:.Bella), Answer.init(text:"Cocinar", type:.Tiana),Answer.init(text:"Nadar", type:.Ariel), Answer.init(text:"Artes marciales", type:.Mulan)])
    

    var questionTwo = Question.init(text: "Animal que dirige mi desfile", type: .single, answer: [Answer.init(text:"Pez", type:.Ariel), Answer.init(text:"Cocodrilo", type:.Tiana),Answer.init(text:"Dragon", type:.Mulan), Answer.init(text:"Caballo", type:.Bella)])
    
    var questionThree = Question.init(text: "Cualidad de un principe", type: .multiple, answer: [Answer.init(text:"No necesito un principe", type:.Tiana), Answer.init(text:"Encantador", type:.Ariel),Answer.init(text:"Inteligente", type:.Bella), Answer.init(text:"Honorable", type:.Mulan), Answer.init(text:"Amable", type:.Ariel)])
    
    var questionFour = Question.init(text: "Que tan dulce te consideras?", type: .ranged, answer: [Answer.init(text:"Nada dulce", type:.Mulan), Answer.init(text:"Poco dulce", type:.Tiana),Answer.init(text:"Dulce", type:.Bella), Answer.init(text:"Muy dulce", type:.Ariel)])
    

    
    var question = [questionOne, questionTwo, questionThree, questionFour]

    var questionIndex = 0
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
