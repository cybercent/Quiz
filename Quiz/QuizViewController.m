//
//  QuizViewController.m
//  Quiz
//
//  Created by Daniel Podaru on 22/08/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        [questions addObject:@"Happy"];
        [answers addObject:@"快 乐 / kuài lè"];
        
        [questions addObject:@"OK"];
        [answers addObject:@"好 的 / hǎo de"];
        
        [questions addObject:@"No"];
        [answers addObject:@"不 / bù"];
    }
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    currentQuestionIndex++;
    
    if (currentQuestionIndex == [questions count]) {
        currentQuestionIndex = 0;
    }
    
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    [questionField setText:question];
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    [answerField setText:answer];
}

@end
