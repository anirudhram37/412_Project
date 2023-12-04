document.addEventListener("DOMContentLoaded", async () => {    

    const data1 = await fetch('http://127.0.0.1:5000/select/reviews,product?where=product.id = reviews.product_id');
    const products = await data1.json();

    const reviewsContainer = document.getElementById("reviews-container");

    // Function to display reviews
    function displayReviews() {
        products.forEach(product => {
            // Display product name
            const name = product[6];
            const rating = product[13];
            const reviewTitle = product[1].split('.');
            const reviewContent = product[2].split('.');
            const reviews = reviewTitle.map((e, i) => [e, reviewContent[i]]);
            const reviewsFinal = reviews.map(item => "<b>" + item[0] + "</b> : " + item[1]).join('<br/>');
            console.log(name, reviewsFinal)
            const productNameElement = document.createElement("h2");
            productNameElement.textContent = name;
            reviewsContainer.appendChild(productNameElement);

            const reviewElement = document.createElement("div");
            reviewElement.classList.add("review");

            const ratingElement = document.createElement("p");
            ratingElement.classList.add("rating");
            ratingElement.textContent = `Rating: ${rating.toFixed(2)}`;
            reviewElement.appendChild(ratingElement);

            const reviewTextElement = document.createElement("p");
            reviewTextElement.innerHTML = reviewsFinal;
            reviewElement.appendChild(reviewTextElement);

            reviewsContainer.appendChild(reviewElement);
        });
    }

    // Call the function to display reviews
    displayReviews();
});
