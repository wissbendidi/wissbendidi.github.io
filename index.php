<?php
session_start();

if (isset($_GET['lang'])) {
    $lang = $_GET['lang'];
    $_SESSION['lang'] = $lang;
} elseif (isset($_SESSION['lang'])) {
    $lang = $_SESSION['lang'];
} else {
    $lang = 'fr'; // Langue par défaut
}

$content = file_get_contents("content_$lang.json");
$content_data = json_decode($content, true);
?>
<!DOCTYPE html>
<html lang="<?php echo $lang; ?>">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mon Site Multilingue</title>
    <link rel="alternate" href="index.php?lang=en" hreflang="en"/>
    <link rel="alternate" href="index.php?lang=fr" hreflang="fr"/>
    <link rel="alternate" href="index.php?lang=ar" hreflang="ar"/>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <div class="language-switcher">
            <a href="?lang=fr">FR</a>
            <a href="?lang=en">EN</a>
            <a href="?lang=ar">OTHER</a>
        </div>
        <h1 itemprop="name">Bienvenue sur mon site multilingue</h1>
    </header>
    <main>
        <div itemscope itemtype="http://schema.org/WebPage">
            <h2 itemprop="headline"><?php echo $content_data['headline']; ?></h2>
            <p itemprop="text"><?php echo $content_data['text']; ?></p>
        </div>
        <div class="video-section">
            <h2>Vidéo Multilingue</h2>
            <video controls>
                <source src="video_fr.mp4" type="video/mp4" hreflang="fr">
                <source src="video_en.mp4" type="video/mp4" hreflang="en">
                <source src="video_ar.mp4" type="video/mp4" hreflang="ar">
            </video>
        </div>
    </main>
    <footer>
        <p>&copy; 2024 Mon Site Multilingue</p>
    </footer>
</body>
</html>
