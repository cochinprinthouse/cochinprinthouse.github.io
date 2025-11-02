# Cochin Print House Website

A professional printing services website replica built with HTML, CSS, and JavaScript.

## Project Structure

```
CochinPrintHouse/
├── index.html              # Main HTML file
├── css/
│   └── style.css          # All styles
├── js/
│   └── script.js          # JavaScript functionality
├── images/                # Image assets
│   └── README.md          # Image list and download instructions
├── download-images.ps1    # PowerShell script to download images
└── README.md             # This file
```

## Features

- **Responsive Design**: Works on all devices (desktop, tablet, mobile)
- **Smooth Scrolling**: Navigation with smooth scroll effect
- **Interactive Elements**: 
  - Mobile navigation menu
  - Contact form with validation
  - Image lightbox for gallery
  - Scroll-to-top button
  - Floating call button
- **Modern UI/UX**: Clean and professional design
- **Optimized Performance**: Fast loading and smooth animations

## Sections

1. **Header** - Logo, navigation, contact info, and social links
2. **Hero Section** - Full-screen banner with call-to-action buttons
3. **Services** - Grid layout showcasing all services
4. **Technology** - Display of printing equipment and technology
5. **Gallery** - Image gallery with lightbox functionality
6. **Location** - Map and location information
7. **Contact Form** - Request a quote form
8. **About Us** - Company information
9. **Team** - Meet the team section
10. **Footer** - Complete contact details and site links

## Installation & Setup

### Option 1: Quick Start
1. Open `index.html` in your web browser
2. The website will work with placeholder images

### Option 2: Download Actual Images
1. Run the PowerShell script to download images:
   ```powershell
   .\download-images.ps1
   ```
2. Or manually download images using URLs in `images/README.md`
3. Open `index.html` in your browser

### Option 3: Local Development Server
For better development experience, use a local server:

**Using Python:**
```powershell
python -m http.server 8000
```
Then open: http://localhost:8000

**Using Node.js (with http-server):**
```powershell
npx http-server -p 8000
```
Then open: http://localhost:8000

**Using VS Code Live Server:**
1. Install "Live Server" extension
2. Right-click on `index.html`
3. Select "Open with Live Server"

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers

## Customization

### Colors
Edit the CSS variables in `css/style.css`:
```css
:root {
    --primary-color: #1a4d2e;
    --secondary-color: #4f8f69;
    --accent-color: #f7b32b;
    --dark-bg: #1a1a1a;
    --light-bg: #f5f5f5;
}
```

### Content
- Edit text directly in `index.html`
- Update phone numbers, email addresses, and links
- Modify service descriptions and company information

### Images
- Replace placeholder images in the `images/` folder
- Keep the same filenames or update references in `index.html`

## Form Handling

The contact form currently shows an alert message. To make it functional:

1. **Using FormSubmit.co** (No backend required):
   - Change form action to: `https://formsubmit.co/your@email.com`
   - Update form method to: `POST`

2. **Using EmailJS** (Free tier available):
   - Sign up at emailjs.com
   - Add EmailJS script and configure in `script.js`

3. **Custom Backend**:
   - Create a backend API endpoint
   - Update form submission in `script.js`

## Images Information

All images needed are listed in `images/README.md` with:
- Original URLs from the website
- Recommended dimensions
- File formats

Run `download-images.ps1` to automatically download available images.

## Technologies Used

- **HTML5** - Semantic markup
- **CSS3** - Flexbox, Grid, Animations, Custom Properties
- **JavaScript (Vanilla)** - ES6+ features
- **Font Awesome** - Icons (CDN)

## Performance Optimization

- Lazy loading for images
- Optimized CSS with minimal specificity
- Efficient JavaScript with event delegation
- Smooth animations using CSS transforms
- Responsive images for different screen sizes

## Contact Information

**Cochin Print House**
- Address: Kaloor Ashoka Road, Puthiya Road Jn, Cochin-682017
- Phone: 0484 296 1100, 9495 463 666, 9744 848 313
- Email: cochinprinthouse@gmail.com
- Facebook: [Cochin Print House](https://www.facebook.com/Cochin-Print-House-101183871792676/)

## License

This is a replica project for educational/portfolio purposes.

## Notes

- This is a static HTML/CSS/JS website replica
- Images need to be downloaded separately (see instructions above)
- Form submissions require backend integration for production use
- Original website: https://cochinprinthouse.com

---

**Created with ❤️ - December 2024**
