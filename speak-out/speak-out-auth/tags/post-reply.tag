<post-reply>

	<label>Post reply</label>
	<input type="text" class="form-control" ref="reply" placeholder="Enter reply">
	<br>
	<button class="btn btn-primary" onclick={ postReply }>Reply</button>
	<!-- <div class="comment" each={ myReply }> -->

	<script>
		var that = this;

		this.myReply = [];
		var database = firebase.database();
		var myReplyRef = database.ref('reply');

		myReplyRef.on('value', function (snapshot) {
			var data = snapshot.val();

			var replys = [];
			for (var key in data) {
				replys.push(data[key]);
			}
			that.myReply = replys;
			this.parent.update();
			console.log(that);

		});

		postReply(event) {
			var newTask = {};
			if (event.type === "click") {
				newTask.task = this.refs.reply.value;
				// this.myReply.push(newTask); if (!this.parent.publicComments) { 	this.parent.publicComments = []; } this.parent.publicComments.push(newTask); console.log(this.parent);

				var key = myReplyRef.push().key;

				console.log(newkey);
				// myReplyRef.child(newKey).set(newTask);

				database.ref('reply/' + newkey).set(newTask);

				this.refs.reply.value = "";
			}
		}

				// var reply = {
				// 	id: key,
				// 	userID: this.user.uid,
				// 	author: this.user.displayName,
				// 	message: this.refs.reply.value,
				// 	public: true,
				// 	createdAt: firebase.database.ServerValue.TIMESTAMP,
				// 	modifiedAt: firebase.database.ServerValue.TIMESTAMP 		};
				//
				// 		myReplyRef.child(key).set(comment).then(function(result){ 			console.log(result);
				// }).catch(function(error){ 			console.log(error.message); 		}); 		this.parent.update();



		//
		// } this.user = firebase.auth().currentUser;
		//
		// var database = firebase.database(); // database for architecture var myReplyRef = database.ref('reply/users/' + this.user.uid); this.myReply = []; postReply(event) { 	var newTask = {}; 	if (event.type === "click") { 		newTask.task =
		// this.refs.comment.value; 		console.log('xxx', this.refs.comment); 		this.myReply.push(newTask); 	} } this.postReply = function(event) { 	console.log("postReply"); 	if (event.type === "click") { 		newTask.task = event.target.value;
		// 					this.myReply.push(newTask); 				}

		//

		reset() {
			this.refs.reply.value = "";
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
</post-reply>
