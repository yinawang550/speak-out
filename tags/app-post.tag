<app-post>
	<h1>Speak-Out</h1>
	<h2> Post What You Want to Say</h2>

	<h3>Your post</h3>

<post-list each={ postItem }></post-list>

<!-- post-editor></post-editor -->

<div>
	<input class= "inputbox" type="text" ref="postName" value="" placeholder="Your Name">
</div>

<div>
	<textarea class="textarea" rows="8" ref="postText" placeholder="Type your post"></textarea>

	<button class="buttonpost" type="button" onclick={ sendPost }>Post</button>
</div>

</div>

	<div>
		<button type="button" onclick={ toggleButtonA }>Do you like the posting experience?</button>
		<br>
	<p>
		I { buttonA ? "like :)" : "dislike :("} it!
	</p>
</div>


<!-- scripts start from here -->
<script>
	this.sendPost = function(event){
	  var newPost = {
	    Name: this.refs.postName.value,
	    Post: this.refs.postText.value,
	}
	this.postItem.push(newPost);
	this.update();
	};

this.postItem = [{
	Name:"Abby",
	Post:"I think..."
	},
	{
	Name:"Bob",
	Post:"I agree with..."
	}
	];


this.buttonA =false;

		this.toggleButtonA = function(event){
			this.buttonA=!this.buttonA;
		};

</script>

	<style>
		:scope {
			color: blue;
			font-family: Helvetica;
		}
		.inputbox {
		  display: inline-block;
		  border: 1px solid silver;
		  background-color: #F5F5F5;
		  padding: 10px;
			margin-top: 40px;
		}
		.textarea{
		  margin-top: 20px;

		  width: 200px;
		}
		.buttonpost{
		  position: right;
		  margin-bottom: 40px;
		}

	</style>
</app-post>
