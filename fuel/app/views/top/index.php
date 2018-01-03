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
  <script src="https://cdn.jsdelivr.net/riot-route/3.0.2/route.min.js"></script>
</head>
<body>
<!-- header -->
<header data-is="riot-header"></header>

<!-- main contents -->
<contents></contents>

<!-- riotタグの読み込み -->
<script src="/assets/tags/riot-header.tag" type="riot/tag"></script>
<script src="/assets/tags/riot-home.tag" type="riot/tag"></script>
<script src="/assets/tags/riot-practice-a.tag" type="riot/tag"></script>
<script src="/assets/tags/riot-practice-b.tag" type="riot/tag"></script>
<script src="/assets/tags/riot-practice-c.tag" type="riot/tag"></script>

<!-- マウント -->
<script>
  var anc = location.hash
  riot.mount('riot-header', {
    routes: <?php echo json_encode($routes, JSON_HEX_TAG | JSON_HEX_AMP | JSON_HEX_APOS | JSON_HEX_QUOT); ?>,
    anc: anc
  })

  // home
  route('/', function() {
    riot.mount('contents','riot-home')
  });
  // route1
  route('/practice_a', function() {
    riot.mount('contents','riot-practice-a')
  });
  // route2
  route('/practice_b', function() {
    riot.mount('contents','riot-practice-b')
  });
  // route3
  route('/practice_c', function() {
    riot.mount('contents','riot-practice-c')
  });
  route.start(true)

</script>

</body>
</html>
