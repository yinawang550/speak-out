<post-editor>

  <div>
  	<input class= "inputbox" type="text" ref="postName" value="" placeholder="Your Name">
  </div>

  <div>
  	<textarea class="textarea" rows="8" ref="postText" placeholder="Type your post"></textarea>

  	<button class="buttonpost" type="button" onclick={ sendPost }>Post</button>
  </div>


<script>
  this.sendPost = function(event){
    var newPost = {
      Name: this.refs.postName.value,
      Post: this.refs.postText.value,
  };
  this.parent.postItem.push(newPost);
  this.parent.update()
  };

</script>
<style>
:scope {
			display: block;
			color: white;
      padding: 10px;
			right: 0;
			bottom: 0;
			width: 300px;
			height: 200px;
      margin-bottom: 40px;

		}

  textarea {
			margin-top: 5px;
		}
</style>


</post-editor>
