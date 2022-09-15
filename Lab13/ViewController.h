//
//  ViewController.h
//  Lab13
//
//  Created by Joao Victor Silva Anastacio on 2022-09-14.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)getTextFieldOnChange:(UITextField *)sender;

@end

