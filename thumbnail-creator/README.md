# Thumbnail Creator

A browser-based tool for creating book cover thumbnails with banner overlays.

## Features

- **Real-time preview** - All changes update automatically (debounced)
- **Custom banner** - Text, color, opacity, position, and height control
- **Full positioning** - Place banner anywhere from top (0%) to bottom (100%)
- **Custom cropping** - Interactive crop mode with drag-to-select
- **High quality** - Preserves original image resolution
- **No dependencies** - Pure HTML/CSS/JavaScript, runs in any modern browser

## Usage

1. Open `index.html` in a web browser
2. Click to select your book cover image
3. Adjust banner settings (updates automatically)
4. Optional: Enable crop mode to crop the image
5. Download the result

## Access

- **Local**: Open `index.html` directly in a browser
- **Web**: Can be hosted on any static web server

## Settings

### Banner Controls
- **Text**: Customize banner message
- **Color**: Choose banner background color
- **Opacity**: 0-100% transparency
- **Position**: 0% (top) to 100% (bottom)
- **Height**: 5-30% of image height
- **Font Size**: 20-120px

### Crop Controls
- **Interactive**: Click "Enable Crop Mode" and drag on image
- **Manual**: Enter exact X, Y, Width, Height values
- **Reset**: Return to full image

## Output

- **Format**: PNG
- **Quality**: High (preserves original resolution)
- **Filename**: `leader-guide-thumbnail.png`

## Use Cases

- Creating Gumroad product thumbnails
- Making promotional graphics
- Adding "FREE" or "SALE" banners to book covers
- Creating variations for different platforms
