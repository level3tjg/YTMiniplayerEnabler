%hook YTIMiniplayerRenderer
- (BOOL)hasMinimizedEndpoint {
	return NO;
}
- (BOOL)hasPlaybackMode {
	return NO;
}
%end