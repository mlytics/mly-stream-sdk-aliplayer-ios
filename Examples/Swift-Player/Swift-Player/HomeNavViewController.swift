
import MLYSDK
import UIKit

let clientID = "cegh8d9j11u91ba1u600"
let videoURL = "https://vsp-stream.s3.ap-northeast-1.amazonaws.com/HLS/raw/SpaceX.m3u8" 

class HomeNavViewController: UIViewController {
     
    var aliPlayerButton: UIButton!
    
    var playerButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
 
    @objc func goAliPlayerVideoBtnAction() {
        self.navigationController?.pushViewController(AliPlayerViewController(), animated: true)
    }
    
    @objc func goPlayerVideoBtnAction() {
        self.navigationController?.pushViewController(PlayerViewController(), animated: true)
    }
 
}

extension HomeNavViewController {
    func setupUI() {
        self.view.backgroundColor = .black
        let btnHeight = 50.0
   
        self.aliPlayerButton = UIButton(frame: CGRect(x: 0, y: 80, width: self.view.frame.width, height: btnHeight))
        self.aliPlayerButton.setTitle("AliPlayer", for: .normal)
        self.aliPlayerButton.setTitleColor(.white, for: .normal)
        
        self.playerButton = UIButton(frame: CGRect(x: 0, y: self.aliPlayerButton.frame.maxY, width: self.view.frame.width, height: btnHeight))
        self.playerButton.setTitle("AVPlayer", for: .normal)
        self.playerButton.setTitleColor(.white, for: .normal)
 
        self.aliPlayerButton.addTarget(self, action: #selector(self.goAliPlayerVideoBtnAction), for: .touchUpInside)
        self.playerButton.addTarget(self, action: #selector(self.goPlayerVideoBtnAction), for: .touchUpInside)
 
        self.view.addSubview(self.aliPlayerButton)
        self.view.addSubview(self.playerButton)
 
    }
}
