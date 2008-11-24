// NSExpressionTest.m
//                           wookay.noh at gmail.com

#import "test.h"

#define I(n) [NSNumber numberWithInt:n]

@implementation NSExpressionTest

- (void) unittest {

#if TARGET_CPU_X86
  NSArray* values = [NSArray arrayWithObjects:I(1), I(2), nil];
  NSExpression* expValues = [NSExpression expressionForConstantValue:values];
  NSArray* args = [NSArray arrayWithObject:expValues];
  NSExpression* func = [NSExpression expressionForFunction:@"sum:"
                                     arguments:args];
  id result = [func expressionValueWithObject:nil context:nil];
  [assert_equal a:I(3) b:result];
#endif
  
}

@end
