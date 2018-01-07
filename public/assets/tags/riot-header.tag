<riot-header>
<!-- html部分 -->
<div class="ui inverted segment">
  <div class="ui inverted secondary pointing menu">
    <!-- eachでループさせることができる -->
    <a each="{val, index in links}" 
       href="{index}"
       class="item {active: this.active == index}"
       onclick="{updateActive.bind(this, index)}" 
    >
      { val }
    </a>
    <div class="right menu">
      <a href="#" onclick="{ updateActive.bind(this, '#') }">
        <img src="/assets/img/riot60x.png" alt="riot">
      </a>
    </div>
  </div>
</div>

<!-- script部分 -->
<script>
  this.active = opts.anc ? opts.anc : '#'
  this.links  = opts.routes
  // 関数の定義
  updateActive(index, e) {
    this.active = index
  }

</script>

<style scoped>
  div {
    border-radius: 0 !important;
  }
</style>

</riot-header>
