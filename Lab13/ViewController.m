//
//  ViewController.m
//  Lab13
//
//  Created by Joao Victor Silva Anastacio on 2022-09-14.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
}

- (IBAction)getTextFieldOnChange:(UITextField *)sender {
	if([sender.text rangeOfString: @"red" options: NSCaseInsensitiveSearch].location == NSNotFound) {
		return;
	} else {
		NSRange textRange = NSMakeRange((unsigned long)[sender.text rangeOfString: @"red" options: NSCaseInsensitiveSearch].location, 3);
		NSMutableAttributedString *personalizedText = [_textField.attributedText mutableCopy];
		[personalizedText addAttributes: @{NSForegroundColorAttributeName : [UIColor redColor]} range: textRange];
		[_textField setAttributedText: personalizedText];
	}
}

@end
