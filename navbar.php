<?php
// File: navbar.php

// Include file config.php
include('config.php');

// Function to fetch menu items by parent_id
function fetchMenuItems($parent_id = null) {
    global $conn;

    $sql = "SELECT * FROM menu_items WHERE parent_id " . ($parent_id === null ? "IS NULL" : "= $parent_id");
    $result = $conn->query($sql);

    $menuItems = array();

    if ($result) {
        while ($row = $result->fetch_assoc()) {
            $menuItems[] = $row;
        }
    } else {
        echo "Error: " . $conn->error;
    }

    return $menuItems;
}

?>

<!-- Use the function to fetch top-level menu items -->
<div class="nav">
    <ul id="dd" class="dd">
        <?php
        $topMenuItems = fetchMenuItems();
        foreach ($topMenuItems as $menuItem) {
            echo '<li id="menu-item-' . $menuItem['id'] . '" class="menu-item">';
            echo '<a href="' . $menuItem['url'] . '">' . $menuItem['title'] . '</a>';

            // Fetch and display sub-menu items if available
            $subMenuItems = fetchMenuItems($menuItem['id']);
            if (!empty($subMenuItems)) {
                echo '<ul class="sub-menu">';
                foreach ($subMenuItems as $subMenuItem) {
                    echo '<li id="menu-item-' . $subMenuItem['id'] . '" class="menu-item">';
                    echo '<a href="' . $subMenuItem['url'] . '">' . $subMenuItem['title'] . '</a>';
                    echo '</li>';
                }
                echo '</ul>';
            }

            echo '</li>';
        }   
        ?>
    </ul>
</div>

<script>
// JavaScript to toggle display of sub-menus with smooth animation
document.addEventListener("DOMContentLoaded", function() {
    var menuItems = document.querySelectorAll('.menu-item');

    menuItems.forEach(function(item) {
        var subMenu = item.querySelector('.sub-menu');
        if (subMenu) {
            item.addEventListener('mouseover', function() {
                subMenu.style.maxHeight = subMenu.scrollHeight + "px";
            });

            item.addEventListener('mouseout', function() {
                subMenu.style.maxHeight = null;
            });
        }
    });
});
</script>
