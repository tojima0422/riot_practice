<riot-header>
<!-- html部分 -->
<div class="ui inverted segment">
  <div class="ui inverted secondary pointing menu">
    <!-- eachでループさせることができる -->
    <a each="{val, index in links}" 
       class="item {active: checkActive(index)} "
       onclick="{updateActiveNum.bind(this, index)}" 
    >
      { val }
    </a>
    <div class="right menu">
      <img src="/assets/img/riot60x.png" alt="riot">
    </div>
  </div>
</div>

<!-- script部分 -->
<script>
  this.links = JSON.parse(opts.routes)
  this.activeNum = 0
  // 関数の定義
  checkActive(index) {
    if(this.activeNum == index) {
      return true
    }
    else {
      return false
    }
  }
  updateActiveNum(index, e) {
    this.activeNum = index
  }

</script>

<style scoped>
  :scope
  div {
    border-radius: 0 !important;
  }
</style>

</riot-header>
