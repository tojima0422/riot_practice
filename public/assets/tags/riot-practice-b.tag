<riot-practice-b>
  <div class="ui fluid very padded basic container segment">
    <div class="ui center aligned very padded basic segment">
      <div class="item margin">
        <div class="header">
          税込価格
        </div>
        <div class="ui labeled input">
          <label for="amount" class="ui label">¥</label>
          <input type="text"
                 placeholder="Include Tax"
                 id="amount"
                 value={includeTax}
                 onkeyup={change} >
        </div>
      </div>
      <div class="item">
        <div class="header">
          税抜き価格
        </div>
        <div class="ui labeled input">
          <label for="notInclude" class="ui label">¥</label>
          <input type="text"
                 placeholder="Not Include Tax"
                 id="notInclude"
                 value={ notIncludeTax }
                 onkeyup={change} >
        </div>
      </div>
    </div>
  </div>

<script>
  this.notIncludeTax = Math.round(opts.price)
  this.includeTax    = Math.round(this.notIncludeTax * 1.08)

  change(e) {
    if(e.target.value.match(/^[0-9]+$/)) {
      if(e.target.id == 'amount') {
        this.includeTax    = Math.round(e.target.value)
        this.notIncludeTax = Math.round(this.includeTax / 1.08)
      }
      else {
        this.notIncludeTax = Math.round(e.target.value)
        this.includeTax    = Math.round(this.notIncludeTax * 1.08)
      }
    } 
  }
</script>

<style scoped>
  :scope
  .margin {
    margin-top: 20px;
    margin-bottom: 20px;
  }
</style>
</riot-practice-b>
