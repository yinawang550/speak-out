<post-reply>

	<label>Post reply</label>
	<input type="text" class="form-control" ref="reply" placeholder="Enter reply">
	<br>
	<button class="btn btn-primary" onclick={ postReply }>Reply</button>
	<!-- <div class="comment" each={ myReply }> -->

	<!-- THIS IS WHERE THE COMMENTS GO -->
	<div each={ myReplys }>
		<h1>{ task } - <small>Sender: { id }</small></h1>
	</div>


	<script>
		var that = this;

		this.myReplys = [];
		var database = firebase.database();
		var myReplyRef = database.ref('comments/public/replys');

		// this.fakeList = [{msg:"A"},{msg:"B"},{msg:"C"}];

		myReplyRef.on('value', function (snapshot) {
			var data = snapshot.val();

			console.log(data);

			var replys = [];
			for (var key in data) {
				replys.push(data[key]);
			}
			console.log(replys);
			that.myReplys = replys;

			console.log(that.myReplys);

			//
			// console.log('this.parent -------', that.parent);
			that.update();
			// console.log(that);

		});

		postReply(event) {
			var newTask = {};
			if (event.type === "click") {
				newTask.task = this.refs.reply.value;
				// this.myReply.push(newTask); if (!this.parent.publicComments) { 	this.parent.publicComments = []; } this.parent.publicComments.push(newTask); console.log(this.parent);

				var key = myReplyRef.push().key;

				newTask.id = key;

				// console.log(key);
				// myReplyRef.child(newKey).set(newTask);

				database.ref('comments/public/replys' + key).set(newTask);

				database.ref('comments/public/replys' + postID + '/' + key).set(newTask);

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

			background-color: tomato;
		}

	</style>
</post-reply>
