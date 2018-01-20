//
//  GameLogic.m
//  Quiz App
//
//  Created by Eric Groseclos on 2018-01-20.
//  Copyright © 2018 Eric Groseclos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameLogic.h"

@implementation GameLogic

// Fetches a random question among the ten questions.
-(NSDictionary*)fetchQuestion {
    int number = 1 + arc4random_uniform(10);
    
    if (number == 1) {
        return _question1;
    } else if (number == 2) {
        return _question2;
    } else if (number == 3) {
        return _question3;
    } else if (number == 4) {
        return _question4;
    } else if (number == 5) {
        return _question5;
    } else if (number == 6) {
        return _question6;
    } else if (number == 7) {
        return _question7;
    } else if (number == 8) {
        return _question8;
    } else if (number == 9) {
        return _question9;
    } else if (number == 10) {
        return _question10;
    }
    return nil;
}

// Creates ten questions.
// Each question has one correct answer.
-(void)createQuestions {
    _question1 = @{@"id":@"1",@"question":@"What is the value of pi?",@"answer1":@"3.1415",@"answer2":@"10.1765",@"answer3":@"1.9054",@"answer4":@"100.4537",@"correctAnswer":@"1"};
    
    _question2 = @{@"id":@"2",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"Rhinoceros",@"correctAnswer":@"3"};
    
    _question3 = @{@"id":@"3",@"question":@"How high is Mount Everest?",@"answer1":@"3 267 m",@"answer2":@"10 023 m",@"answer3":@"9 496 m",@"answer4":@" 8 848 m", @"correctAnswer":@"4"};
    
    _question4 = @{@"id":@"4",@"question":@"Who is the president of the United States?",@"answer1":@"Hillary Clinton",@"answer2":@"Barack Obama",@"answer3":@"Donald Trump",@"answer4":@"George Bush",@"correctAnswer":@"3"};
    
    _question5 = @{@"id":@"5",@"question":@"What is the square root of 81?",@"answer1":@"8",@"answer2":@"9",@"answer3":@"7",@"answer4":@"10",@"correctAnswer":@"2"};
    
    _question6 = @{@"id":@"6",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros", @"correctAnswer":@"1"};
    
    _question7 = @{@"id":@"7",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros",@"correctAnswer":@"1"};
    
    _question8 = @{@"id":@"8",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros",@"correctAnswer":@"1"};
    
    _question9 = @{@"id":@"9",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros",@"correctAnswer":@"1"};
    
    _question10 = @{@"id":@"10",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros",@"correctAnswer":@"1"};
}

@end
