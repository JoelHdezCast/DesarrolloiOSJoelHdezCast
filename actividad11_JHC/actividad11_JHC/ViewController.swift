//
//  ViewController.swift
//  actividad11_JHC
//
//  Created by Francisco Hernandez Ayala on 21/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    var imgNum:[String] = []
    
    @IBOutlet var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        for valor in 1...19{
        imgNum.append("\(valor)/")
        }
    }
}

extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        collectionView.deselectItem(at: indexPath, animated: true)
        print("You tapped me")
    }
}
extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgNum.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        
        cell.configure(with: UIImage(named: imgNum[indexPath.row])!)
        return cell
    }
}

//extension ViewController: UICollectionViewDelegateFlowLayout{
    
//}

