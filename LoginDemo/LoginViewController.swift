//
//  LoginViewController.swift
//  LoginDemo
//
//  Created by Manali Bobade on 21/06/23.
//

import UIKit

public class LoginViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    public init() {
        super.init(nibName: "LoginViewController", bundle: Bundle(for: LoginViewController.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        activityIndicator.startAnimating()
        sender.isEnabled = false
        let url = URL(string: "https://cat-fact.herokuapp.com/facts/")!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            print("Login Demo Response \(response)")
            print("Login Demo Error \(error)")
            DispatchQueue.main.async {
                sender.isEnabled = true
                self.activityIndicator.stopAnimating()
            }
        }
        task.resume()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
