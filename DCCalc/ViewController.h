//
//  ViewController.h
//  DCCalc
//
//  Created by Ryan Malmoe on 2/27/14.
//  Copyright (c) 2014 Ryan Malmoe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>


@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *viewOne;
@property (weak, nonatomic) IBOutlet UIView *viewTwo;
@property (weak, nonatomic) IBOutlet UIView *viewThree;
@property (weak, nonatomic) IBOutlet UIView *viewFour;
@property (weak, nonatomic) IBOutlet UIView *viewFive;
@property (weak, nonatomic) IBOutlet UIView *viewSix;
@property (weak, nonatomic) IBOutlet UIView *viewSeven;
@property (weak, nonatomic) IBOutlet UIView *viewEight;
@property (weak, nonatomic) IBOutlet UIView *viewNine;
@property (weak, nonatomic) IBOutlet UIView *viewZero;


- (IBAction)oneButton:(id)sender;
- (IBAction)twoButton:(id)sender;
- (IBAction)threeButton:(id)sender;
- (IBAction)fourButton:(id)sender;
- (IBAction)fiveButton:(id)sender;
- (IBAction)sixButton:(id)sender;
- (IBAction)sevenButton:(id)sender;
- (IBAction)eightButton:(id)sender;
- (IBAction)nineButton:(id)sender;
- (IBAction)zeroButton:(id)sender;

- (IBAction)plusButton:(id)sender;
- (IBAction)subtractButton:(id)sender;
- (IBAction)multiplyButton:(id)sender;
- (IBAction)equalsButton:(id)sender;
- (IBAction)clearButton:(id)sender;


@property (weak, nonatomic) IBOutlet UIView *viewOneOne;
@property (weak, nonatomic) IBOutlet UIView *viewOneTwo;
@property (weak, nonatomic) IBOutlet UIView *viewOneThree;
@property (weak, nonatomic) IBOutlet UIView *viewOneFour;
@property (weak, nonatomic) IBOutlet UIView *viewOneFive;
@property (weak, nonatomic) IBOutlet UIView *viewOneSix;
@property (weak, nonatomic) IBOutlet UIView *viewOneSeven;

@property (weak, nonatomic) IBOutlet UIView *viewTwoOne;
@property (weak, nonatomic) IBOutlet UIView *viewTwoTwo;
@property (weak, nonatomic) IBOutlet UIView *viewTwoThree;
@property (weak, nonatomic) IBOutlet UIView *viewTwoFour;
@property (weak, nonatomic) IBOutlet UIView *viewTwoFive;
@property (weak, nonatomic) IBOutlet UIView *viewTwoSix;
@property (weak, nonatomic) IBOutlet UIView *viewTwoSeven;

@property (weak, nonatomic) IBOutlet UIView *viewThreeOne;
@property (weak, nonatomic) IBOutlet UIView *viewThreeTwo;
@property (weak, nonatomic) IBOutlet UIView *viewThreeThree;
@property (weak, nonatomic) IBOutlet UIView *viewThreeFour;
@property (weak, nonatomic) IBOutlet UIView *viewThreeFive;
@property (weak, nonatomic) IBOutlet UIView *viewThreeSix;
@property (weak, nonatomic) IBOutlet UIView *viewThreeSeven;

@property (weak, nonatomic) IBOutlet UIView *viewFourOne;
@property (weak, nonatomic) IBOutlet UIView *viewFourTwo;
@property (weak, nonatomic) IBOutlet UIView *viewFourThree;
@property (weak, nonatomic) IBOutlet UIView *viewFourFour;
@property (weak, nonatomic) IBOutlet UIView *viewFourFive;
@property (weak, nonatomic) IBOutlet UIView *viewFourSix;
@property (weak, nonatomic) IBOutlet UIView *viewFourSeven;

@property (weak, nonatomic) IBOutlet UIView *viewNumbers;
@property (weak, nonatomic) IBOutlet UIView *viewFiveSeven;
@property (weak, nonatomic) IBOutlet UIView *viewSevenSix;




@end






