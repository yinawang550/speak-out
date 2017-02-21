<app-post>
	<h1>Speak-Out</h1>
	<h2> Post What You Want to Say</h2>

	<h3>Your post</h3>

<post-list each={ postItem }></post-list>

<post-editor></post-editor>


	<div>
		<button type="button" onclick={ toggleButtonA }>Do you like the posting experience?</button>
		<br>
	<p>
		I { buttonA ? "like :)" : "dislike :("} it!
	</p>
</div>


<!-- scripts start from here -->
<script>

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

<!-- riot.mount('post-list'); -->

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
