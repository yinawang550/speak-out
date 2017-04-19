<comment-editor>

	<label>Share you thoughts</label>
	<input type="text" class="form-control" ref="comment" placeholder="Enter Post" onfocus={ startTimer }><br>

	<span show={ time < 5 }>YOU BETTER HURRY</span>
	<button class="btn btn-primary" onclick={ saveComment }>Post
		{ time }</button>

	<script>
		var that = this;
		this.time = 10;

			var timer;
			this.startTimer = function(event){
				if (!timer) {
					timer = setInterval(function(){
						that.time--;
						console.log(that.time);

						if (that.time == 0 ) {
							clearInterval(timer);
							that.saveComment();

						}

						that.update();
					}, 1000);
				}
			};


		this.user = firebase.auth().currentUser;

		var database = firebase.database();
		// This reference is important - see database for architecture
		var myCommentsRef = database.ref('comments/users/' + this.user.uid);


		this.saveComment = function(event) {

				var key = myCommentsRef.push().key;
				var comment = {
					id: key, // Save copy of commentID into my object - easier
					userID: this.user.uid, // global Google authenticated user object
					author: this.user.displayName,
					message: this.refs.comment.value,
					public: false,
					createdAt: firebase.database.ServerValue.TIMESTAMP,
					modifiedAt: firebase.database.ServerValue.TIMESTAMP,
					// sender:this.user.displayName,
					// replyMessage: this.refs.myReply.value,
				};
				myCommentsRef.child(key).set(comment).then(function(result){
				  console.log(result);
				}).catch(function(error){
				  console.log(error.message);
				});

			  clearInterval(timer);

				this.reset();

		}

		reset() {
			this.refs.comment.value = "";
			this.time = 10;
			// this.refs.comment.focus();
		}
	</script>

	<style>
		:scope {
			display: block;
			border: 1px solid #DDD;
			border-radius: 4px;
			padding: 15px;
		}
	</style>
</comment-editor>
