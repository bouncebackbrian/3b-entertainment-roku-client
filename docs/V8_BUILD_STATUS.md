# 3B Entertainment Roku V8 build status

Branch: feature/3b-entertainment-roku-v8

## Implemented in branch
- Upper-right local 12-hour clock (30-second refresh).
- Safe configuration defaults with no hardcoded provider credentials.
- Series navigation placeholder.

## Existing baseline observations
- Live TV ChannelsView is a placeholder.
- GuideView is a placeholder.
- M3ULoaderTask contains a basic parser; it does not implement secure source management.
- The README describes V7 as last-known-working; V8 is not yet Roku-device verified.

## Release gates
- Confirm Roku sideload and BrightScript compilation.
- Replace placeholders with functional screens.
- Add user-authorized M3U and Xtream source flows.
- Integrate 3B ID activation with verified backend endpoints.
- Integrate approved logo, icon and backsplash image assets.
- Implement live playback, XMLTV guide, movies and series.
- Test on physical Roku hardware before merging to main.
