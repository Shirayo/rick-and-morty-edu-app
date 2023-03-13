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
            queryParameters: [
                .init(name: "name", value: "Rick"),
                .init(name: "status", value: "alive")]
        )
        print(request.url)
        
//        RMService.shared.execute(request,
//                                 expecting: RMCharacter.self) { result in
//            switch result {
//            case .success: break
//
//            case .failure(let error): break
//                print(String(describing: error))
//            }
//        }
        RMService.shared.execute(.listCharactersRequest, expecting: GetCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total \(model.info.count)")
                print("Pages \(model.info.pages)")
                print("Results \(model.results.count)")
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
