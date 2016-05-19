//
//  ViewController.swift
//  计算器
//
//  Created by admin on 16/5/9.
//  Copyright (c) 2016年 admin. All rights reserved.
//

import UIKit
var a:Double=0;
var b:Double=0;
var c:Int=0;
var d:Double=0;
var e:Bool = false;
var f:Bool=false;
var g:Bool=false;
var D:Double=0;

class ViewController: UIViewController {

    @IBAction func button1(sender: AnyObject) {
        if(TextView.text=="0"||(TextView.text=="\(d)")||(TextView.text=="错误！")){
            TextView.text="";
            TextView.text=TextView.text+"1";
        }else {
            TextView.text=TextView.text+"1";
        }
    }
    @IBAction func button2(sender: AnyObject) {
        if(TextView.text=="0"||(TextView.text=="\(d)")||(TextView.text=="错误！")){
            TextView.text="";
            TextView.text=TextView.text+"2";
        }else{
            TextView.text=TextView.text+"2";
        }
    }
    @IBAction func button3(sender: AnyObject) {
        if(TextView.text=="0"||(TextView.text=="\(d)")||(TextView.text=="错误！")){
            TextView.text="";
            TextView.text=TextView.text+"3";
        }else{
            TextView.text=TextView.text+"3";
        }
    }
    @IBAction func button0(sender: AnyObject) {
        if(TextView.text=="0"){
            TextView.text=TextView.text+"";
        }else if(TextView.text=="\(d)"||(TextView.text=="错误！")){
            TextView.text="";
            TextView.text=TextView.text+"0";
        }else{
            TextView.text=TextView.text+"0";
        }
    }

    @IBAction func buttonPoint(sender: AnyObject) {
        if(e==false){
            if(TextView.text==""){
                TextView.text=TextView.text+"0.";
            }else{
                TextView.text=TextView.text+".";
                }
            e=true;
        }else if(e==true){
            TextView.text=TextView.text+"";
        }
    }
    @IBAction func buttonDivide(sender: AnyObject) {
        a=(TextView.text as NSString).doubleValue;
        if(TextView.text=="错误！"){
            TextView.text="错误！";
        }else{
            TextView.text="";
        }
        c=4;
        e=false;
    }
    @IBAction func buttonTest(sender: AnyObject) {
        a=(TextView.text as NSString).doubleValue;
        if(TextView.text=="错误！"){
            TextView.text="错误！";
        }else{
            TextView.text="";
        }
        c=3;
        e=false;
    }
    @IBAction func buttonSub(sender: AnyObject) {
        a=(TextView.text as NSString).doubleValue;
        if(TextView.text=="错误！"){
            TextView.text="错误！";
        }else{
            TextView.text="";
        }
        c=2;
        e=false;
    }
    @IBAction func buttonAdd(sender: AnyObject) {
        a=(TextView.text as NSString).doubleValue;
        if(TextView.text=="错误！"){
            TextView.text="错误！";
        }else{
            TextView.text="";
        }
        c=1;
        e=false;
    }
    @IBAction func qingchu(sender: AnyObject) {
        TextView.text="0";
        e=false;
    }
    @IBAction func buttonCheXiao(sender: AnyObject) {
        var x=TextView.text;
        var index=advance(x.endIndex,-1);
        var s:String=x.substringToIndex(index);
        if(s.isEmpty){
            TextView.text="0";
        }else{
        TextView.text="\(s)";
    }
    }
    @IBAction func buttonEquals(sender: AnyObject) {
        b=(TextView.text as NSString).doubleValue;
        switch(c){
        case 1:
            d=a+b;
            TextView.text="\(d)";
            e=true;
            break;
        case 2:
            d=a-b;
            TextView.text="\(d)";
            e=true;
            break;
        case 3:
            d=a*b;
            TextView.text="\(d)";
            e=true;
            break;
        case 4:
            d=a/b;
            if(b>0||b<0){
                TextView.text="\(d)";
                e=true;
            }else{
                TextView.text="错误！";
                e=true;
            }
            break;
        default :
            break;
        }
    }
    @IBAction func button4(sender: AnyObject) {
        if(TextView.text=="0"||(TextView.text=="\(d)")||(TextView.text=="错误！")){
            TextView.text="";
            TextView.text=TextView.text+"4";
        }else{
            TextView.text=TextView.text+"4";
        }
    }
    @IBAction func button5(sender: AnyObject) {
        if(TextView.text=="0"||(TextView.text=="\(d)")||(TextView.text=="错误！")){
            TextView.text="";
            TextView.text=TextView.text+"5";
        }else{
            TextView.text=TextView.text+"5";
        }
    }
    @IBAction func button6(sender: AnyObject) {
        if(TextView.text=="0"||(TextView.text=="\(d)")||(TextView.text=="错误！")){
            TextView.text="";
            TextView.text=TextView.text+"6";
        }else{
            TextView.text=TextView.text+"6";
        }
    }
    @IBAction func button7(sender: AnyObject) {
        if(TextView.text=="0"||(TextView.text=="\(d)")||(TextView.text=="错误！")){
            TextView.text="";
            TextView.text=TextView.text+"7";
        }else{
            TextView.text=TextView.text+"7";
        }
    }
    @IBAction func button8(sender: AnyObject) {
        if(TextView.text=="0"||(TextView.text=="\(d)")||(TextView.text=="错误！")){
            TextView.text="";
            TextView.text=TextView.text+"8";
        }else{
            TextView.text=TextView.text+"8";
        }
    }
    @IBAction func button9(sender: AnyObject) {
        if(TextView.text=="0"||(TextView.text=="\(d)")||(TextView.text=="错误！")){
            TextView.text="";
            TextView.text=TextView.text+"9";
        }else{
            TextView.text=TextView.text+"9";
        }
    }
    
    @IBOutlet weak var TextView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if(TextView.text==""){
            TextView.text="0";
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}   

