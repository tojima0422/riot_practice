<riot-header>
<!-- html部分 -->
<div class="ui inverted segment">
  <div class="ui inverted secondary pointing menu">
    <!-- eachでループさせることができる -->
    <a each="{val, index in links}" 
       href="{index}"
       class="item {active: checkActive(index)} "
       onclick="{updateActive.bind(this, index)}" 
    >
      { val }
    </a>
    <div class="right menu">
      <a href="#">
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
  checkActive(index) {
    if(this.active == index) {
      return true
    }
    else {
      return false
    }
  }
  updateActive(index, e) {
    this.active = index
  }

</script>

<style scoped>
  :scope
  div {
    border-radius: 0 !important;
  }
</style>

</riot-header>
