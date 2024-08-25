<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Our Menu</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('images/background menu.jpg') no-repeat center center fixed; /* Adjust the path if necessary */
            background-size: cover;
            margin: 0;
            padding: 0;
        }
        .header {
            display: flex;
            justify-content: center; /* Center align the button horizontally */
            align-items: center;
            padding: 10px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
            position: fixed;
            width: 100%;
            bottom: 0; /* Position the header at the bottom */
            left: 0;
            z-index: 1000;
        }
        .header a {
            text-decoration: none;
            color: #27ae60;
            font-size: 18px;
            padding: 10px 20px;
            background-color: #fff;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }
        .header a:hover {
            background-color: #27ae60;
            color: #fff;
        }
        .container {
            max-width: 1200px;
            margin: 20px auto; /* Adjust margin to avoid overlap with header */
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            border-radius: 10px;
        }
        h1 {
            text-align: center;
            font-size: 36px;
            margin-bottom: 40px;
            color: #333;
        }
        .menu-tabs {
            display: flex;
            justify-content: center;
            margin-bottom: 30px;
        }
        .menu-tabs button {
            background-color: transparent;
            border: none;
            padding: 10px 20px;
            margin: 0 10px;
            font-size: 18px;
            color: #888;
            cursor: pointer;
            border-bottom: 3px solid transparent;
            transition: border-color 0.3s, color 0.3s;
        }
        .menu-tabs button:hover,
        .menu-tabs button.active {
            color: #27ae60;
            border-color: #27ae60;
        }
        .menu-section {
            display: none;
        }
        .menu-section.active {
            display: block;
        }
        .menu-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 0;
            border-bottom: 1px solid #ddd;
        }
        .menu-item:last-child {
            border-bottom: none;
        }
        .menu-item h3 {
            font-size: 20px;
            color: #333;
            margin: 0;
        }
        .menu-item p {
            margin: 5px 0 0;
            font-size: 14px;
            color: #777;
        }
        .menu-item span {
            font-size: 18px;
            color: #27ae60;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Our Menu</h1>

    <div class="menu-tabs">
        <button class="active" onclick="showMenu('entrees')">Entrees</button>
        <button onclick="showMenu('mains')">Mains</button>
        <button onclick="showMenu('sides')">Sides</button>
        <button onclick="showMenu('desserts')">Desserts</button>
    </div>

    <div id="entrees" class="menu-section active">
        <div class="menu-item">
            <div>
                <h3>Crispy Calamari Rings</h3>
                <p>Lightly battered calamari, lemon juice, served with a spicy aioli dip.</p>
            </div>
            <span>Rs.800.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Bruschetta Trio</h3>
                <p>Tomato-basil, mushroom-garlic, and peach-balsamic on toasted ciabatta.</p>
            </div>
            <span>Rs.600.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Pulled Pork Sliders</h3>
                <p>Smoky pulled pork on mini brioche buns with apple slaw.</p>
            </div>
            <span>Rs.780.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Garlic Parmesan Fries</h3>
                <p>Hand-cut fries tossed with fresh garlic, parmesan, and parsley.</p>
            </div>
            <span>Rs.675.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Chili-Lime Prawn Skewers</h3>
                <p>Grilled succulent prawns marinated in a zesty chili-lime sauce.</p>
            </div>
            <span>Rs.950.00</span>
        </div>
    </div>

    <div id="mains" class="menu-section">
        <div class="menu-item">
            <div>
                <h3>Grilled Chicken Breast</h3>
                <p>Served with steamed vegetables and mashed potatoes.</p>
            </div>
            <span>Rs.900.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Beef Stroganoff</h3>
                <p>Tender beef in a creamy mushroom sauce, served over egg noodles.</p>
            </div>
            <span>Rs.850.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Pan-Seared Salmon</h3>
                <p>Salmon fillet with a lemon-dill sauce, served with quinoa and spinach.</p>
            </div>
            <span>Rs.800.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Vegetable Lasagna</h3>
                <p>Layers of pasta, cheese, and mixed vegetables in a rich tomato sauce.</p>
            </div>
            <span>Rs.700.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>BBQ Ribs</h3>
                <p>Slow-cooked ribs with tangy BBQ sauce, served with coleslaw and fries.</p>
            </div>
            <span>Rs.500.00</span>
        </div>
    </div>

    <div id="sides" class="menu-section">
        <div class="menu-item">
            <div>
                <h3>Seasoned Wedges</h3>
                <p>Golden crispy potato wedges, served with sour cream and sweet chili.</p>
            </div>
            <span>Rs.350.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Garlic Bread</h3>
                <p>Crispy toasted bread with a garlic butter spread.</p>
            </div>
            <span>Rs.400.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>House Salad</h3>
                <p>Mixed greens with cherry tomatoes, cucumbers, and a vinaigrette dressing.</p>
            </div>
            <span>Rs.450.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Onion Rings</h3>
                <p>Golden fried onion rings served with a spicy dipping sauce.</p>
            </div>
            <span>Rs.450.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Sweet Potato Fries</h3>
                <p>Crispy sweet potato fries served with a honey mustard dip.</p>
            </div>
            <span>Rs.550.00</span>
        </div>
    </div>

    <div id="desserts" class="menu-section">
        <div class="menu-item">
            <div>
                <h3>Chocolate Lava Cake</h3>
                <p>Warm chocolate cake with a gooey center, served with vanilla ice cream.</p>
            </div>
            <span>Rs.600.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Cheesecake</h3>
                <p>Rich and creamy cheesecake with a graham cracker crust and strawberry sauce.</p>
            </div>
            <span>Rs.700.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Apple Pie</h3>
                <p>Classic apple pie with a flaky crust, served with a scoop of cinnamon ice cream.</p>
            </div>
            <span>Rs.650.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Lemon Sorbet</h3>
                <p>Refreshing lemon sorbet served with fresh mint leaves.</p>
            </div>
            <span>Rs.550.00</span>
        </div>
        <div class="menu-item">
            <div>
                <h3>Tiramisu</h3>
                <p>Classic Italian dessert with layers of coffee-soaked ladyfingers and mascarpone cream.</p>
            </div>
            <span>Rs.800.00</span>
        </div>
    </div>
</div>

<div class="header">
    <a href="home.html">Home</a>
</div>

<script>
    function showMenu(menuId) {
        var sections = document.querySelectorAll('.menu-section');
        sections.forEach(function(section) {
            section.classList.remove('active');
        });

        var buttons = document.querySelectorAll('.menu-tabs button');
        buttons.forEach(function(button) {
            button.classList.remove('active');
        });

        document.getElementById(menuId).classList.add('active');
        var activeButton = Array.from(buttons).find(button => button.textContent.toLowerCase() === menuId);
        if (activeButton) {
            activeButton.classList.add('active');
        }
    }
</script>

</body>
</html>
