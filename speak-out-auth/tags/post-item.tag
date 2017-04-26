<post-item>

	<div>
		<p>
			<strong>{author}</strong>
			:
			<span>{message}</span>

			<button type="button" name="button" onclick={ replyEditor }>Comment</button>

			<button type="button" onclick={ closeEditor }>Cancel</button>

		</p>
		<div each={ myComments }>
			<h1>
				<small>{ author }: { msg }</small>

			</h1>
		</div>
		<comment-editor if={ creatingComment } postid={ id }></comment-editor>

		<div >

			<button type="button" onclick={ addLike }>
				<span>
					LIKE { likeCount }</span>
			</button>

			<!-- <p class=likenum>
				{ likeButton ? "1:)" : "0:("}
			</p> -->
		</div>
	</div>

	<script>
		var that = this;
		console.log("post-item this.id");
		console.log(this.id);
		this.postID = this.id;
		this.myComments = [];
		var database = firebase.database();
		var commentsRef = database.ref('posts/' + this.postID + '/comments');
		console.log('posts/' + this.postID + '/comments');

		console.log('comment-editor', this);

		this.likeCount = 0;

		// this.fakeList = [{msg:"A"},{msg:"B"},{msg:"C"}];

		commentsRef.on('value', function (snapshot) {
			var data = snapshot.val();
			console.log("data");
			console.log(data);

			var comments = [];
			for (var key in data) {
				comments.push(data[key]);
			}
			console.log(comments);
			that.myComments = comments;
			console.log("myComments");
			console.log(that.myComments);

			//
			// console.log('this.parent -------', that.parent);
			that.update();
			// console.log(that);

		});

		// this.likeButton = false;
		//
		// this.likeCount = function (event) { 	that.likeButton = !that.likeButton; };

		var that = this;

		this.addLike = function (event) {
			var database = firebase.database();
			var likesRef = database.ref('posts/' + this.postID + '/likes');
			var likedUsersRef = database.ref('posts/' + this.postID + '/likedUsers');

			likesRef.once('value', function (snapshot) {

				var currentLikes = snapshot.val() ? snapshot.val() : 0;
						currentLikes++;

				// var key = likedUsersRef.push().key;
				var key = firebase.auth().currentUser.uid;

				var newLikeUser = {};
						newLikeUser.id = key;
						newLikeUser.author = firebase.auth().currentUser.displayName;

				database.ref('posts/' + this.postID + '/likedUsers/' + key);
				likedUsersRef.child(key).set(newLikeUser);

				likesRef.set(currentLikes);



				//change object to value , make currentLikes always be a number

				// var newLike = {};
				// var key = likesRef.push().key;
				// newLike.id = key;
				// newLike.author = firebase.auth().currentUser.displayName;
				//
				// database.ref('posts/' + this.postID + '/likes/' + key).set(newLike);
				//
				// console.log("currentLikes");

				//todo each user can only like once
				// likesRef.update({
				// 	'like-count': currentLikes[".like-count"] + 1
				// }, function (error) {
				// 	if (error) {
				// 		console.log('Data could not be saved:' + error);
				// 	} else {
				// 		console.log('Data saved successfully');
				// 	}
				// });
				// getLikeCount(id);
			});
		}
		// function getLikeCount(postID) {     var numLikesRef = database.ref('posts/' + this.postID + '/likes/' +'/like-count');     numLikesRef.once('value', function(snapshot) {         if ( snapshot.val() ) {             document.querySelector('#' +
		// postID + ' .like-count').innerHTML = snapshot.val() + ' likes';         } else {             return false;         }     }); }

		this.creatingComment = false;
		console.log('reply-editor');

		this.replyEditor = function (event) {
			console.log('replyEditor', this);
			// console.log("ReplyEditor"); console.log(this); console.log(that);
			this.creatingComment = true;
			// this.update(); this.closeEditor();
		};
		this.closeEditor = function (event) {
			this.creatingComment = false;
			// that.update();
		};

		// this.myReply = []; postReply(event) {   var newTask = {};   if (event.type === "click") {     newTask.task = this.refs.comment.value;     console.log('xxx', this.refs.comment);     this.myReply.push(newTask);   } }   var database =
		// firebase.database();   var myReplyRef = database.ref('myreply'); myReplyRef.on('child_added', function(snapshot) {
		//
		//     var data = snapshot.val(); // Object with properties as keys         data.id = snapshot.key;
		//
		//     that.myReply.push(data);     that.update();   });
	</script>
	<style>
		.comment {
			background: rgba(220, 220, 220, 0.9);
			padding: 15px;
			border-radius: 5px;
		}
		.comment:nth-child(even) {
			background: rgba(255, 255, 255, 0.3);
		}

	</style>
</post-item>
