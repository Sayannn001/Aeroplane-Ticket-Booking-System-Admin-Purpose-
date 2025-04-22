<?php
include 'includes/auth.php';
include 'includes/db.php';

$id = $_GET['id'] ?? null;
if (!$id) {
    echo "Invalid flight ID.";
    exit();
}

// Step 1: Delete passengers linked to bookings of this flight
$stmt1 = $conn->prepare("DELETE p FROM passengers p INNER JOIN bookings b ON p.booking_id = b.id WHERE b.flight_id = ?");
$stmt1->bind_param("i", $id);
$stmt1->execute();

// Step 2: Delete bookings for this flight
$stmt2 = $conn->prepare("DELETE FROM bookings WHERE flight_id = ?");
$stmt2->bind_param("i", $id);
$stmt2->execute();

// Step 3: Delete the flight
$stmt3 = $conn->prepare("DELETE FROM flights WHERE id = ?");
$stmt3->bind_param("i", $id);
if ($stmt3->execute()) {
    header("Location: view-flights.php");
    exit();
} else {
    echo "Failed to delete flight.";
}
?>

