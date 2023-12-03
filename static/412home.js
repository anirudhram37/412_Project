// fetch('http://127.0.0.1:5000/select/product').then((data) => {
//   console.log(data.json());
// });
document.addEventListener("DOMContentLoaded", async function () {
  // const products = [
  //   {
  //     name: "Logitech B100 Wired USB Mouse",
  //     price: 375.0,
  //     description: "A comfortable ambidextrous shape feels good in either hand so you feel more comfortable as you work-even at the end of the day.",
  //     imageUrl: "https://m.media-amazon.com/images/I/31iFF1KbkpL._SX300_SY300_QL70_FMwebp_.jpg",
  //     productLink: "https://www.amazon.in/Logitech-B100-Optical-Mouse-Black/dp/B003L62T7W/ref=sr_1_151?qid=1672903002&s=computers&sr=1-151"
  //   },
  //   {
  //     name: "Logitech M235 Wireless Mouse",
  //     price: 995.0,
  //     description: "You can surf the Web with more comfort and ease—thanks to the contoured design with soft rubber grips. And your mouse is easy to slip into a bag when you want to take it with you.",
  //     imageUrl: "https://m.media-amazon.com/images/I/31CtVvtFt+L._SY300_SX300_.jpg",
  //     productLink: "https://www.amazon.in/Logitech-M235-Wireless-Mouse-Grey/dp/B004IO5BMQ/ref=sr_1_163?qid=1672903002&s=computers&sr=1-163"
  //   },
  //   {
  //     name: "SanDisk Cruzer Blade 32GB USB Flash Drive",
  //     price: 650.0,
  //     description: "Ultra-compact and portable USB flash drive. Capless design.",
  //     imageUrl: "https://m.media-amazon.com/images/I/310mw9KTJvL._SY300_SX300_QL70_FMwebp_.jpg",
  //     productLink: "https://www.amazon.in/SanDisk-Cruzer-Blade-Flash-Drive/dp/B005FYNT3G/ref=sr_1_5?qid=1672902995&s=computers&sr=1-5"
  //   },
  //   {
  //     name: "BlueRigger Digital Optical Audio Toslink Cable (1.8 Meter)",
  //     price: 599.0,
  //     description: "Enables easy installation of audio components to your audio or home theater system.",
  //     imageUrl: "https://m.media-amazon.com/images/I/41CF6GtnpKL._SX300_SY300_QL70_FMwebp_.jpg",
  //     productLink: "https://www.amazon.in/BlueRigger-Digital-Optical-Audio-Toslink/dp/B005LJQMCK/ref=sr_1_167?qid=1672909131&s=electronics&sr=1-167"
  //   },
  //   {
  //     name: "BlueRigger Digital Optical Audio Toslink Cable (6 Feet)",
  //     price: 1999.0,
  //     description: "Enables easy installation of audio components to your audio or home theater system.",
  //     imageUrl: "https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/41CF6GtnpKL._SX300_SY300_QL70_FMwebp_.jpg",
  //     productLink: "https://www.amazon.in/BlueRigger-Digital-Optical-Toslink-Meters/dp/B005LJQMZC/ref=sr_1_209?qid=1672909134&s=electronics&sr=1-209"
  //   },
  //   {
  //     name: "Amazon Basics 16-Gauge Speaker Wire - 50 Feet",
  //     price: 795.0,
  //     description: "50 Feet of 16-gauge speaker wire.",
  //     imageUrl: "https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/41vJcrdr5mL._SY300_SX300_QL70_FMwebp_.jpg",
  //     productLink: "https://www.amazon.in/AmazonBasics-16-Gauge-Speaker-Wire-Feet/dp/B006LW0WDQ/ref=sr_1_263?qid=1672909136&s=electronics&sr=1-263"
  //   },
  //   {
  //     name: "Bajaj ATX 4 750-Watt Pop-up Toaster (White)",
  //     price: 1499.0,
  //     description: "2 slice pop-up toaster.",
  //     imageUrl: "https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/313jBpnrJVL._SX300_SY300_QL70_FMwebp_.jpg",
  //     productLink: "https://www.amazon.in/Bajaj-ATX-750-Watt-Pop-up-Toaster/dp/B0073QGKAS/ref=sr_1_194?qid=1672923600&s=kitchen&sr=1-194"
  //   },
  //   // Add other products here following the same structure
  // ];

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