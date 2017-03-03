<app-post>
	<h1>Speak-Out</h1>
	<h2>Post What You Want to Say</h2>

	<h3>Your post</h3>

	<post-list each={ postItem }></post-list>
	<!-- <div class="mail-list">
		<mail-item each={ emailList }></mail-item>
	</div> -->
	<post-editor></post-editor>
	<mail-editor if={ creatingEmail }></mail-editor>
  <mail-item each={ emailList }></mail-item>
	<timer start="120"></timer>

	<div>
		<button type="button" onclick={ toggleButtonA }>Do you like the posting experience?</button>
		<br>
		<p>
			I { buttonA ? "like :)" : "dislike :("} it!
		</p>
	</div>

	<!-- scripts start from here -->
	<script>

		this.postItem = [
			{
				Name: "Abby",
				Post: "I think..."
			}
		];

		this.buttonA = false;

		this.toggleButtonA = function (event) {
			this.buttonA = !this.buttonA;
		};
	</script>

	<style>
		:scope {
			color: blue;
			font-family: Helvetica;
		}


	</style>
</app-post>
