#!/bin/bash

# Check if a project name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 [project_name]"
    exit 1
fi

# Check if README.md exists in the current directory
if [ ! -f "README.md" ]; then
    echo "Error: README.md must exist in the current directory"
    exit 1
fi

PROJECT_NAME="$1"

# Create a project directory if it doesn't exist
mkdir -p "$PROJECT_NAME"

# Create images directory in the new project
mkdir -p "$PROJECT_NAME/images"

# Copy the images from source to the new project
cp source/images/background.jpg "$PROJECT_NAME/images/"
cp source/images/logo.svg "$PROJECT_NAME/images/"

# Navigate into the project directory
cd "$PROJECT_NAME" || exit

# Copy the README.md from the parent directory
cp ../README.md .

# Create demo-example.html with predefined content
cat > demo-example.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Marketing Consultation Insights</title>
    <!-- Include Swiper CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
    <!-- Include Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <!-- Link to external stylesheet -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Fixed background -->
    <div class="background"></div>

    <img src="images/logo.svg" alt="Logo" class="logo-watermark">

    <div class="navigation-container">
        <div class="nav-button nav-left" id="nav-left"></div>
        <div class="nav-button nav-down" id="nav-down"></div>
        <div class="nav-button nav-right" id="nav-right"></div>
    </div>

    <div class="progress-container">
        <div class="progress-bar" id="progress-bar"></div>
        <div class="slide-counter">
            <span id="current-slide">1</span>/<span id="total-slides">1</span>
        </div>
    </div>

    <div class="swiper">
        <div class="swiper-wrapper">
            <!-- Title Slide -->
            <div class="swiper-slide left-align">
                <h1 class="big-text">MARKETING CONSULTATION</h1>
                <p class="medium-text">Discovery Call Insights</p>
                <p class="small-text">A comprehensive analysis of business goals and market position</p>
            </div>

            <!-- Business Goals -->
            <div class="swiper-slide left-align">
                <h1 class="big-text">BUSINESS GOALS</h1>
                <p class="medium-text">Strategic Objectives</p>
                <ul class="bullet-list small-text">
                    <li><strong>Increase online sales</strong> by 15% (3 months)</li>
                    <li><strong>Open two new retail locations</strong> in neighboring cities (12 months)</li>
                    <li><strong>Launch new product line</strong> for eco-conscious consumers (18 months)</li>
                </ul>
            </div>

            <!-- Current Challenges -->
            <div class="swiper-slide left-align">
                <h1 class="big-text">CURRENT CHALLENGES</h1>
                <p class="medium-text">Growth & Operations</p>
                <ul class="bullet-list small-text">
                    <li><strong>Increasing brand awareness</strong> in new markets</li>
                    <li><strong>Streamlining supply chain</strong> for expansion</li>
                    <li><strong>Managing operational efficiency</strong> during growth</li>
                </ul>
            </div>

            <!-- Market Demand -->
            <div class="swiper-slide left-align">
                <h1 class="big-text">MARKET DEMAND</h1>
                <p class="medium-text">Key Decision-Makers</p>
                <ul class="bullet-list small-text">
                    <li><strong>Individual Consumers</strong>: Ages 25-45, sustainability-focused</li>
                    <li><strong>Retail Buyers</strong>: Boutique stores and retail chains</li>
                    <li><strong>Procurement Managers</strong>: Focus on quality and reliability</li>
                </ul>
            </div>

            <!-- Target Industries -->
            <div class="swiper-slide left-align">
                <h1 class="big-text">TARGET INDUSTRIES</h1>
                <p class="medium-text">Primary Focus</p>
                <h2 class="small-text">Core Markets</h2>
                <ul class="bullet-list small-text">
                    <li><strong>Home Goods</strong></li>
                    <li><strong>Lifestyle Products</strong></li>
                    <li><strong>Sustainable Living</strong></li>
                </ul>
                <h2 class="small-text">Revenue Information</h2>
                <ul class="bullet-list small-text">
                    <li><strong>Current Annual Revenue</strong>: $2 million</li>
                    <li><strong>Projected Growth</strong>: Significant increase expected</li>
                </ul>
            </div>

            <!-- Marketing Position -->
            <div class="swiper-slide left-align">
                <h1 class="big-text">MARKETING POSITION</h1>
                <p class="medium-text">Brand & Offering</p>
                <h2 class="small-text">Brand Position</h2>
                <ul class="bullet-list small-text">
                    <li><strong>"Affordable luxury with a conscience"</strong></li>
                    <li><strong>High-quality products</strong> with sustainable practices</li>
                </ul>
                <h2 class="small-text">Product Range</h2>
                <ul class="bullet-list small-text">
                    <li><strong>Home décor</strong> and lifestyle products</li>
                    <li><strong>Mid to high-end pricing</strong> reflecting quality</li>
                </ul>
            </div>

            <!-- Customer Support Needs -->
            <div class="swiper-slide left-align">
                <h1 class="big-text">SUPPORT NEEDS</h1>
                <p class="medium-text">Common Customer Requirements</p>
                <ul class="bullet-list small-text">
                    <li><strong>Sustainability Certification</strong> information</li>
                    <li><strong>Product Care</strong> instructions</li>
                    <li><strong>Customization</strong> options</li>
                    <li><strong>Online Platform</strong> navigation</li>
                    <li><strong>Shipping Policy</strong> guidance</li>
                </ul>
            </div>

            <!-- Information Sources -->
            <div class="swiper-slide left-align">
                <h1 class="big-text">INFORMATION SOURCES</h1>
                <p class="medium-text">Where Customers Gather Information</p>
                <div class="grid-container">
                    <div class="grid-item">
                        <h3>Digital Platforms</h3>
                        <ul class="bullet-list small-text">
                            <li><strong>Instagram</strong></li>
                            <li><strong>Pinterest</strong></li>
                        </ul>
                    </div>
                    <div class="grid-item">
                        <h3>Physical Venues</h3>
                        <ul class="bullet-list small-text">
                            <li><strong>Artisan Markets</strong></li>
                            <li><strong>Trade Shows</strong></li>
                        </ul>
                    </div>
                    <div class="grid-item">
                        <h3>Social Media</h3>
                        <ul class="bullet-list small-text">
                            <li><strong>Facebook Groups</strong></li>
                            <li><strong>Blogs</strong></li>
                        </ul>
                    </div>
                    <div class="grid-item">
                        <h3>Community</h3>
                        <ul class="bullet-list small-text">
                            <li><strong>Local Events</strong></li>
                            <li><strong>Workshops</strong></li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Follow-Up Questions -->
            <div class="swiper-slide left-align">
                <h1 class="big-text">FOLLOW-UP QUESTIONS</h1>
                <p class="medium-text">Next Steps</p>
                <ul class="bullet-list small-text">
                    <li><strong>What marketing strategies</strong> do you plan to implement to increase online sales?</li>
                    <li><strong>How will you address</strong> supply chain challenges during your expansion?</li>
                    <li><strong>What measures are in place</strong> to maintain operational efficiency?</li>
                    <li><strong>Can you share</strong> examples of successful customer engagement?</li>
                    <li><strong>How do you plan</strong> to differentiate your new product line in the market?</li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Include Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
    <!-- Include external script -->
    <script src="script.js"></script>
