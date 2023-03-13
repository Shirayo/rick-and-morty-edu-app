//
//  RMCharacterViewController.swift
//  rick_and_morty_edu_app
//
//  Created by Shirayo on 08.03.2023.
//

import UIKit

/// Controller to show and search for Charecters
final class RMCharactersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        // Do any additional setup after loading the view.
        
        let request = RMRequest(
            endpoint: .character,
//            pathComponents: ["1"],
            queryParameters: [.init(name: "name", value: "Rick")]
        )
        print(request.url)
        
        RMService.shared.execute(request,
                                 expecting: RMCharacter.self) { result in
//            switch result {
//            case .success(result) : break
//                
//            case .failure(error): break
//                
//            }
        }
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
