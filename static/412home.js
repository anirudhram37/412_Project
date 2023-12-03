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

    const productLink = document.createElement("a");
    productLink.href = product[5];
    productLink.textContent = "View on Amazon";
    productCard.appendChild(productLink);

    productList.appendChild(productCard);
  });

  // Function to handle the "Add to Cart" button click
  function addToCart(product) {
    // Implement your logic to add the product to the cart
    console.log(`Added ${product[1]} to the cart`);
  }
});