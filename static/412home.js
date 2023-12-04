document.addEventListener("DOMContentLoaded", async function () {
  
  const data = await fetch('http://127.0.0.1:5000/select/product');
  const products = await data.json();

  const productList = document.getElementById("productList");

  products.forEach(product => {
    const productCard = document.createElement("div");
    productCard.classList.add("product");

    const productImage = document.createElement("img");
    productImage.src = product[4];
    productImage.alt = product[1];
    productCard.appendChild(productImage);

    const productName = document.createElement("h2");
    productName.textContent = product[1];
    productCard.appendChild(productName);

    const productPrice = document.createElement("p");
    productPrice.textContent = `Price: $${product[2]}`;
    productCard.appendChild(productPrice);

    const productDescription = document.createElement("p");
    productDescription.textContent = product[6];
    productCard.appendChild(productDescription);

    const addToCartButton = document.createElement("button");
    addToCartButton.textContent = "Add to Cart";
    addToCartButton.classList.add("add-to-cart-button");
    // Increase the size of the button
    addToCartButton.style.fontSize = "16px"; // Adjust the font size as needed
    addToCartButton.style.padding = "10px 20px"; // Adjust the padding as needed
    // Add event listener to handle the "Add to Cart" button click
    addToCartButton.addEventListener("click", () => addToCart(product));
    productCard.appendChild(addToCartButton);
    // Add a gap between the buttons
    const buttonGap = document.createElement("div");
    buttonGap.style.width = "10px"; // Adjust the gap width as needed
    buttonContainer.appendChild(buttonGap);

    // Add a Review button
    const reviewButton = document.createElement("button");
    reviewButton.textContent = "Write a Review";
    reviewButton.classList.add("review-button");
    // Increase the size of the button
    reviewButton.style.fontSize = "16px"; // Adjust the font size as needed
    reviewButton.style.padding = "10px 20px"; // Adjust the padding as needed
    // Add event listener to handle the "Write a Review" button click
    reviewButton.addEventListener("click", () => writeReview(product));
    buttonContainer.appendChild(reviewButton);    

    const productLink = document.createElement("a");
    productLink.href = product[5];
    productLink.textContent = "View on Amazon";
    productCard.appendChild(productLink);

    productList.appendChild(productCard);
  });

  const data1 = await fetch('http://127.0.0.1:5000/select/product,price?where=product.id = price.product_id AND price.discount_percent != 0&rows=product.id, discount_percent');
  const products1 = await data.json();

  //TODO: Update the prices
  // [["B002SZEOLG", 44], ["B003B00484", 20], ["B003L62T7W", 26], ["B004IO5BMQ", 30], ["B005FYNT3G", 56], ["B005LJQMCK", 31], ["B005LJQMZC", 76], ["B006LW0WDQ", 50], ["B002PD61Y4", 58]]
  // price * (1 - discount/100)

  // Function to handle the "Add to Cart" button click
  function addToCart(product) {
    // Implement your logic to add the product to the cart
    console.log(`Added ${product[1]} to the cart`);
  }
  function writeReview(product) {
    // Implement your logic to allow the user to write a review for the product
    console.log(`Writing a review for ${product.name}`);
}
});