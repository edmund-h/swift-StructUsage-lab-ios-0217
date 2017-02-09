//
//  ViewController.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var bigImageView: UIImageView!
    var charDict: [String : Character] = [:]
    
    
    var finn: Character!
    var jake: Character!
    var bubblegum: Character!
    var bmo: Character!
    var lemongrab: Character!
    var lsp: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAllCharacters()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if let myCharacter = charDict[sender.titleLabel!.text!]{
        updateViews(with: myCharacter)
        }// passes button text to updateViews based on dictionary rather than switch statement
    }
    
    func createAllCharacters() {
        finn = Character (name: "Finn the Human", species: "Human", occupation: "Hero", powerLevel: 50.0)
        jake = Character (name: "Jake the Dog", species: "Stretchy Talking Dog", occupation: "Sidekick", powerLevel: 60.0)
        bmo = Character (name: "BMO", species: "Robot", occupation: "Handheld Gaming System ", powerLevel: 35.0)
        bubblegum = Character(name: "Princess Bubblegum", species: "Candy Person", occupation: "Regent", powerLevel: 190.0)
        lemongrab = Character(name: "Lemongrab", species: "Candy Person", occupation: "Autocrat", powerLevel: 49.0)
        lsp = Character(name: "Lumpy Space Princess", species: "Space Candy Person", occupation: "Princess?", powerLevel: 42)
        
        charDict = [
            "Finn" : finn,
            "Jake" : jake,
            "BMO" : bmo,
            "Bubblegum" : bubblegum,
            "Lemongrab" : lemongrab,
            "LSP" : lsp
        ] //i prefer a dictionary lookup over a switch statement, also i want to get more comfortable with dictionaries and calling from them
    }
    
    func updateViews(with: Character){
        bigImageView.image = with.displayImage()
        nameLabel.text = with.name
        occupationLabel.text = with.occupation
        speciesLabel.text = with.species
    }
}

