//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Mohamad Mortada on 2/12/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    let array = [ "Afghan Afghani(AFN)",  "Albanian Lek(ALL)",  "Algerian Dinar(DZD)",  "Angolan Kwanza(AOA)",  "Argentine Peso(ARS)",  "Armenian Dram(AMD)",  "Aruban Florin(AWG)",  "Australian Dollar(AUD)",  "Azerbaijani Manat(AZN)",  "Bahamian Dollar(BSD)",  "Bahraini Dinar(BHD)",  "Bangladeshi Taka(BDT)",  "Barbadian Dollar(BBD)",  "Belarusian Ruble(BYR)",  "Belize Dollar(BZD)",  "Bermudan Dollar(BMD)",  "Bhutanese Ngultrum(BTN)",  "Bitcoin(BTC)",  "Bolivian Boliviano(BOB)",  "Bosnia And Herzegovina Konvertibilna Marka(BAM)",  "Botswana Pula(BWP)",  "Brazilian Real(BRL)",  "British Pound(GBP)",  "Brunei Dollar(BND)",  "Bulgarian Lev(BGN)",  "Burundi Franc(BIF)",  "CFP Franc(XPF)",  "Cambodian Riel(KHR)",  "Canadian Dollar(CAD)",  "Cape Verdean Escudo(CVE)",  "Cayman Islands Dollar(KYD)",  "Central African CFA) Franc(XAF)",  "Chilean Peso(CLP)",  "Chilean Unit Of Account(CLF)",  "Chinese Yuan(CNY)",  "Colombian Peso(COP)",  "Comorian Franc(KMF)",  "Congolese Franc(CDF)",  "Costa Rican Colon(CRC)",  "Croatian Kuna(HRK)",  "Cuban Convertible Peso(CUC)",  "Cuban Peso(CUP)",  "Czech Koruna(CZK)",  "Danish Krone(DKK)",  "Djiboutian Franc(DJF)",  "Dominican Peso(DOP)",  "East Caribbean Dollar(XCD)",  "Egyptian Pound(EGP)",  "Eritrean Nakfa(ERN)",  "Ethiopian Birr(ETB)",  "Euro(EUR)",  "Falkland Islands Pound(FKP)",  "Fijian Dfollar(FJD)",  "Gambian Dalasi(GMD)",  "Georgian Lari(GEL)",  "Ghanaian Cedi(GHS)",  "Gibraltar Pound(GIP)",  "Guatemalan Quetzal(GTQ)",  "Guernsey Pound(GGP)",  "Guinean Franc(GNF)",  "Guyanese Dollar(GYD)",  "Haitian Gourde(HTG)",  "Honduran Lempira(HNL)",  "Hong Kong Dollar(HKD)",  "Hungarian Forint(HUF)",  "Icelandic Króna(ISK)",  "Indian Rupee(INR)",  "Indonesian Rupiah(R)",  "Iranian Rial(IRR)",  "Iraqi Dinar(IQD)",  "Israeli New Sheqel(ILS)",  "Jamaican Dollar(JMD)",  "Japanese Yen(JPY)",  "Jersey Pound(JEP)",  "Jordanian Dinar(JOD)",  "Kazakhstani Tenge(KZT)",  "Kenyan Shilling(KES)",  "Kuwaiti Dinar(KWD)",  "Kyrgyzstani Som(KGS)",  "Lao Kip(LAK)",  "Latvian Lats(LVL)",  "Lebanese Lira(LBP)",  "Lesotho Loti(LSL)",  "Liberian Dollar(LRD)",  "Libyan Dinar(LYD)",  "Macanese Pataca(MOP)",  "Macedonian Denar(MKD)",  "Malagasy Ariary(MGA)",  "Malawian Kwacha(MWK)",  "Malaysian Ringgit(MYR)",  "Maldivian Rufiyaa(MVR)",  "Manx pound(IMP)",  "Mauritanian Ouguiya(MRO)",  "Mauritian Rupee(MUR)",  "Mexican Peso(MXN)",  "Moldovan Leu(MDL)",  "Mongolian Tugrik(MNT)",  "Moroccan Dirham(MAD)",  "Mozambican Metical(MZN)",  "Myanma Kyat(MMK)",  "Namibian Dollar(NAD)",  "Nepalese Rupee(NPR)",  "Netherlands Antillean Gulden(ANG)",  "New Belarusian Ruble(BYN)",  "New Taiwan Dollar(TWD)",  "New Zealand Dollar(NZD)",  "Nicaraguan Cordoba(NIO)",  "Nigerian Naira(NGN)",  "North Korean Won(KPW)",  "Norwegian Krone(NOK)",  "Old Zambian Kwacha(ZMK)",  "Omani Rial(OMR)",  "Paanga(TOP)",  "Pakistani Rupee(PKR)",  "Panamanian Balboa(PAB)",  "Papua New Guinean Kina(PGK)",  "Paraguayan Guarani(PYG)",  "Peruvian Nuevo Sol(PEN)",  "Philippine Peso(PHP)",  "Polish Zloty(PLN)",  "Qatari Riyal(QAR)",  "Romanian Leu(RON)",  "Russian Ruble(RUB)",  "Rwandan Franc(RWF)",  "Saint Helena Pound(SHP)",  "Salvadoran Colón(SVC)",  "Samoan Tala(WST)",  "Sao Tome And Principe Dobra(STD)",  "Saudi Riyal(SAR)",  "Serbian Dinar(RSD)",  "Seychellois Rupee(SCR)",  "Sierra Leonean Leone(SLL)",  "Silver (troy ounce) (XAG)",  "Singapore Dollar(SGD)",  "Solomon Islands Dollar(SBD)",  "Somali Shilling(SOS)",  "South African Rand(ZAR)",  "South Korean Won(KRW)",  "Special Drawing Rights(XDR)",  "Sri Lankan Rupee(LKR)",  "Sudanese Pound(SDG)",  "Surinamese Dollar(SRD)",  "Swazi Lilangeni(SZL)",  "Swedish Krona(SEK)",  "Swiss Franc(CHF)",  "Syrian Pound(SYP)",  "Tajikistani Somoni(TJS)",  "Tanzanian Shilling(TZS)",  "Thai Baht(THB)",  "Trinad and Tobago Dollar(TTD)",  "Tunisian Dinar(TND)",  "Turkish New Lira(TRY)",  "Turkmenistan Manat(TMT)",  "UAE Dirham(AED)",  "Ugandan Shilling(UGX)",  "Ukrainian Hryvnia(UAH)",  "United States Dollar(USD)",  "Uruguayan Peso(UYU)",  "Uzbekistani Som(UZS)",  "Vanuatu Vatu(VUV)",  "Venezuelan Bolivar(VEF)",  "Vietnamese Dong(VND)",  "West African CFA Franc(XOF)",  "Yemeni Rial(YER)",  "Zambian Kwacha(ZMW)",  "Zimbabwean Dollar(ZWL)"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        array.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1 {
            From.setTitle("\(array[row].byWords.last ?? "")", for: .normal)
        }
        else {
            To.setTitle("\(array[row].byWords.last ?? "")", for: .normal)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currency.frame = CGRect(x: view.frame.size.width - 380, y: 80, width: 400, height: 60)
        amount.frame = CGRect(x: view.frame.size.width - 420, y: 220, width: 400, height: 60)
        From.frame = CGRect(x: 0 , y: 360, width: 185, height: 80)
        To.frame = CGRect(x: From.frame.midX + 150 , y: 360, width: 185, height: 80)
        FromLabel.frame = CGRect(x: 20, y: To.frame.minY - 50, width: 250, height: 60)
        ToLabel.frame = CGRect(x: FromLabel.frame.midX + 120, y: From.frame.minY - 50, width: 250, height: 60)
        amountLabel.frame = CGRect(x: 20, y: amount.frame.minY - 50, width: 250, height: 60)
        reverse.frame = CGRect(x: From.frame.midX + 65, y: 340, width: 100, height: 100)
        resultLabel.frame = CGRect(x: 50, y: 570, width: 250, height: 60)

        amount.delegate = self

        picker.dataSource = self
        picker.delegate = self
        picker.tag = 1
        picker.isHidden = true
        picker.backgroundColor = .secondarySystemBackground
        picker.frame = CGRect(x: 0, y: view.frame.maxY - 250, width: view.frame.size.width, height: 250)
        picker.layer.cornerRadius = 30
        view.addSubview(picker)
        
        pickerTo.dataSource = self
        pickerTo.delegate = self
        pickerTo.tag = 2
        pickerTo.isHidden = true
        pickerTo.backgroundColor = .secondarySystemBackground
        pickerTo.frame = CGRect(x: 0, y: view.frame.maxY - 250, width: view.frame.size.width, height: 250)
        pickerTo.layer.cornerRadius = 30
        view.addSubview(pickerTo)
        view.addSubview(To)
        view.addSubview(From)
        view.addSubview(amount)
        view.addSubview(FromLabel)
        view.addSubview(ToLabel)
        view.addSubview(enter)
        view.addSubview(reverse)
        view.addSubview(amountLabel)
        view.addSubview(currency)
        view.addSubview(resultLabel)
    }

    private var picker: UIPickerView = {
        var picker = UIPickerView()
        return picker
    }()
    
    private var pickerTo: UIPickerView = {
        var picker = UIPickerView()
        return picker
    }()
    
    private var amount: UITextField = {
        var field = UITextField()
        field.layer.cornerRadius = 12
        field.backgroundColor = .secondarySystemBackground
        field.returnKeyType = .continue
        field.placeholder = "Your Amount Here"
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.borderWidth = 2
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.leftViewMode = .always
        field.setLeftPaddingPoints(10)
        field.setRightPaddingPoints(10)
        field.keyboardType = UIKeyboardType.decimalPad
        return field
    }()
    
    private var From: UIButton = {
        let button = UIButton()
        button.setTitleColor(.black, for: .normal)
        button.adjustsImageWhenHighlighted = false
        button.setBackgroundImage(UIImage(named: "ButtonBack2"), for: .normal)
        button.addTarget(self, action: #selector(FROM), for: .touchUpInside)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = UIFont(name: "ArialMT", size: 30)
        return button
    }()
    
    private var To: UIButton = {
        let button = UIButton()
        button.setTitleColor(.black, for: .normal)
        button.adjustsImageWhenHighlighted = false
        button.setBackgroundImage(UIImage(named: "ButtonBack2"), for: .normal)
        button.addTarget(self, action: #selector(TO), for: .touchUpInside)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = UIFont(name: "ArialMT", size: 30)
        return button
    }()
    
    private var FromLabel: UILabel = {
        let label = UILabel()
        label.text = "From"
        label.font = UIFont(name: "ArialMT", size: 20)
        return label
    }()
    
    private var ToLabel: UILabel = {
        let label = UILabel()
        label.text = "To"
        label.font = UIFont(name: "ArialMT", size: 20)
        return label
    }()
    
    private var enter: UIButton = {
        let button = UIButton()
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = .init(red: 44/255, green: 114/255, blue: 227/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 5, y: 450, width: 420, height: 60)
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(Submit), for: .touchUpInside)
        return button
    }()
    
    private var reverse: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "reverse"), for: .normal)
        button.adjustsImageWhenHighlighted = false
        button.addTarget(self, action: #selector(SwitchARoo), for: .touchUpInside)
        return button
    }()
    
    private var amountLabel: UILabel = {
        let label = UILabel()
        label.text = "Amount"
        label.font = UIFont(name: "ArialMT", size: 20)
        return label
    }()
    
    private var currency: UILabel = {
        let label = UILabel()
        label.text = "Currency Converter"
        label.font = UIFont(name: "ArialMT", size: 40)
        return label
    }()
    
    private var resultLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "ArialMT", size: 40)
        label.numberOfLines = 0
        label.lineBreakMode = .byCharWrapping
        return label
    }()
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        picker.isHidden = true
        pickerTo.isHidden = true
    }
    
    @objc func SwitchARoo() {
        
            if From.titleLabel?.text != "" && To.titleLabel?.text != "" {
                DispatchQueue.main.async {
                    let fromTitle = self.From.titleLabel?.text
                    self.From.setTitle("\(self.To.titleLabel?.text ?? "")", for: .normal)
                    self.To.setTitle("\(fromTitle ?? "")", for: .normal)
            }
        }
    }
    
    @objc func Submit() {
        if To.titleLabel?.text == nil || From.titleLabel?.text == nil || amount.text == nil {
            let alert = UIAlertController(title: "Oops!", message: "You forgot to fill in a field! Please try again", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
            alert.addAction(alertAction)
            present(alert, animated: true)
        }
        else {
            amount.resignFirstResponder()
            picker.isHidden = true
            pickerTo.isHidden = true
            let Froms = From.titleLabel?.text?.byWords
            let Froms2 = Froms?.last
            let Tos = To.titleLabel?.text?.byWords
            let Tos2 = Tos?.last
            API(amount: "\(amount.text!)", from: "\(Froms2!)", to: "\(Tos2!)")
        }
    }
    
    @objc func TO() {
        picker.isHidden = true
        pickerTo.isHidden = false
        amount.resignFirstResponder()
        if To.titleLabel?.text == nil ||  To.titleLabel?.text == ""{
            if To.backgroundImage(for: .normal) == UIImage(named: "ButtonBack2") {
                To.setBackgroundImage(UIImage(named:"ButtonBack"), for: .normal)
            }
            else if To.backgroundImage(for: .normal) == UIImage(named: "ButtonBack") {
                To.setBackgroundImage(UIImage(named:"ButtonBack2"), for: .normal)
            }
        }
    }
    
    @objc func FROM() {
        picker.isHidden = false
        pickerTo.isHidden = true
        amount.resignFirstResponder()
        if From.titleLabel?.text == nil ||  From.titleLabel?.text == ""{
            if From.backgroundImage(for: .normal) == UIImage(named: "ButtonBack2") {
                From.setBackgroundImage(UIImage(named:"ButtonBack"), for: .normal)
            }
            else if From.backgroundImage(for: .normal) == UIImage(named: "ButtonBack") {
                From.setBackgroundImage(UIImage(named:"ButtonBack2"), for: .normal)
            }
        }
    }
    
    func API(amount: String, from: String, to: String) {
        let url = URL(string: "https://free.currconv.com/api/v7/convert?q=\(from)_\(to)&compact=ultra&apiKey=7f5a14d64a54862e52bd")
        let task = URLSession.shared.dataTask(with: ((url ?? URL(string: "https://api.frankfurter.app/latest?amount=10&from=GBP&to=USD"))!)) { [self] (data, response, error) in
            
            do {
                let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: [])
                print(jsonResponse)
                guard let newValue = jsonResponse as? [String:Any] else {
                    print("invalid format")
                    return
                }
                
                let result = newValue["\(from)_\(to)"]
               
                    if amount.isInt == true {
                        let BigResult = "\((result as? Double)! * Double(amount)!)"
                        DispatchQueue.main.async {
                            resultLabel.text = "= \(BigResult)"
                        }
                       
                    }
                    else {
                        let elseResult = (result as? Double)! * 1
                        DispatchQueue.main.async {
                            resultLabel.text = "= \(elseResult)"
                        }
                        
                    }
                
                }
    
            
            catch let error {
                print("Error: \(error)")
            }
            
        }
        task.resume()
    }
    
   
}

extension UITextField {
    
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}

extension StringProtocol {
    var byWords: [SubSequence] {
        var byWords: [SubSequence] = []
        enumerateSubstrings(in: startIndex..., options: .byWords) { _, range, _, _ in
            byWords.append(self[range])
        }
        return byWords
    }
}

extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}
