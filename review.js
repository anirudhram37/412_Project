document.addEventListener("DOMContentLoaded", function () {
    // Sample product and reviews data
    const products = [
        {
            productId: 'B002PD61Y4',
            productName: 'D-Link WiFi Adapter'
        },
        {
            productId: 'B002SZEOLG',
            productName: 'Logitech B100 Wired USB Mouse'
        },
        {
            productId: 'B003B00484',
            productName: 'Duracell AAA Batteries'
        },
        {
            productId: 'B003L62T7W',
            productName: 'Handy Mouse'
        },
        {
            productId: 'B004IO5BMQ',
            productName: 'Silent Mouse'
        },
        {
            productId: 'B005FYNT3G',
            productName: 'USB Flash Drive'
        },
        {
            productId: 'B005LJQMCK',
            productName: 'Digital Optical Audio Toslink Cable (1.8 Meter)'
        },
        {
            productId: 'B005LJQMZC',
            productName: 'Digital Optical Audio Toslink Cable (6 Feet)'
        },
        {
            productId: 'B006LW0WDQ',
            productName: 'Amazon Basics 16-Gauge Speaker Wire - 50 Feet'
        },
        {
            productId: 'B0073QGKAS',
            productName: 'Bajaj ATX 4 750-Watt Pop-up Toaster (White)'
        }
        // Add more products as needed
    ];

    const reviewsData = [
        {
            reviewId: 'R2EJIN3N3L3XKIR2JMJ8QNG66LV4R3B46JNPC2T4E7R3HHJCTEJ7J9CSR2LOAPI3SK4RCXR1MLGZDQDKIVIFR10KVN4LSVD459R3BO9D050WHWVX',
            reviewText: 'Good tool to use for surveillance camera. Brand is always good. Overall good and a better experience. It is useful to me. Works well with CP Plus DVR. Good. It\'s not plug and play; you need to install the driver and will support till 2.4 GHz, not above that.',
            rating: 1,
            productId: 'B002PD61Y4'
        },
        {
            reviewId: 'R1LW6NWSVTVZ2HR3VR5WFKUS15C5R2F6GC79OYWUKQR3QZ19MECGWG9AR2MPU42MYK7GPOR33DVXFB4VYPZZR1SQ7OGFR4JRURR1S5F9QI0M1VBZ',
            reviewText: 'Works on Linux for me. Get the model with an antenna. Does what it says but other brands available at a lesser price. Easy to handle. Great product. Perfect working. Speed is perfect. Great design, build, connectivity range, packaging, and other features but no Linux support since v2. Very good. I use this to connect an old PC to the internet. I tried lubuntu 20 and ubuntu 22; it worked out of the box in both. Didn\'t have to do any setup.',
            rating: 2,
            productId: 'B002SZEOLG'
        },
        {
            reviewId: 'R5L3FAFS6JXJFR1VTQ25LXQX5UDR6RJYAZUM5240R1S8HH7X7WWELDR3VAP7JD6S5Q9BR2RJV9PK2QMAQJR2JSE9NKI4XHKFR1LUV2WJODYVJ2',
            reviewText: 'Works good. Perfect replacement cell for trimmer. Wow, as they said in the ad, worth it. A good product. Fit for Phillips trimmer. Good. Good product. Bought it to replace my Phillips QT4005 trimmer\'s 7yr old battery cell. Old trimmer battery lost its torque, would not start without smacking it on the hand. Soldering the connections was a bit tricky, but I got it done by sanding both side surfaces of the new battery cell. The new Duracell one does its job; trimmer works now like it\'s supposed to. It lasts more than 30+ minutes easily. Charges like it\'s supposed to. I am satisfied with it. Saved an electronic device from being obsolete. If you want more performance, maybe get a 900mah cell, but for me, that\'s expensive; 750mah is enough. Long-term performance is to be seen. Used for my Philips trimmer. Gives a backup of more than 4-5 days. Really amazing performance. I did not expect this much good and long performance. I am using a different company charger; still, these batteries fit well and work for months. Good performance at a good price. Charging is good, and the battery is lasting longer after one charge.',
            rating: 3,
            productId: 'B003B00484'
        },
        {
            reviewId: 'R3U9FRV2Q625DOR3EJZ83W9OHW3DRSH53O0JL66NLR3BMZS3M7NRJ6HR1KGMYE82EPYDORG1M1ENVZBFAPR1WFXJNNGSCEPVR1NAE9JMVSXVA1',
            reviewText: 'Handy Mouse. Good quality mouse. Good one. Good cheap reliable. Good quality mouse. Very comfortable. Quality + Less Price Makes it Best to buy. Liked this Product. Purchased for a laptop. Perfectly working. Good. Very good mouse for a budget setup. Useful. ... good quality. The good thing about this mouse is that u can remove the scrolling clip attached inside the scrolling wheel and the wheel becomes very smooth to scroll. The Best of this mouse is its quality as per description its totally worth it best for professional usage if searching for gaming also suitable but dont have dpi options so for advance gaming you can search something else maybe logitech g102 best mouse (with dpi options) else go with this.',
            rating: 4,
            productId: 'B003L62T7W'
        },
        {
            reviewId: 'R28ZB0YUM6FKKBRNB44LXBJIPTLRVSWATRY0CJIVR3IJ7R6T1XNRDWRDC2ZTQAO2XXCR1RFN16MM6BMUMR2O8DIRX6ME9HQR50QNWM2SDL2V',
            reviewText: 'Good silent mouse. Too small to hold! Reviewing after 8 months with battery backup review. It\'s very small; do take note of that. Nice product. Good product. Good buy for normal use in the office. Stylish mouse. It\'s a little small for big hands. But best available in the market. Good product but too smaller than the regular one! Hello everyone. I bought this Mouse in April 2022, so after 8 months of use, I\'m writing this review. Battery (the most important one): 10/10 - It came with a single AA-sized battery (Clock battery) that worked from 1st April - 10th December, which is more than 8 months. Even though my usage was heavy (6 hours average per day) in a corporate job day of 9 hours. Look 7/10 - Amazing with beautiful curves. Though the battery closing pane could have been better. USB transmitter: 9/10 - It\'s normal and can be carried inside the battery cavity. Switch: 5/10 - On/OFF switch is not handy; you need a long nail to switch it ON/off but is strong enough to resist a hard stroke when you force it to off with your nailless fingers. Precision and laser: 10/10: Precision is just what most mouses have which is accurate and the Laser is invisible (No annoying light in the bottom). Buttons: 7/10 - Buttons produce a slight noise on click and after a long usage the Left button is shaking slightly. Overall ratings: 9/10. The main reason for you to buy this: Its battery efficiency it will cost you only 12 INR for 8 months. It\'s very small and it\'s trouble for my hand which is considerably smaller than other people it do fit nicely in 10 year old nephew but now mine but no complaints works great from far distance so it\'s good there it should be sold for 400/ only it\'s slightly overpriced. Nice mouse. Easy to hold. Working very smooth and fast response time is very good. Good durable product. It\'s a great mouse under this price for normal office use; it would have been much better if it had silent clicks!!!!! Working well so far.',
            rating: 5,
            productId: 'B004IO5BMQ'
        },
        {
            reviewId: 'R2XCI5KR2H8QEIR3BNQCB05PYZMVRVXXO15AGASNXR1VU19BJMXT73JR2LYRK8OS10K2ZR1NOP9O1UWSJJCRE6XTKYH9FSAR1J5H4FDTO6GBX',
            reviewText: 'Good product. Affordable. Good reading speed is only under 22mb/s. Good product 👍 good. Good product and value for money. All about it is a very good product at a suitable price.',
            rating: 6,
            productId: 'B005FYNT3G'
        },
        {
            reviewId: 'tempKey',
            reviewText: 'Value for Money. A good upgrade from the stock cable. GOOD CABLE. Value for the money. Great buy. Overall good. Awesome experience. Worked as expected.',
            rating: 7,
            productId: 'B005LJQMCK'
        },
        {
            reviewId: 'R25CCWBNTJMZVER1NKFA299UAXBRR3FYCFR2T0C040R21EIT3GVFN61AR17JA5KOPU083URCMJ655HJBITTRBZWY4WBYKKI1R29ETP784D2XVE',
            reviewText: 'Value for Money. A good upgrade from the stock cable. GOOD CABLE. Value for the money. Great buy. Overall good. Awesome experience. Worked as expected.',
            rating: 8,
            productId: 'B005LJQMZC'
        },
        {
            reviewId: 'R10L0LUK0SEJPLR2EGC3B1JJ6BTSR35W8V6ZATZ2SRPN411MPADDQDRE3HSY12L9YBGR2UXIGD46L4151R1LJNC0Q9BR7UWR2Z93X38SWW7IL',
            reviewText: 'Good. Good Quality. Amazing. Wire cost. Quality and performance are excellent. Really Impressive. Good and cheap! GOOD ONE.',
            rating: 9,
            productId: 'B006LW0WDQ'
        },
        {
            reviewId: 'R1HBS1IAS9P3EKR3B3INPXIQLFGOR3U26KEWXGCBX2R2MHLMK5VBQRDR35MGIOUQQHXWKRO3LTHQ4OZR1FR35ZZ86LVZLBDCR3KVONT5CWWQ1V',
            reviewText: 'Value to buy. Best quality.',
            rating: 10,
            productId: 'B0073QGKAS'
        }
        // Add more reviews as needed
    ];

    const reviewsContainer = document.getElementById("reviews-container");

    // Function to display reviews
    function displayReviews() {
        products.forEach(product => {
            // Display product name
            const productNameElement = document.createElement("h2");
            productNameElement.textContent = product.productName;
            reviewsContainer.appendChild(productNameElement);

            // Display reviews for the product
            const productReviews = reviewsData.filter(review => review.productId === product.productId);
            productReviews.forEach(review => {
                const reviewElement = document.createElement("div");
                reviewElement.classList.add("review");

                const ratingElement = document.createElement("p");
                ratingElement.classList.add("rating");
                ratingElement.textContent = `Rating: ${review.rating}`;
                reviewElement.appendChild(ratingElement);

                const reviewTextElement = document.createElement("p");
                reviewTextElement.textContent = review.reviewText;
                reviewElement.appendChild(reviewTextElement);

                reviewsContainer.appendChild(reviewElement);
            });
        });
    }

    // Call the function to display reviews
    displayReviews();
});
