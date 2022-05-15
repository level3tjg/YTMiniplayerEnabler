#import "fishhook/fishhook.h"

static BOOL (*orig_class_addMethod)(Class, SEL, IMP, const char *);
static BOOL hook_class_addMethod(Class cls, SEL name, IMP imp,
                                 const char *types) {
  if ([cls isEqual:%c(YTIMiniplayerRenderer)] &&
      [NSStringFromSelector(name) hasPrefix:@"has"]) {
    imp = imp_implementationWithBlock(^BOOL(id self, SEL _cmd) {
      return NO;
    });
  }
  return orig_class_addMethod(cls, name, imp, types);
}

%ctor {
  rebind_symbols((struct rebinding[1]){{"class_addMethod", hook_class_addMethod,
                                        (void *)&orig_class_addMethod}},
                 1);
}
