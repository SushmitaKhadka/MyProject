
Sure! Below is an example of a web-based e-commerce system implemented in HTML, CSS, and JavaScript. This example includes shopping cart checkout operations and a simple search operation for product catalogs.

html
Copy code
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>E-commerce System</title>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    .product {
        border: 1px solid #ccc;
        padding: 10px;
        margin: 10px;
        display: inline-block;
    }
    .cart {
        border: 1px solid #333;
        padding: 10px;
        margin-top: 20px;
    }
</style>
</head>
<body>
    <h1>Product Catalog</h1>
    <input type="text" id="searchInput" placeholder="Search products">
    <button onclick="searchProducts()">Search</button>
    <div id="products">
        <div class="product" id="product1">
            <h3>Laptop</h3>
            <p>Price: $800</p>
            <button onclick="addToCart('Laptop', 800)">Add to Cart</button>
        </div>
        <div class="product" id="product2">
            <h3>Headphones</h3>
            <p>Price: $50</p>
            <button onclick="addToCart('Headphones', 50)">Add to Cart</button>
        </div>
        <div class="product" id="product3">
            <h3>Mouse</h3>
            <p>Price: $20</p>
            <button onclick="addToCart('Mouse', 20)">Add to Cart</button>
        </div>
    </div>

    <h1>Shopping Cart</h1>
    <div class="cart" id="cart">
        <h3>Items in Cart:</h3>
    </div>
    <div class="cart" id="total">
        <h3>Total: $0</h3>
    </div>

    <script>
        const cart = [];
        let total = 0;

        function addToCart(productName, price) {
            cart.push({ productName, price });
            total += price;
            updateCartDisplay();
        }

        function updateCartDisplay() {
            const cartDiv = document.getElementById("cart");
            const totalDiv = document.getElementById("total");

            cartDiv.innerHTML = "<h3>Items in Cart:</h3>";
            cart.forEach(item => {
                cartDiv.innerHTML += `<p>${item.productName} - Price: $${item.price}</p>`;
            });

            totalDiv.innerHTML = `<h3>Total: $${total}</h3>`;
        }

        function searchProducts() {
            const searchInput = document.getElementById("searchInput").value.toLowerCase();
            const products = document.querySelectorAll(".product");

            products.forEach(product => {
                const productName = product.querySelector("h3").textContent.toLowerCase();
                if (productName.includes(searchInput)) {
                    product.style.display = "block";
                } else {
                    product.style.display = "none";
                }
            });
        }
    </script>
</body>
</html>