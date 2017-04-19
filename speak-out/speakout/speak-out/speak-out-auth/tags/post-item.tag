<post-item>
	<reply-editor class="comment" each={ publicComments }></reply-editor>



	<script>


		var that = this;

		this.creatingReply = false;

			this.ReplyEditor = function (event) {
					that.creatingReply = true;
			};
			this.closeEditor = function (event) {
            that.creatingReply = false;

        };
		this.publicComments = [];

		var database = firebase.database();
		var publicCommentsRef = database.ref('comments/public');

		publicCommentsRef.on('value', function (snapshot) {
			var commentsData = snapshot.val();

			if (commentsData) {

				that.publicComments = Object.values(commentsData);
			} else {
				that.publicComments = [];
			}
			that.update();
		});

		this.on('unmount', function (event) {
			publicCommentsRef.off('value');
		});

		// this.myReplys = [];
		// var database = firebase.database();
		// var myReplyRef = database.ref('reply');
		//
		// // this.fakeList = [{msg:"A"},{msg:"B"},{msg:"C"}];
		//
		// myReplyRef.on('value', function (snapshot) {
		// 	var data = snapshot.val();
		//
		// 	console.log(data);
		//
		// 	var replys = [];
		// 	for (var key in data) {
		// 		replys.push(data[key]);
		// 	}
		// 	console.log(replys);
		// 	that.myReplys = replys;
		//
		// 	console.log(that.myReplys);
		//
		// 	//
		// 	// console.log('this.parent -------', that.parent);
		// 	that.update();
		// 	// console.log(that);
		//
		// });
	</script>

	<style>
		:scope {
			display: block;
		}
		form {
			padding-bottom: 15px;
		}

	</style>
</post-item>
