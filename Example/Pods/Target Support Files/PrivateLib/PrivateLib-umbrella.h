#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "Dog.h"
#import "Person+PC1.h"
#import "Person.h"

FOUNDATION_EXPORT double PrivateLibVersionNumber;
FOUNDATION_EXPORT const unsigned char PrivateLibVersionString[];

