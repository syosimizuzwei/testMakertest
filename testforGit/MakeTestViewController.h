//
//  MakeTestViewController.h
//  TestMaker
//
//  Created by Syotaro Shimizu on 2015/06/03.
//  Copyright (c) 2015年 Syotaro Shimizu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MakeTestViewController : UIViewController
<UITextFieldDelegate>
{
  
}
-(IBAction)finish;
@property(weak,nonatomic)IBOutlet UITextField*question;
@property(weak,nonatomic)IBOutlet UITextField*answer;
@end
