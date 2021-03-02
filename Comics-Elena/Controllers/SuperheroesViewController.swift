//
//  SuperheroesViewController.swift
//  Comics-Elena
//
//  Created by elena hermina barbullushi on 01.03.21.
//

import UIKit

class SuperheroesViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func loadView() {
        super.loadView()
        
    }
    override func viewDidLoad() {
     
            super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        
    }
   
}


    extension SuperheroesViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        defaultAvengers.count
    }
        

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width / 2 - 16,
               height: collectionView.frame.width / 2 - 16)
    }
    
    
    
        func collectionView(_ collectionView: UICollectionView,  cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SuperheroeViewCell",
                                                     for: indexPath) as? SuperheroeViewCell
            
            if(indexPath.row < defaultAvengers.count) {
                let data = defaultAvengers[indexPath.row]
                cell?.configure(title: data.name, name: data.name)
                
            }
             
            return cell ?? UICollectionViewCell()
        }
    }


