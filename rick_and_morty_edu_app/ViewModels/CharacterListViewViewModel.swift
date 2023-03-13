//
//  CharacterListViewViewModel.swift
//  rick_and_morty_edu_app
//
//  Created by Shirayo on 13.03.2023.
//

import Foundation
import UIKit

final class CharacterListViewViewModel: NSObject {
    
        
    func fetchCharacters() {
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                .init(name: "name", value: "Rick"),
                .init(name: "status", value: "alive")]
        )

        print(request.url ?? "failed to print url")

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

extension CharacterListViewViewModel: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .systemCyan
        return cell
    }
}

extension CharacterListViewViewModel: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let bounds = UIScreen.
        let screenSize = UIScreen.main.bounds // will be deprexcated soon
        let width = (screenSize.width - 30) / 2
        let height = width * 1.5
        return CGSize(
            width: width,
            height: height
        )
    }
    
}

extension CharacterListViewViewModel: UICollectionViewDelegateFlowLayout {
    
    
}
