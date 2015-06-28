//
//  MakeTestViewController.m
//  TestMaker
//
//  Created by Syotaro Shimizu on 2015/06/03.
//  Copyright (c) 2015年 Syotaro Shimizu. All rights reserved.
//

#import "MakeTestViewController.h"

@interface MakeTestViewController ()

@end

@implementation MakeTestViewController
- (void)loadView
{
    // こうすると落ちなくなる
    [super loadView];
}
- (void)viewDidLoad {
    self.answer.delegate=self;
    self.question.delegate=self;
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
        return YES;
}
-(IBAction)finish{
    //NSArray *quizarray = [NSMutableArray arrayWithObjects:_question.text, _answer.text, nil];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    [userDefaults setObject:_question.text forKey:@"questiontext"];
    NSLog(_question.text);
    [userDefaults setObject:_answer.text forKey:@"answertext"];
    [userDefaults synchronize];//即時保存
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
