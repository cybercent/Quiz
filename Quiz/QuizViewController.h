//
//  QuizViewController.h
//  Quiz
//
//  Created by Daniel Podaru on 22/08/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    
    //Model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //View objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}
- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;
@end
