<post-list>
Post--
<span>{ Name }</span>:
<span>{ Post }</span>
<p>
<button type="button" name="button" onclick={ ReplyEditor }>Comment</button>
<!-- <strong>LikeButton.tag</strong> -->
</p><p>
<button type="button" onclick={ increaseNumber }>Like</button>

<span> { magicNumber }</span>
</p>
<!-- <second show={ magicNumber < 5 }></second> -->

<post-list each={ postItem }></post-list>
<div class="mail-list">
  <mail-item each={ emailList }></mail-item>
</div>
<mail-editor if={ creatingEmail }></mail-editor>

<script>
  var that = this;

  this.creatingEmail = false;

  this.ReplyEditor = function (event) {
    this.creatingEmail = true;
  };

  this.closeEditor = function (event) {
    that.creatingEmail = false;
    that.update();
  };

  		this.emailList = [
  			{
  				subject: "",
  				body: ""
  			}
  		];
      console.log('first.tag');

  		this.magicNumber = "";

  		this.increaseNumber = function(event){
  		  this.magicNumber++;

  		};

  		this.on('mount', function(event){
  		  console.log('MOUNT first.tag');
  		});

  		this.on('update', function(event){
  		  console.log('UPDATE first.tag');
  		});
</script>

<style >
:scope {
  font-family: 'Aref Ruqaa', serif;
  font-size:15px;
  display: block;
  border: 0.5px solid gray;
  padding: 15px;
  margin: 15px;
  color:teal;
  width: 80%;
}

</style>


</post-list>
