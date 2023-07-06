import AVFoundation
import AVKit
import MLYSDK
import UIKit

class PlayerViewController: UIViewController {
    lazy var player:AVPlayer? = AVPlayer()
    lazy var playerViewController = {
        let controller = AVPlayerViewController()
        controller.showsPlaybackControls = true
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        controller.view.backgroundColor = .darkGray
        controller.player = self.player
        return controller
    }()

    lazy var plugin = MLYAVPlayerPlugin()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        do {
            try MLYDriver.initialize { options in
                options.client.id = clientID
            }
            self.plugin.adapt(self.playerViewController)
        } catch {
            print(error)
        }
        guard let player = self.player else {
            return
        }
        let url = URL(string:videoURL)!
        let playerItem = AVPlayerItem(url: url)
        player.replaceCurrentItem(with: playerItem)
        player.play()
    }

    func setupUI() {
        self.view.backgroundColor = .black
        self.addChild(self.playerViewController)
        self.view.addSubview(self.playerViewController.view)
        self.playerViewController.view.frame = .init(x: 0, y: 0, width: UIView.screenWidth(), height: UIView.screenHeight())
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.plugin.deactivate()
        self.player?.replaceCurrentItem(with: nil)
        self.player = nil
        super.viewDidDisappear(animated)
    }
}
