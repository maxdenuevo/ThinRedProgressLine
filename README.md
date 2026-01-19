# Thin Red Progress Line

A discreet movie progress tracker for cinema use. Pair your iPhone with Apple Watch to display a minimal, glanceable progress line during films.

## Features

- **iPhone App**: Browse "In Theatres" movies, search TMDB, and start tracking
- **Apple Watch**: Display only a thin red progress line on pure black background
- **Time Scrubbing**: Sync the timeline if you start late or need to adjust
- **Silent Operation**: No notifications, no haptics — designed for cinema use
- **Raise-to-Wake**: Glance at your watch to see progress without disturbing others

## Screenshots

| iPhone - Movie Selection | iPhone - Now Playing | Apple Watch |
|:---:|:---:|:---:|
| Search and select movies | Active movie with scrubber | Just the red line |

## Requirements

- iOS 17.0+
- watchOS 10.0+
- Xcode 15+
- TMDB API key

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/maxdenuevo/ThinRedProgressLine/
   cd ThinRedLine
   ```

2. Set up your TMDB API key:
   ```bash
   cp ThinRedLine/Secrets.swift.template ThinRedLine/Secrets.swift
   ```
   Then edit `Secrets.swift` and add your TMDB bearer token.

3. Open the project in Xcode:
   ```bash
   open ThinRedLine.xcodeproj
   ```

4. Select your development team in the project settings and build.

## Getting a TMDB API Key

1. Create an account at [themoviedb.org](https://www.themoviedb.org/)
2. Go to Settings → API → Create → Developer
3. Copy your API Read Access Token (Bearer token)
4. Paste it in `Secrets.swift`

## Usage

1. Open the iPhone app and browse "In Theatres" or search for a movie
2. Select a movie to see its runtime
3. Tap "Start Movie" when the film begins
4. Your Apple Watch will show a thin red progress line
5. Use the slider on iPhone to adjust if needed (e.g., if you started late)
6. Tap "End Session" when done

## Architecture

The app follows MVVM architecture with clear separation:

- **Models**: `Movie`, `ActiveMovie`, `TMDBMovie` with shared `PosterURLProvider` protocol
- **Views**: SwiftUI views including reusable `PosterImage` component
- **ViewModels**: `MovieSearchViewModel` handles business logic and state
- **Services**: `TMDBService` for API calls, `WatchSessionManager` for Watch Connectivity

## Tech Stack

- Swift 5 & SwiftUI
- Watch Connectivity framework
- TMDB REST API
- os.Logger for diagnostics

## Design

- **Color Palette**: Pure black (#000000), Red accent (#FF3B30), White (#FFFFFF)
- **Typography**: Times New Roman for title, system fonts elsewhere
- **Watch Interface**: Minimal — just a red progress line on black

## License

MIT License - see LICENSE file for details.

## Acknowledgments

- Movie data provided by [The Movie Database (TMDB)](https://www.themoviedb.org/)
- This product uses the TMDB API but is not endorsed or certified by TMDB.
