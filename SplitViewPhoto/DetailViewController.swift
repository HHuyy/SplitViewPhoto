//
//  DetailViewController.swift
//  SplitViewPhoto
//
//  Created by tham gia huy on 6/6/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    var pokemon: Pokemon? {
        didSet {
            refreshUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pokedex2")!)
    }
    
    func refreshUI() {
        loadViewIfNeeded()
        detailImage.image = pokemon?.photo
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension DetailViewController: PokemonSelectionDelegate {
    func PokemonSelected(_ newPokemon: Pokemon) {
        pokemon = newPokemon   
    }
}

