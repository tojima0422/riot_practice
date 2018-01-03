<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title><?php echo $title; ?></title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/1.11.8/semantic.min.css"/>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/1.11.8/semantic.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/riot/3.8.1/riot+compiler.min.js"></script>
</head>
<body>

<!-- header -->
<header data-is="riot-header" routes="<?php echo $routes ?>"></header>

<!-- main contents -->
<contents></contents>

<!-- riotタグの読み込み -->
<script src="/assets/tags/riot-header.tag" type="riot/tag"></script>
<script src="/assets/tags/riot-home.tag" type="riot/tag"></script>

<!-- マウント -->
<script>
  riot.mount('riot-header')
  riot.mount('contents', 'riot-home')
</script>

</body>
</html>