</body>
</html>
EOF

# Create styles.css with predefined content
cat > styles.css << 'EOF'
/* Base styles */
body, html {
    margin: 0;
    padding: 0;
    font-family: 'Montserrat', sans-serif;
    background-color: #000;
    color: #0138A1;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat;
    min-height: 100vh;
}

/* Background styles */
.background {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url('images/background.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    z-index: -1;
}

.background::after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.2);
}

/* Swiper container styles */
.swiper {
    width: 100%;
    height: 100vh;
}

.swiper-slide {
    padding: 40px;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    justify-content: center;
    background: none;
}

/* Typography styles */
.big-text {
    font-size: 5vw;
    font-weight: 700;
    line-height: 1.2;
    margin: 0;
}

.medium-text {
    font-size: 3vw;
    font-weight: 400;
    margin: 20px 0;
}

.small-text {
    font-size: 2vw;
    font-weight: 400;
    line-height: 1.2;
    margin: 20px 0;
}

.bullet-list {
    list-style-type: disc;
    padding-left: 20px;
    font-size: 2vw;
}

/* Layout styles */
.left-align { 
    text-align: left; 
    align-items: flex-start; 
}

/* Logo styles */
.logo-watermark {
    position: fixed;
    bottom: 40px;
    left: 40px;
    width: 160px;
    opacity: 0.5;
    z-index: 10;
}

/* Navigation styles */
.navigation-container {
    position: fixed;
    bottom: 40px;
    right: 40px;
    display: flex;
    gap: 10px;
    z-index: 10;
}

.nav-button {
    width: 32px;
    height: 32px;
    background-color: rgba(255, 255, 255, 0.5);
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
}

.nav-button::after {
    content: '';
    width: 0;
    height: 0;
    border-style: solid;
}

.nav-left::after {
    border-width: 8px 13.84px 8px 0;
    border-color: transparent #0138A1 transparent transparent;
}

.nav-right::after {
    border-width: 8px 0 8px 13.84px;
    border-color: transparent transparent transparent #0138A1;
}

/* Grid layout for Information Sources */
.grid-container {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
    margin-top: 20px;
    width: 100%;
}

.grid-item {
    background: rgba(255, 255, 255, 0.1);
    padding: 20px;
    border-radius: 10px;
}

.grid-item h3 {
    margin-top: 0;
    margin-bottom: 15px;
    color: #fff;
}

.grid-item .bullet-list {
    margin: 0;
}
EOF

# Create script.js with predefined content
cat > script.js << 'EOF'
document.addEventListener('DOMContentLoaded', () => {
    // Include the Navigation module
    Swiper.use([Swiper.Navigation]);

    // Initialize Swiper
    const swiper = new Swiper('.swiper', {
        direction: 'horizontal',
        loop: false,
        keyboard: {
            enabled: true,
        },
        navigation: {
            nextEl: '#nav-right',
            prevEl: '#nav-left',
        },
        on: {
            init: () => {
                updateProgress();
            },
            slideChange: () => {
                updateProgress();
            }
        }
    });

    function updateProgress() {
        const currentSlideEl = document.getElementById('current-slide');
        const totalSlidesEl = document.getElementById('total-slides');
        const progressBar = document.querySelector('.progress-bar');
        
        currentSlideEl.textContent = swiper.activeIndex + 1;
        totalSlidesEl.textContent = swiper.slides.length;
        
        const progress = ((swiper.activeIndex + 1) / swiper.slides.length) * 100;
        progressBar.style.width = `${progress}%`;
    }

    // Keyboard navigation
    document.addEventListener('keydown', (event) => {
        switch(event.key) {
            case "ArrowRight":
                swiper.slideNext();
                break;
            case "ArrowLeft":
                swiper.slidePrev();
                break;
        }
    });
});
EOF

echo "Project files have been created successfully in the '$PROJECT_NAME' directory."

