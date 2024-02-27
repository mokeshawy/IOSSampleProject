import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextFiledInputDelegate()
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }

    private func setTextFiledInputDelegate(){
        txtUsername.delegate = self
        txtPassword.delegate = self
    }
    
    
    @IBAction func setOnLoginBtnClicked(_ sender: Any) {
        print("\(txtUsername.text ?? "")")
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtUsername{
            txtPassword.becomeFirstResponder()
        }else{
            handleCloseKeyboard(isClose: true)
            // Implement login logic here
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        handleCloseKeyboard(isClose: true)
    }
    
    
    private func handleCloseKeyboard(isClose : Bool){
        view.endEditing(isClose)
    }
    
}

