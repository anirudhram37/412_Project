document.addEventListener("DOMContentLoaded", async () => {    

    // Fetch data from the new endpoint
    const data = await fetch('http://127.0.0.1:5000/select/order_info,product?where=product.id = order_info.product_id');
    const orders = await data.json();

    // Function to display order information
    function displayOrders() {
        orders.forEach(order => {
            const orderId = order[0];
            const productId = order[1];
            const address = order[2];
            const cardno = order[3];
            const name = order[4];

            const orderContainer = document.createElement("div");
            orderContainer.classList.add("order");

            const orderIdElement = document.createElement("h2");
            orderIdElement.textContent = `Order ID: ${orderId}`;
            orderContainer.appendChild(orderIdElement);

            const productImage = document.createElement("img");
            productImage.src = order[11];
            orderContainer.appendChild(productImage);

            const productInfo = document.createElement("p");
            productInfo.textContent = `Product ID: ${productId}, Address: ${address}`;
            orderContainer.appendChild(productInfo);

            const totalPriceInfo = document.createElement("p");
            totalPriceInfo.textContent = `Payment Card: ${cardno}`;
            orderContainer.appendChild(totalPriceInfo);

            const orderDateInfo = document.createElement("p");
            orderDateInfo.textContent = `User Name: ${name}`;
            orderContainer.appendChild(orderDateInfo);

            document.body.appendChild(orderContainer);
        });
    }

    // Call the function to display order information
    displayOrders();
});
