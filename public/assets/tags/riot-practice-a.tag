<riot-practice-a>
  <div class="ui fluid very padded basic container segment">
    <div class="ui center aligned very padded basic segment">
      <h2>{ opts.title }</h2>
      <div class="ui relaxed divided list">
        <div each={items.filter(whatShow)}
             class="item">
          <div class="content">
            <div class="ui checkbox">
              <input type="checkbox" id={id} checked={ done } onclick={ parent.toggle }>
              <label class={ completed: done } for={id}>
                { title }
              </label>
            </div>
          </div>
        </div>

        <form onsubmit={ add }>
          <div class="ui input">
            <input ref="input" onkeyup={ edit } placeholder="Input new Todo">
          </div>
          <button disabled={ !text } class="ui button">Add #{ items.filter(whatShow).length + 1 }</button>
          <button type="button" disabled={ items.filter(onlyDone).length == 0 } onclick={ removeAllDone } class="ui primary button">
          Remove x { items.filter(onlyDone).length }</button>
        </form>

    </div>
  </div>

<script>
  this.items = opts.items
  this.text  = ''
  this.addId = this.items.length + 1

  // 関数の定義
  whatShow(item) {
    return !item.hidden
  }
  onlyDone(item) {
    return item.done
  }
  toggle(e) {
    var item  = e.item
    item.done = !item.done
    return true
  }
  edit(e) {
    this.text = e.target.value
  }
  add(e) {
    if(this.text) {
      this.items.push({id: this.addId, title: this.text})
      this.addId++
      this.text = this.refs.input.value = ''
    }
    e.preventDefault()
  }
  removeAllDone(e) {
    this.items = this.items.filter(function(item) {
      return !item.done
    })
  }
</script>

<style scoped>
  :scope
  .completed {
    text-decoration: line-through;
    color: #ccc;
  }
</style>
</riot-practice-a>
