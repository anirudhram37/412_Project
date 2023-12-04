document.addEventListener("DOMContentLoaded", async () => {    

    const data1 = await fetch('http://127.0.0.1:5000/select/supplier');
    const products = await data1.json();

    const supplierContainer = document.getElementById("supplier-container");

    // Function to display suppliers
    function displaySuppliers() {
        products.forEach(product => {
            products.forEach(product => {
                const productId = product[0];
                const supplierId = product[1];
                const productName = product[2];
                const country = product[3];
                const supplier = product[4];
            
                const supplierContainer = document.createElement("div");
                supplierContainer.classList.add("product");
            
                const productNameElement = document.createElement("h2");
                productNameElement.textContent = productName;
                supplierContainer.appendChild(productNameElement);
            
                const supplierInfo = document.createElement("p");
                supplierInfo.textContent = `Supplier: ${supplier} (ID: ${supplierId})`;
                supplierContainer.appendChild(supplierInfo);
            
                const countryInfo = document.createElement("p");
                countryInfo.textContent = `Country: ${country}`;
                supplierContainer.appendChild(countryInfo);
            
                document.body.appendChild(supplierContainer);
            });
            
        });
    }

    // Call the function to display suppliers
    displaySuppliers();
});