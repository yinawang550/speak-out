<app>
	<h1> Post What You Want to Say</h1>

	<div>
		<input class= "inputbox" type="text" value="" placeholder="Your Name" onchange={ updateTextB } ref="textB">
	</div>
	<br>
  <div>
    <textarea rows="5" placeholder="Your post" onkeyup={updatePostC}></textarea>
	</div>

<p>
	  Name: { TextB }

</P>
<p>
	  Say: { PostC }
</p>


	<div>
		<button type="button" onclick={ toggleButtonA}>Do you like this experience?</button>
		<br>
	<p>
		I { buttonA ? "like :)" : "dislike :("} it!
	</p>
</div>



<script>
    this.buttonA =false;
		this.TextB = "";
		this.PostC = "";

		this.toggleButtonA = function(event){
			this.buttonA=!this.buttonA;
		};
		this.updateTextB = function(event){
        this.TextB = this.refs.textB.value;
		}
		this.updatePostC = function(event){
			   this.PostC = event.target.value;
		}

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
		}
	</style>
</app>
