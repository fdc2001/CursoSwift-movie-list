//
//  ViewController.swift
//  App Filmes
//
//  Created by Filipe Clemente on 08/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func createMovies(){
        DataMovie.collection.removeAll()
        let movie1 = Movie(title: "Senhor dos aneis: O retorno do rei", imageName: "SenhorDosAneis", isFavorite: true)
        let movie2 = Movie(title: "Homem aranha", imageName: "homemAranha", isFavorite: false)
        
        DataMovie.collection.append(movie1)
        DataMovie.collection.append(movie2)
    }


    @IBAction func login(_ sender: Any) {
        if(txtEmail.text == "fdc2112001@gmail.com" && txtPassword.text == "12345"){
            createMovies()
            performSegue(withIdentifier:"Table", sender: self)
        }else{
            let alert = UIAlertController(title: "Error", message: "Your credential is invalid", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            
            self.present(alert, animated:true, completion: nil)
        }
    }
}

