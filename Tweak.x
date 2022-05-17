#import "fishhook/fishhook.h"

%hook YTIMiniplayerRenderer
%new
- (BOOL)hasMinimizedEndpoint {
  return NO;
}
%new
- (BOOL)hasPlaybackMode {
  return NO;
}
%end
