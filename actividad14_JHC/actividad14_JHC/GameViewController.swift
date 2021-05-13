//
//  GameViewController.swift
//  actividad14_JHC
//
//  Created by Francisco Hernandez Ayala on 12/05/21.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let View = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            let scene = GameScene(size: View.bounds.size)
            scene.scaleMode = .aspectFill
            View.presentScene(scene)
            View.ignoresSiblingOrder = true
            View.showsFPS = true
            View.showsNodeCount = true
            View.showsPhysics = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
