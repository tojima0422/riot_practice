<riot-practice-c>
  <div class="ui fluid very padded basic container segment">
    <div class="ui center aligned very padded basic segment">
      <div class="header">
        <button class="ui red basic button" onclick={ shuffle }>Shuffle</button>
        <button class="ui orange basic button" onclick={ sort } id="byNameASC">Sort by Name(ASC)</button>
        <button class="ui purple basic button" onclick={ sort } id="byNameDESC">Sort by Name(DESC)</button>
        <button class="ui teal basic button" onclick={ sort } id="byAgeASC">Sort by Age(ASC)</button>
        <button class="ui yellow basic button" onclick={ sort } id="byAgeDESC">Sort by Age(DESC)</button>
        <button class="ui blue basic button" onclick={ add }>Add Person</button>
        <button class="ui green basic button" onclick={ remove }>Remove Person</button>
      </div>

      <div class="ui link cards" id="hoge">
        <div each={list, index in lists } class="card">
          <div class="image">
            <img if={ list.gender == 'male' }   src="assets/img/male.png">
            <img if={ list.gender == 'female' } src="assets/img/female.png">
          </div>
          <div class="content">
            <div class="header">{ list.name }</div>
            <div class="description">
              { list.age }
            </div>
          </div>
        </div>
      </div>
  <script>
    this.lists = [
      {name: 'Taro',     age: 22, gender: 'male'},
      {name: 'Jiro',     age: 23, gender: 'male'},
      {name: 'Saburo',   age: 19, gender: 'male'},
      {name: 'Hanako',   age: 30, gender: 'female'},
      {name: 'Doraemon', age: 55, gender: 'male'},
      {name: 'Takeshi',  age: 35, gender: 'male'},
      {name: 'Nobita',   age: 49, gender: 'male'},
      {name: 'Shizuka',  age: 62, gender: 'female'},
      {name: 'Suneo',    age: 39, gender: 'male'},
    ]

    shuffle(e) {
      for(var i = this.lists.length - 1; i > 0; i--){
          var r = Math.floor(Math.random() * (i + 1));
          var tmp = this.lists[i];
          this.lists[i] = this.lists[r];
          this.lists[r] = tmp;
      }
    }

    sort(e) {
      switch(e.target.id) {
        case 'byNameASC':
          this.lists.sort(function(a, b) {
            return a.name.localeCompare(b.name)
          })
          break;
        case 'byNameDESC':
          this.lists.sort(function(a, b) {
            return b.name.localeCompare(a.name)
          })
          break;
        case 'byAgeASC':
          this.lists.sort(function(a, b) {
            if( a.age > b.age ) return 1;
            if( a.age < b.age ) return -1;
            return 0;
          })
          break;
        case 'byAgeDESC':
          this.lists.sort(function(a, b) {
              if( a.age > b.age ) return -1;
              if( a.age < b.age ) return 1;
              return 0;
            })
          break;
      }
    }

    add(e) {
      var nameList = [
        {name: 'Korosuke',  age: 10, gender: 'male'},
        {name: 'Kiteretsu', age: 54, gender: 'male'},
        {name: 'Miyochan',  age: 24, gender: 'female'},
        {name: 'Tongari',   age: 73, gender: 'male'},
        {name: 'Butagorira',age: 43, gender: 'male'},
        {name: 'Sakuragi',  age: 18, gender: 'male'},
        {name: 'Rukawa',    age: 40, gender: 'male'},
        {name: 'Haruko',    age: 32, gender: 'female'},
        {name: 'Aya',       age: 37, gender: 'female'},
        {name: 'Akagi',     age: 77, gender: 'male'},
        {name: 'Miyagi',    age: 87, gender: 'male'},
        {name: 'Mitsui',    age: 71, gender: 'male'},
      ]
      this.lists.unshift(nameList[createRandInt(nameList)])
    }

    remove(e) {
      this.lists.splice(createRandInt(this.lists), 1)
    }

    var createRandInt = function(array) {
      return Math.floor( Math.random() * array.length )
    }
  </script>
  <style scoped>
    :scope
    .header {
      margin-bottom: 30px;
    }
    .hoge {
      margin: 0 100px;
    }
  </style>
</riot-practice-c>
