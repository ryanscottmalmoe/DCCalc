//
//  ViewController.m
//  DCCalc
//
//  Created by Ryan Malmoe on 2/27/14.
//  Copyright (c) 2014 Ryan Malmoe. All rights reserved.
//

#import "ViewController.h"



//Last thing needed is to deal with negative numbers! and add a 0 button to the display!


@interface ViewController ()
{
    BOOL segmentOneFilled;
    BOOL segmentTwoFilled;
    BOOL segmentThreeFilled;
    BOOL segmentFourFilled;
    NSString * numOne;
    NSString * numTwo;
    NSString * result;
    int numOneInteger;
    int numTwoInteger;
    int resultInteger;
    BOOL stillOnNumOne;
    NSString * operator;
    BOOL afterEquals;
    BOOL isNegative;
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupViews];
    segmentOneFilled = NO;
    segmentTwoFilled = NO;
    segmentThreeFilled = NO;
    segmentFourFilled = NO;
    stillOnNumOne = YES;
    numOneInteger = 0;
    numTwoInteger = 0;
    numOne = @"";
    numTwo = @"";
    afterEquals = NO;
}

-(void)setupViews
{
    self.viewOne.layer.borderColor = [UIColor grayColor].CGColor;
    self.viewOne.layer.borderWidth = 1.0f;
    self.viewTwo.layer.borderColor = [UIColor grayColor].CGColor;
    self.viewTwo.layer.borderWidth = 1.0f;
    self.viewThree.layer.borderColor = [UIColor grayColor].CGColor;
    self.viewThree.layer.borderWidth = 1.0f;
    self.viewFive.layer.borderColor = [UIColor grayColor].CGColor;
    self.viewFive.layer.borderWidth = 1.0f;
    [self.viewNumbers bringSubviewToFront:self.viewFive];
    self.viewSix.layer.borderColor = [UIColor grayColor].CGColor;
    self.viewSeven.layer.borderColor = [UIColor grayColor].CGColor;
    self.viewSeven.layer.borderWidth = 1.0f;
    self.viewEight.layer.borderColor = [UIColor grayColor].CGColor;
    self.viewEight.layer.borderWidth = 1.0f;
    self.viewNine.layer.borderColor = [UIColor grayColor].CGColor;
    self.viewNine.layer.borderWidth = 1.0f;
    self.viewZero.layer.borderColor = [UIColor grayColor].CGColor;
    self.viewZero.layer.borderWidth = 1.0f;
    
    
    self.viewOneOne.alpha = .5;
    self.viewOneTwo.alpha = .5;
    self.viewOneThree.alpha = .5;
    self.viewOneFour.alpha = .5;
    self.viewOneFive.alpha = .5;
    self.viewOneSix.alpha = .5;
    self.viewOneSeven.alpha = .5;
    
    self.viewTwoOne.alpha = .5;
    self.viewTwoTwo.alpha = .5;
    self.viewTwoThree.alpha = .5;
    self.viewTwoFour.alpha = .5;
    self.viewTwoFive.alpha = .5;
    self.viewTwoSix.alpha = .5;
    self.viewTwoSeven.alpha = .5;
    
    self.viewThreeOne.alpha = .5;
    self.viewThreeTwo.alpha = .5;
    self.viewThreeThree.alpha = .5;
    self.viewThreeFour.alpha = .5;
    self.viewThreeFive.alpha = .5;
    self.viewThreeSix.alpha = .5;
    self.viewThreeSeven.alpha = .5;
    
    self.viewFourOne.alpha = .5;
    self.viewFourTwo.alpha = .5;
    self.viewFourThree.alpha = .5;
    self.viewFourFour.alpha = .5;
    self.viewFourFive.alpha = .5;
    self.viewFourSix.alpha = .5;
    self.viewFourSeven.alpha = .5;
    

    
    
    self.viewOneOne.backgroundColor = [UIColor grayColor];
    self.viewOneTwo.backgroundColor = [UIColor grayColor];
    self.viewOneThree.backgroundColor = [UIColor grayColor];
    self.viewOneFour.backgroundColor = [UIColor grayColor];
    self.viewOneFive.backgroundColor = [UIColor grayColor];
    self.viewOneSix.backgroundColor = [UIColor grayColor];
    self.viewOneSeven.backgroundColor = [UIColor grayColor];
    
    self.viewTwoOne.backgroundColor = [UIColor grayColor];
    self.viewTwoTwo.backgroundColor = [UIColor grayColor];
    self.viewTwoThree.backgroundColor = [UIColor grayColor];
    self.viewTwoFour.backgroundColor = [UIColor grayColor];
    self.viewTwoFive.backgroundColor = [UIColor grayColor];
    self.viewTwoSix.backgroundColor = [UIColor grayColor];
    self.viewTwoSeven.backgroundColor = [UIColor grayColor];
    
    self.viewThreeOne.backgroundColor = [UIColor grayColor];
    self.viewThreeTwo.backgroundColor = [UIColor grayColor];
    self.viewThreeThree.backgroundColor = [UIColor grayColor];
    self.viewThreeFour.backgroundColor = [UIColor grayColor];
    self.viewThreeFive.backgroundColor = [UIColor grayColor];
    self.viewThreeSix.backgroundColor = [UIColor grayColor];
    self.viewThreeSeven.backgroundColor = [UIColor grayColor];
    
    self.viewFourOne.backgroundColor = [UIColor grayColor];
    self.viewFourTwo.backgroundColor = [UIColor grayColor];
    self.viewFourThree.backgroundColor = [UIColor grayColor];
    self.viewFourFour.backgroundColor = [UIColor grayColor];
    self.viewFourFive.backgroundColor = [UIColor grayColor];
    self.viewFourSix.backgroundColor = [UIColor grayColor];
    self.viewFourSeven.backgroundColor = [UIColor grayColor];
    
    //setting negative view back to gray
    self.viewFiveSeven.backgroundColor = [UIColor grayColor];
    self.viewFiveSeven.alpha = .5;
    
    segmentOneFilled = NO;
    segmentTwoFilled = NO;
    segmentThreeFilled = NO;
    segmentFourFilled = NO;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)oneButton:(id)sender
{
    if(afterEquals)
    {
        [self setupViews];
        afterEquals = NO;
    }
    if(stillOnNumOne)
    {
        numOne = [numOne stringByAppendingString:@"1"];
    }
    else
    {
        numTwo = [numTwo stringByAppendingString:@"1"];
    }
    if(isNegative)
    {
        [self.viewFiveSeven setBackgroundColor:[UIColor redColor]];
        self.viewFiveSeven.alpha = 1;
    }
    
    if(!segmentFourFilled)
    {
        [self.viewFourTwo setBackgroundColor:[UIColor redColor]];
        [self.viewFourThree setBackgroundColor:[UIColor redColor]];
        self.viewFourTwo.alpha = 1;
        self.viewFourThree.alpha = 1;
        segmentFourFilled = YES;
        
    }
    else if(!segmentThreeFilled)
    {
        [self.viewThreeTwo setBackgroundColor:[UIColor redColor]];
        [self.viewThreeThree setBackgroundColor:[UIColor redColor]];
        self.viewThreeTwo.alpha = 1;
        self.viewThreeThree.alpha = 1;
        segmentThreeFilled = YES;
    }
    else if(!segmentTwoFilled)
    {
        [self.viewTwoTwo setBackgroundColor:[UIColor redColor]];
        [self.viewTwoThree setBackgroundColor:[UIColor redColor]];
        self.viewTwoTwo.alpha = 1;
        self.viewTwoThree.alpha = 1;
        segmentTwoFilled = YES;
    }
    else if(!segmentOneFilled)
    {
        [self.viewOneTwo setBackgroundColor:[UIColor redColor]];
        [self.viewOneThree setBackgroundColor:[UIColor redColor]];
        self.viewOneTwo.alpha = 1;
        self.viewOneThree.alpha = 1;
        segmentOneFilled = YES;
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"This calculator only deals with numbers up to four digits" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
}

- (IBAction)twoButton:(id)sender
{
    if(afterEquals)
    {
        [self setupViews];
        afterEquals = NO;
    }
    if(stillOnNumOne)
    {
        numOne = [numOne stringByAppendingString:@"2"];
    }
    else
    {
        numTwo = [numTwo stringByAppendingString:@"2"];
    }
    
    if(isNegative)
    {
        [self.viewFiveSeven setBackgroundColor:[UIColor redColor]];
        self.viewFiveSeven.alpha = 1;
    }
    
    if(!segmentFourFilled)
    {
        [self.viewFourOne setBackgroundColor:[UIColor redColor]];
        [self.viewFourTwo setBackgroundColor:[UIColor redColor]];
        [self.viewFourSeven setBackgroundColor:[UIColor redColor]];
        [self.viewFourFive setBackgroundColor:[UIColor redColor]];
        [self.viewFourFour setBackgroundColor:[UIColor redColor]];
        self.viewFourOne.alpha = 1;
        self.viewFourTwo.alpha = 1;
        self.viewFourSeven.alpha = 1;
        self.viewFourFive.alpha = 1;
        self.viewFourFour.alpha = 1;
        segmentFourFilled = YES;
    }
    else if(!segmentThreeFilled)
    {
        [self.viewThreeOne setBackgroundColor:[UIColor redColor]];
        [self.viewThreeTwo setBackgroundColor:[UIColor redColor]];
        [self.viewThreeSeven setBackgroundColor:[UIColor redColor]];
        [self.viewThreeFive setBackgroundColor:[UIColor redColor]];
        [self.viewThreeFour setBackgroundColor:[UIColor redColor]];
        
        self.viewThreeOne.alpha = 1;
        self.viewThreeTwo.alpha = 1;
        self.viewThreeSeven.alpha = 1;
        self.viewThreeFive.alpha = 1;
        self.viewThreeFour.alpha = 1;
        segmentThreeFilled = YES;
    }
    else if(!segmentTwoFilled)
    {
        [self.viewTwoOne setBackgroundColor:[UIColor redColor]];
        [self.viewTwoTwo setBackgroundColor:[UIColor redColor]];
        [self.viewTwoSeven setBackgroundColor:[UIColor redColor]];
        [self.viewTwoFive setBackgroundColor:[UIColor redColor]];
        [self.viewTwoFour setBackgroundColor:[UIColor redColor]];
        
        self.viewTwoOne.alpha = 1;
        self.viewTwoTwo.alpha = 1;
        self.viewTwoSeven.alpha = 1;
        self.viewTwoFive.alpha = 1;
        self.viewTwoFour.alpha = 1;
        segmentTwoFilled = YES;
    }
    else if(!segmentOneFilled)
    {
        [self.viewOneOne setBackgroundColor:[UIColor redColor]];
        [self.viewOneTwo setBackgroundColor:[UIColor redColor]];
        [self.viewOneSeven setBackgroundColor:[UIColor redColor]];
        [self.viewOneFive setBackgroundColor:[UIColor redColor]];
        [self.viewOneFour setBackgroundColor:[UIColor redColor]];
        
        self.viewOneOne.alpha = 1;
        self.viewOneTwo.alpha = 1;
        self.viewOneSeven.alpha = 1;
        self.viewOneFive.alpha = 1;
        self.viewOneFour.alpha = 1;
        segmentOneFilled = YES;
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"This calculator only deals with numbers up to four digits" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
    
}

- (IBAction)threeButton:(id)sender
{
    if(afterEquals)
    {
        [self setupViews];
        afterEquals = NO;
    }
    if(stillOnNumOne)
    {
        numOne = [numOne stringByAppendingString:@"3"];
    }
    else
    {
        numTwo = [numTwo stringByAppendingString:@"3"];
    }
    
    if(isNegative)
    {
        [self.viewFiveSeven setBackgroundColor:[UIColor redColor]];
        self.viewFiveSeven.alpha = 1;
    }
    
    if(!segmentFourFilled)
    {
        [self.viewFourOne setBackgroundColor:[UIColor redColor]];
        [self.viewFourTwo setBackgroundColor:[UIColor redColor]];
        [self.viewFourThree setBackgroundColor:[UIColor redColor]];
        [self.viewFourFour setBackgroundColor:[UIColor redColor]];
        [self.viewFourSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewFourOne.alpha = 1;
        self.viewFourTwo.alpha = 1;
        self.viewFourThree.alpha = 1;
        self.viewFourFour.alpha = 1;
        self.viewFourSeven.alpha = 1;
        segmentFourFilled = YES;

    }
    else if(!segmentThreeFilled)
    {
        [self.viewThreeOne setBackgroundColor:[UIColor redColor]];
        [self.viewThreeTwo setBackgroundColor:[UIColor redColor]];
        [self.viewThreeThree setBackgroundColor:[UIColor redColor]];
        [self.viewThreeFour setBackgroundColor:[UIColor redColor]];
        [self.viewThreeSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewThreeOne.alpha = 1;
        self.viewThreeTwo.alpha = 1;
        self.viewThreeThree.alpha = 1;
        self.viewThreeFour.alpha = 1;
        self.viewThreeSeven.alpha = 1;
        segmentThreeFilled = YES;
    }
    else if(!segmentTwoFilled)
    {
        [self.viewTwoOne setBackgroundColor:[UIColor redColor]];
        [self.viewTwoTwo setBackgroundColor:[UIColor redColor]];
        [self.viewTwoThree setBackgroundColor:[UIColor redColor]];
        [self.viewTwoFour setBackgroundColor:[UIColor redColor]];
        [self.viewTwoSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewTwoOne.alpha = 1;
        self.viewTwoTwo.alpha = 1;
        self.viewTwoThree.alpha = 1;
        self.viewTwoFour.alpha = 1;
        self.viewTwoSeven.alpha = 1;
        segmentTwoFilled = YES;
    }
    else if(!segmentOneFilled)
    {
        [self.viewOneOne setBackgroundColor:[UIColor redColor]];
        [self.viewOneTwo setBackgroundColor:[UIColor redColor]];
        [self.viewOneThree setBackgroundColor:[UIColor redColor]];
        [self.viewOneFour setBackgroundColor:[UIColor redColor]];
        [self.viewOneSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewOneOne.alpha = 1;
        self.viewOneTwo.alpha = 1;
        self.viewOneThree.alpha = 1;
        self.viewOneFour.alpha = 1;
        self.viewOneSeven.alpha = 1;
        segmentOneFilled = YES;
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"This calculator only deals with numbers up to four digits" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
}

- (IBAction)fourButton:(id)sender
{
    if(afterEquals)
    {
        [self setupViews];
        afterEquals = NO;
    }
    if(stillOnNumOne)
    {
        numOne = [numOne stringByAppendingString:@"4"];
    }
    else
    {
        numTwo = [numTwo stringByAppendingString:@"4"];
    }
    
    if(isNegative)
    {
        [self.viewFiveSeven setBackgroundColor:[UIColor redColor]];
        self.viewFiveSeven.alpha = 1;
    }
    
    if(!segmentFourFilled)
    {
        [self.viewFourSix setBackgroundColor:[UIColor redColor]];
        [self.viewFourTwo setBackgroundColor:[UIColor redColor]];
        [self.viewFourThree setBackgroundColor:[UIColor redColor]];
        [self.viewFourSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewFourSix.alpha = 1;
        self.viewFourTwo.alpha = 1;
        self.viewFourThree.alpha = 1;
        self.viewFourSeven.alpha = 1;
        segmentFourFilled = YES;
    }
    else if(!segmentThreeFilled)
    {
        [self.viewThreeSix setBackgroundColor:[UIColor redColor]];
        [self.viewThreeTwo setBackgroundColor:[UIColor redColor]];
        [self.viewThreeThree setBackgroundColor:[UIColor redColor]];
        [self.viewThreeSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewThreeSix.alpha = 1;
        self.viewThreeTwo.alpha = 1;
        self.viewThreeThree.alpha = 1;
        self.viewThreeSeven.alpha = 1;
        segmentThreeFilled = YES;
    }
    else if(!segmentTwoFilled)
    {
        [self.viewTwoSix setBackgroundColor:[UIColor redColor]];
        [self.viewTwoTwo setBackgroundColor:[UIColor redColor]];
        [self.viewTwoThree setBackgroundColor:[UIColor redColor]];
        [self.viewTwoSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewTwoSix.alpha = 1;
        self.viewTwoTwo.alpha = 1;
        self.viewTwoThree.alpha = 1;
        self.viewTwoSeven.alpha = 1;
        segmentTwoFilled = YES;
    }
    else if(!segmentOneFilled)
    {
        [self.viewOneSix setBackgroundColor:[UIColor redColor]];
        [self.viewOneTwo setBackgroundColor:[UIColor redColor]];
        [self.viewOneThree setBackgroundColor:[UIColor redColor]];
        [self.viewOneSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewOneSix.alpha = 1;
        self.viewOneTwo.alpha = 1;
        self.viewOneThree.alpha = 1;
        self.viewOneSeven.alpha = 1;
        segmentOneFilled = YES;
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"This calculator only deals with numbers up to four digits" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
}

- (IBAction)fiveButton:(id)sender
{
    if(afterEquals)
    {
        [self setupViews];
        afterEquals = NO;
    }
    if(stillOnNumOne)
    {
        numOne = [numOne stringByAppendingString:@"5"];
    }
    else
    {
        numTwo = [numTwo stringByAppendingString:@"5"];
    }
    
    if(isNegative)
    {
        [self.viewFiveSeven setBackgroundColor:[UIColor redColor]];
        self.viewFiveSeven.alpha = 1;
    }

    if(!segmentFourFilled)
    {
        [self.viewFourOne setBackgroundColor:[UIColor redColor]];
        [self.viewFourSix setBackgroundColor:[UIColor redColor]];
        [self.viewFourSeven setBackgroundColor:[UIColor redColor]];
        [self.viewFourThree setBackgroundColor:[UIColor redColor]];
        [self.viewFourFour setBackgroundColor:[UIColor redColor]];
        
        self.viewFourOne.alpha = 1;
        self.viewFourSix.alpha = 1;
        self.viewFourSeven.alpha = 1;
        self.viewFourThree.alpha = 1;
        self.viewFourFour.alpha = 1;
        segmentFourFilled = YES;
    }
    else if(!segmentThreeFilled)
    {
        [self.viewThreeOne setBackgroundColor:[UIColor redColor]];
        [self.viewThreeSix setBackgroundColor:[UIColor redColor]];
        [self.viewThreeSeven setBackgroundColor:[UIColor redColor]];
        [self.viewThreeThree setBackgroundColor:[UIColor redColor]];
        [self.viewThreeFour setBackgroundColor:[UIColor redColor]];
        
        self.viewThreeOne.alpha = 1;
        self.viewThreeSix.alpha = 1;
        self.viewThreeSeven.alpha = 1;
        self.viewThreeThree.alpha = 1;
        self.viewThreeFour.alpha = 1;
        segmentThreeFilled = YES;
    }
    else if(!segmentTwoFilled)
    {
        [self.viewTwoOne setBackgroundColor:[UIColor redColor]];
        [self.viewTwoSix setBackgroundColor:[UIColor redColor]];
        [self.viewTwoSeven setBackgroundColor:[UIColor redColor]];
        [self.viewTwoThree setBackgroundColor:[UIColor redColor]];
        [self.viewTwoFour setBackgroundColor:[UIColor redColor]];
        
        self.viewTwoOne.alpha = 1;
        self.viewTwoSix.alpha = 1;
        self.viewTwoSeven.alpha = 1;
        self.viewTwoThree.alpha = 1;
        self.viewTwoFour.alpha = 1;
        segmentTwoFilled = YES;
    }
    else if(!segmentOneFilled)
    {
        [self.viewOneOne setBackgroundColor:[UIColor redColor]];
        [self.viewOneSix setBackgroundColor:[UIColor redColor]];
        [self.viewOneSeven setBackgroundColor:[UIColor redColor]];
        [self.viewOneThree setBackgroundColor:[UIColor redColor]];
        [self.viewOneFour setBackgroundColor:[UIColor redColor]];
        
        self.viewOneOne.alpha = 1;
        self.viewOneSix.alpha = 1;
        self.viewOneSeven.alpha = 1;
        self.viewOneThree.alpha = 1;
        self.viewOneFour.alpha = 1;
        segmentOneFilled = YES;
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"This calculator only deals with numbers up to four digits" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
}

- (IBAction)sixButton:(id)sender
{
    if(afterEquals)
    {
        [self setupViews];
        afterEquals = NO;
    }
    if(stillOnNumOne)
    {
        numOne = [numOne stringByAppendingString:@"6"];
    }
    else
    {
        numTwo = [numTwo stringByAppendingString:@"6"];
    }
    
    if(isNegative)
    {
        [self.viewFiveSeven setBackgroundColor:[UIColor redColor]];
        self.viewFiveSeven.alpha = 1;
    }
    
    if(!segmentFourFilled)
    {
        [self.viewFourOne setBackgroundColor:[UIColor redColor]];
        [self.viewFourSix setBackgroundColor:[UIColor redColor]];
        [self.viewFourFive setBackgroundColor:[UIColor redColor]];
        [self.viewFourSeven setBackgroundColor:[UIColor redColor]];
        [self.viewFourFour setBackgroundColor:[UIColor redColor]];
        [self.viewFourThree setBackgroundColor:[UIColor redColor]];
        
        self.viewFourOne.alpha = 1;
        self.viewFourSix.alpha = 1;
        self.viewFourFive.alpha = 1;
        self.viewFourSeven.alpha = 1;
        self.viewFourFour.alpha = 1;
        self.viewFourThree.alpha = 1;
        segmentFourFilled = YES;
    }
    else if(!segmentThreeFilled)
    {
        [self.viewThreeOne setBackgroundColor:[UIColor redColor]];
        [self.viewThreeSix setBackgroundColor:[UIColor redColor]];
        [self.viewThreeFive setBackgroundColor:[UIColor redColor]];
        [self.viewThreeSeven setBackgroundColor:[UIColor redColor]];
        [self.viewThreeFour setBackgroundColor:[UIColor redColor]];
        [self.viewThreeThree setBackgroundColor:[UIColor redColor]];
        
        self.viewThreeOne.alpha = 1;
        self.viewThreeSix.alpha = 1;
        self.viewThreeFive.alpha = 1;
        self.viewThreeSeven.alpha = 1;
        self.viewThreeFour.alpha = 1;
        self.viewThreeThree.alpha = 1;
        segmentThreeFilled = YES;
    }
    else if(!segmentTwoFilled)
    {
        [self.viewTwoOne setBackgroundColor:[UIColor redColor]];
        [self.viewTwoSix setBackgroundColor:[UIColor redColor]];
        [self.viewTwoFive setBackgroundColor:[UIColor redColor]];
        [self.viewTwoSeven setBackgroundColor:[UIColor redColor]];
        [self.viewTwoFour setBackgroundColor:[UIColor redColor]];
        [self.viewTwoThree setBackgroundColor:[UIColor redColor]];
        
        self.viewTwoOne.alpha = 1;
        self.viewTwoSix.alpha = 1;
        self.viewTwoFive.alpha = 1;
        self.viewTwoSeven.alpha = 1;
        self.viewTwoFour.alpha = 1;
        self.viewTwoThree.alpha = 1;
        segmentTwoFilled = YES;
    }
    else if(!segmentOneFilled)
    {
        [self.viewOneOne setBackgroundColor:[UIColor redColor]];
        [self.viewOneSix setBackgroundColor:[UIColor redColor]];
        [self.viewOneFive setBackgroundColor:[UIColor redColor]];
        [self.viewOneSeven setBackgroundColor:[UIColor redColor]];
        [self.viewOneFour setBackgroundColor:[UIColor redColor]];
        [self.viewOneThree setBackgroundColor:[UIColor redColor]];
        
        self.viewOneOne.alpha = 1;
        self.viewOneSix.alpha = 1;
        self.viewOneFive.alpha = 1;
        self.viewOneSeven.alpha = 1;
        self.viewOneFour.alpha = 1;
        self.viewOneThree.alpha = 1;
        segmentOneFilled = YES;
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"This calculator only deals with numbers up to four digits" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
}

- (IBAction)sevenButton:(id)sender
{
    if(afterEquals)
    {
        [self setupViews];
        afterEquals = NO;
    }
    if(stillOnNumOne)
    {
        numOne = [numOne stringByAppendingString:@"7"];
    }
    else
    {
        numTwo = [numTwo stringByAppendingString:@"7"];
    }
    
    if(isNegative)
    {
        [self.viewFiveSeven setBackgroundColor:[UIColor redColor]];
        self.viewFiveSeven.alpha = 1;
    }

    if(!segmentFourFilled)
    {
        [self.viewFourOne setBackgroundColor:[UIColor redColor]];
        [self.viewFourTwo setBackgroundColor:[UIColor redColor]];
        [self.viewFourThree setBackgroundColor:[UIColor redColor]];
        
        self.viewFourOne.alpha = 1;
        self.viewFourTwo.alpha = 1;
        self.viewFourThree.alpha = 1;
        segmentFourFilled = YES;
    }
    else if(!segmentThreeFilled)
    {
        [self.viewThreeOne setBackgroundColor:[UIColor redColor]];
        [self.viewThreeTwo setBackgroundColor:[UIColor redColor]];
        [self.viewThreeThree setBackgroundColor:[UIColor redColor]];
        
        self.viewThreeOne.alpha = 1;
        self.viewThreeTwo.alpha = 1;
        self.viewThreeThree.alpha = 1;
        segmentThreeFilled = YES;
    }
    else if(!segmentTwoFilled)
    {
        [self.viewTwoOne setBackgroundColor:[UIColor redColor]];
        [self.viewTwoTwo setBackgroundColor:[UIColor redColor]];
        [self.viewTwoThree setBackgroundColor:[UIColor redColor]];
        
        self.viewTwoOne.alpha = 1;
        self.viewTwoTwo.alpha = 1;
        self.viewTwoThree.alpha = 1;
        segmentTwoFilled = YES;
    }
    else if(!segmentOneFilled)
    {
        [self.viewOneOne setBackgroundColor:[UIColor redColor]];
        [self.viewOneTwo setBackgroundColor:[UIColor redColor]];
        [self.viewOneThree setBackgroundColor:[UIColor redColor]];
        
        self.viewOneOne.alpha = 1;
        self.viewOneTwo.alpha = 1;
        self.viewOneThree.alpha = 1;
        segmentOneFilled = YES;
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"This calculator only deals with numbers up to four digits" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
}

- (IBAction)eightButton:(id)sender
{
    if(afterEquals)
    {
        [self setupViews];
        afterEquals = NO;
    }
    if(stillOnNumOne)
    {
        numOne = [numOne stringByAppendingString:@"8"];
    }
    else
    {
        numTwo = [numTwo stringByAppendingString:@"8"];
    }
    
    if(isNegative)
    {
        [self.viewFiveSeven setBackgroundColor:[UIColor redColor]];
        self.viewFiveSeven.alpha = 1;
    }

    if(!segmentFourFilled)
    {
        [self.viewFourOne setBackgroundColor:[UIColor redColor]];
        [self.viewFourTwo setBackgroundColor:[UIColor redColor]];
        [self.viewFourThree setBackgroundColor:[UIColor redColor]];
        [self.viewFourFour setBackgroundColor:[UIColor redColor]];
        [self.viewFourFive setBackgroundColor:[UIColor redColor]];
        [self.viewFourSix setBackgroundColor:[UIColor redColor]];
        [self.viewFourSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewFourOne.alpha = 1;
        self.viewFourTwo.alpha = 1;
        self.viewFourThree.alpha = 1;
        self.viewFourFour.alpha = 1;
        self.viewFourFive.alpha = 1;
        self.viewFourSix.alpha = 1;
        self.viewFourSeven.alpha = 1;
        segmentFourFilled = YES;
    }
    else if(!segmentThreeFilled)
    {
        [self.viewThreeOne setBackgroundColor:[UIColor redColor]];
        [self.viewThreeTwo setBackgroundColor:[UIColor redColor]];
        [self.viewThreeThree setBackgroundColor:[UIColor redColor]];
        [self.viewThreeFour setBackgroundColor:[UIColor redColor]];
        [self.viewThreeFive setBackgroundColor:[UIColor redColor]];
        [self.viewThreeSix setBackgroundColor:[UIColor redColor]];
        [self.viewThreeSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewThreeOne.alpha = 1;
        self.viewThreeTwo.alpha = 1;
        self.viewThreeThree.alpha = 1;
        self.viewThreeFour.alpha = 1;
        self.viewThreeFive.alpha = 1;
        self.viewThreeSix.alpha = 1;
        self.viewThreeSeven.alpha = 1;
        segmentThreeFilled = YES;
    }
    else if(!segmentTwoFilled)
    {
        [self.viewTwoOne setBackgroundColor:[UIColor redColor]];
        [self.viewTwoTwo setBackgroundColor:[UIColor redColor]];
        [self.viewTwoThree setBackgroundColor:[UIColor redColor]];
        [self.viewTwoFour setBackgroundColor:[UIColor redColor]];
        [self.viewTwoFive setBackgroundColor:[UIColor redColor]];
        [self.viewTwoSix setBackgroundColor:[UIColor redColor]];
        [self.viewTwoSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewTwoOne.alpha = 1;
        self.viewTwoTwo.alpha = 1;
        self.viewTwoThree.alpha = 1;
        self.viewTwoFour.alpha = 1;
        self.viewTwoFive.alpha = 1;
        self.viewTwoSix.alpha = 1;
        self.viewTwoSeven.alpha = 1;
        segmentTwoFilled = YES;
    }
    else if(!segmentOneFilled)
    {
        [self.viewOneOne setBackgroundColor:[UIColor redColor]];
        [self.viewOneTwo setBackgroundColor:[UIColor redColor]];
        [self.viewOneThree setBackgroundColor:[UIColor redColor]];
        [self.viewOneFour setBackgroundColor:[UIColor redColor]];
        [self.viewOneFive setBackgroundColor:[UIColor redColor]];
        [self.viewOneSix setBackgroundColor:[UIColor redColor]];
        [self.viewOneSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewOneOne.alpha = 1;
        self.viewOneTwo.alpha = 1;
        self.viewOneThree.alpha = 1;
        self.viewOneFour.alpha = 1;
        self.viewOneFive.alpha = 1;
        self.viewOneSix.alpha = 1;
        self.viewOneSeven.alpha = 1;
        segmentOneFilled = YES;
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"This calculator only deals with numbers up to four digits" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
}

- (IBAction)nineButton:(id)sender
{
    if(afterEquals)
    {
        [self setupViews];
        afterEquals = NO;
    }
    if(stillOnNumOne)
    {
        numOne = [numOne stringByAppendingString:@"9"];
    }
    else
    {
        numTwo = [numTwo stringByAppendingString:@"9"];
    }
    
    if(isNegative)
    {
        [self.viewFiveSeven setBackgroundColor:[UIColor redColor]];
        self.viewFiveSeven.alpha = 1;
    }

    if(!segmentFourFilled)
    {
        [self.viewFourOne setBackgroundColor:[UIColor redColor]];
        [self.viewFourTwo setBackgroundColor:[UIColor redColor]];
        [self.viewFourThree setBackgroundColor:[UIColor redColor]];
        [self.viewFourSix setBackgroundColor:[UIColor redColor]];
        [self.viewFourSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewFourOne.alpha = 1;
        self.viewFourTwo.alpha = 1;
        self.viewFourThree.alpha = 1;
        self.viewFourSix.alpha = 1;
        self.viewFourSeven.alpha = 1;
        segmentFourFilled = YES;
    }
    else if(!segmentThreeFilled)
    {
        [self.viewThreeOne setBackgroundColor:[UIColor redColor]];
        [self.viewThreeTwo setBackgroundColor:[UIColor redColor]];
        [self.viewThreeThree setBackgroundColor:[UIColor redColor]];
        [self.viewThreeSix setBackgroundColor:[UIColor redColor]];
        [self.viewThreeSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewThreeOne.alpha = 1;
        self.viewThreeTwo.alpha = 1;
        self.viewThreeThree.alpha = 1;
        self.viewThreeSix.alpha = 1;
        self.viewThreeSeven.alpha = 1;
        segmentThreeFilled = YES;
    }
    else if(!segmentTwoFilled)
    {
        [self.viewTwoOne setBackgroundColor:[UIColor redColor]];
        [self.viewTwoTwo setBackgroundColor:[UIColor redColor]];
        [self.viewTwoThree setBackgroundColor:[UIColor redColor]];
        [self.viewTwoSix setBackgroundColor:[UIColor redColor]];
        [self.viewTwoSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewTwoOne.alpha = 1;
        self.viewTwoTwo.alpha = 1;
        self.viewTwoThree.alpha = 1;
        self.viewTwoSix.alpha = 1;
        self.viewTwoSeven.alpha = 1;
        segmentTwoFilled = YES;
    }
    else if(!segmentOneFilled)
    {
        [self.viewOneOne setBackgroundColor:[UIColor redColor]];
        [self.viewOneTwo setBackgroundColor:[UIColor redColor]];
        [self.viewOneThree setBackgroundColor:[UIColor redColor]];
        [self.viewOneSix setBackgroundColor:[UIColor redColor]];
        [self.viewOneSeven setBackgroundColor:[UIColor redColor]];
        
        self.viewOneOne.alpha = 1;
        self.viewOneTwo.alpha = 1;
        self.viewOneThree.alpha = 1;
        self.viewOneSix.alpha = 1;
        self.viewOneSeven.alpha = 1;
        segmentOneFilled = YES;
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"This calculator only deals with numbers up to four digits" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
}

- (IBAction)zeroButton:(id)sender
{
    if(afterEquals)
    {
        [self setupViews];
        afterEquals = NO;
    }
    if(stillOnNumOne)
    {
        numOne = [numOne stringByAppendingString:@"0"];
    }
    else
    {
        numTwo = [numTwo stringByAppendingString:@"0"];
    }
    
    if(isNegative)
    {
        [self.viewFiveSeven setBackgroundColor:[UIColor redColor]];
        self.viewFiveSeven.alpha = 1;
    }
    
    if(!segmentFourFilled)
    {
        [self.viewFourOne setBackgroundColor:[UIColor redColor]];
        [self.viewFourTwo setBackgroundColor:[UIColor redColor]];
        [self.viewFourThree setBackgroundColor:[UIColor redColor]];
        [self.viewFourFour setBackgroundColor:[UIColor redColor]];
        [self.viewFourFive setBackgroundColor:[UIColor redColor]];
        [self.viewFourSix setBackgroundColor:[UIColor redColor]];
        
        self.viewFourOne.alpha = 1;
        self.viewFourTwo.alpha = 1;
        self.viewFourThree.alpha = 1;
        self.viewFourFour.alpha = 1;
        self.viewFourFive.alpha = 1;
        self.viewFourSix.alpha = 1;
        segmentFourFilled = YES;
    }
    else if(!segmentThreeFilled)
    {
        [self.viewThreeOne setBackgroundColor:[UIColor redColor]];
        [self.viewThreeTwo setBackgroundColor:[UIColor redColor]];
        [self.viewThreeThree setBackgroundColor:[UIColor redColor]];
        [self.viewThreeFour setBackgroundColor:[UIColor redColor]];
        [self.viewThreeFive setBackgroundColor:[UIColor redColor]];
        [self.viewThreeSix setBackgroundColor:[UIColor redColor]];
        
        self.viewThreeOne.alpha = 1;
        self.viewThreeTwo.alpha = 1;
        self.viewThreeThree.alpha = 1;
        self.viewThreeFour.alpha = 1;
        self.viewThreeFive.alpha = 1;
        self.viewThreeSix.alpha = 1;
        segmentThreeFilled = YES;
    }
    else if(!segmentTwoFilled)
    {
        [self.viewTwoOne setBackgroundColor:[UIColor redColor]];
        [self.viewTwoTwo setBackgroundColor:[UIColor redColor]];
        [self.viewTwoThree setBackgroundColor:[UIColor redColor]];
        [self.viewTwoFour setBackgroundColor:[UIColor redColor]];
        [self.viewTwoFive setBackgroundColor:[UIColor redColor]];
        [self.viewTwoSix setBackgroundColor:[UIColor redColor]];
        
        self.viewTwoOne.alpha = 1;
        self.viewTwoTwo.alpha = 1;
        self.viewTwoThree.alpha = 1;
        self.viewTwoFour.alpha = 1;
        self.viewTwoFive.alpha = 1;
        self.viewTwoSix.alpha = 1;
        segmentTwoFilled = YES;
    }
    else if(!segmentOneFilled)
    {
        [self.viewOneOne setBackgroundColor:[UIColor redColor]];
        [self.viewOneTwo setBackgroundColor:[UIColor redColor]];
        [self.viewOneThree setBackgroundColor:[UIColor redColor]];
        [self.viewOneFour setBackgroundColor:[UIColor redColor]];
        [self.viewOneFive setBackgroundColor:[UIColor redColor]];
        [self.viewOneSix setBackgroundColor:[UIColor redColor]];
        
        self.viewOneOne.alpha = 1;
        self.viewOneTwo.alpha = 1;
        self.viewOneThree.alpha = 1;
        self.viewOneFour.alpha = 1;
        self.viewOneFive.alpha = 1;
        self.viewOneSix.alpha = 1;
        segmentOneFilled = YES;
    }
    else
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"This calculator only deals with numbers up to four digits" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
}


- (IBAction)plusButton:(id)sender
{
    operator = @"+";
    stillOnNumOne = NO;
    numOneInteger = [numOne integerValue];
    [self setupViews];
    
}

- (IBAction)subtractButton:(id)sender
{
    operator = @"-";
    stillOnNumOne = NO;
    numOneInteger = [numOne integerValue];
    [self setupViews];
}

- (IBAction)multiplyButton:(id)sender
{
    operator = @"*";
    stillOnNumOne = NO;
    numOneInteger = [numOne integerValue];
    [self setupViews];
}


-(void)fillOneDigit
{
    unichar myChar = [result characterAtIndex:0];
    NSString * charString = [NSString stringWithFormat:@"%c", myChar];
    if([charString isEqualToString:@"1"])
    {
        [self oneButton:self];
    }
    else if([charString isEqualToString:@"2"])
    {
        [self twoButton:self];
    }
    else if([charString isEqualToString:@"3"])
    {
        [self threeButton:self];
    }
    else if([charString isEqualToString:@"4"])
    {
        [self fourButton:self];
    }
    else if([charString isEqualToString:@"5"])
    {
        [self fiveButton:self];
    }
    else if([charString isEqualToString:@"6"])
    {
        [self sixButton:self];
    }
    else if([charString isEqualToString:@"7"])
    {
        [self sevenButton:self];
    }
    else if([charString isEqualToString:@"8"])
    {
        [self eightButton:self];
    }
    else if([charString isEqualToString:@"9"])
    {
        [self nineButton:self];
    }
    else if([charString isEqualToString:@"0"])
    {
        [self zeroButton:self];
    }
}
-(void)fillTwoDigits
{
    unichar myChar = [result characterAtIndex:1];
    NSString * charString = [NSString stringWithFormat:@"%c", myChar];
    if([charString isEqualToString:@"1"])
    {
        [self oneButton:self];
    }
    else if([charString isEqualToString:@"2"])
    {
        [self twoButton:self];
    }
    else if([charString isEqualToString:@"3"])
    {
        [self threeButton:self];
    }
    else if([charString isEqualToString:@"4"])
    {
        [self fourButton:self];
    }
    else if([charString isEqualToString:@"5"])
    {
        [self fiveButton:self];
    }
    else if([charString isEqualToString:@"6"])
    {
        [self sixButton:self];
    }
    else if([charString isEqualToString:@"7"])
    {
        [self sevenButton:self];
    }
    else if([charString isEqualToString:@"8"])
    {
        [self eightButton:self];
    }
    else if([charString isEqualToString:@"9"])
    {
        [self nineButton:self];
    }
    else if([charString isEqualToString:@"0"])
    {
        [self zeroButton:self];
    }
}
-(void)fillThreeDigits
{
    unichar myChar = [result characterAtIndex:2];
    NSString * charString = [NSString stringWithFormat:@"%c", myChar];
    if([charString isEqualToString:@"1"])
    {
        [self oneButton:self];
    }
    else if([charString isEqualToString:@"2"])
    {
        [self twoButton:self];
    }
    else if([charString isEqualToString:@"3"])
    {
        [self threeButton:self];
    }
    else if([charString isEqualToString:@"4"])
    {
        [self fourButton:self];
    }
    else if([charString isEqualToString:@"5"])
    {
        [self fiveButton:self];
    }
    else if([charString isEqualToString:@"6"])
    {
        [self sixButton:self];
    }
    else if([charString isEqualToString:@"7"])
    {
        [self sevenButton:self];
    }
    else if([charString isEqualToString:@"8"])
    {
        [self eightButton:self];
    }
    else if([charString isEqualToString:@"9"])
    {
        [self nineButton:self];
    }
    else if([charString isEqualToString:@"0"])
    {
        [self zeroButton:self];
    }
}
-(void)fillFourDigits
{
    unichar myChar = [result characterAtIndex:3];
    NSString * charString = [NSString stringWithFormat:@"%c", myChar];
    if([charString isEqualToString:@"1"])
    {
        [self oneButton:self];
    }
    else if([charString isEqualToString:@"2"])
    {
        [self twoButton:self];
    }
    else if([charString isEqualToString:@"3"])
    {
        [self threeButton:self];
    }
    else if([charString isEqualToString:@"4"])
    {
        [self fourButton:self];
    }
    else if([charString isEqualToString:@"5"])
    {
        [self fiveButton:self];
    }
    else if([charString isEqualToString:@"6"])
    {
        [self sixButton:self];
    }
    else if([charString isEqualToString:@"7"])
    {
        [self sevenButton:self];
    }
    else if([charString isEqualToString:@"8"])
    {
        [self eightButton:self];
    }
    else if([charString isEqualToString:@"9"])
    {
        [self nineButton:self];
    }
    else if([charString isEqualToString:@"0"])
    {
        [self zeroButton:self];
    }
}

- (IBAction)equalsButton:(id)sender
{
    [self setupViews];
    afterEquals = YES;
    if([operator isEqualToString:@"+"])
    {
        numTwoInteger = [numTwo intValue];
        resultInteger = numOneInteger + numTwoInteger;
    }
    else if([operator isEqualToString:@"-"])
    {
        numTwoInteger = [numTwo intValue];
        resultInteger = numOneInteger - numTwoInteger;
        if(resultInteger < 0)
        {
            isNegative = YES;
        }
    }
    else if([operator isEqualToString:@"*"])
    {
        numTwoInteger = [numTwo intValue];
        resultInteger = numOneInteger * numTwoInteger;
    }
    result = (NSMutableString*)[NSString stringWithFormat:@"%d", resultInteger];
    
    if(result.length == 1)
    {
        [self fillOneDigit];
    }
    else if(result.length == 2)
    {
        [self fillOneDigit];
        [self fillTwoDigits];
    }
    else if(result.length == 3)
    {
        [self fillOneDigit];
        [self fillTwoDigits];
        [self fillThreeDigits];
    }
    else if(result.length == 4)
    {
        [self fillOneDigit];
        [self fillTwoDigits];
        [self fillThreeDigits];
        [self fillFourDigits];
    }
    else if(result.length > 4)
    {
        UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"This calculator only deals with numbers up to four digits" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
    }
    
    //Resetting settings after answer.
    numOne = @"";
    numTwo = @"";
    numOneInteger = 0;
    numTwoInteger = 0;
    afterEquals = YES;
    

}

- (IBAction)clearButton:(id)sender
{
    stillOnNumOne = YES;
    numOne = @"";
    numTwo = @"";
    numOneInteger = 0;
    numTwoInteger = 0;
    afterEquals = YES;
    isNegative = NO;
    [self setupViews];
}
@end
