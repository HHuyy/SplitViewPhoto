//
//  MasterViewController.swift
//  SplitViewPhoto
//
//  Created by tham gia huy on 6/6/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

protocol PokemonSelectionDelegate: class {
    func PokemonSelected(_ newPokemon: Pokemon)
}

class MasterViewController: UITableViewController {
    var pokemons = [
        Pokemon(photoName: "Crobat"),
        Pokemon(photoName: "Gardevoir"),
        Pokemon(photoName: "Gastly"),
        Pokemon(photoName: "Machamp")
    ]
    weak var delegate : PokemonSelectionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pokedex2")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let pokemon = pokemons[indexPath.row]
        cell.imagePokemon.image = UIImage(named: pokemon.photoName)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPokemon =  pokemons[indexPath.row]
        delegate?.PokemonSelected(selectedPokemon)
        if let detailViewController = delegate as? DetailViewController, let detailNavigationController = detailViewController.navigationController {
            splitViewController?.showDetailViewController(detailNavigationController, sender: nil)
        }
        
    }

}
