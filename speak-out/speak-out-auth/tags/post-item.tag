<post-item>
	<reply-editor class="comment" each={ publicComments }></reply-editor>


	<script>
	

		var that = this;

		this.creatingReply = false;

			this.ReplyEditor = function (event) {
					console.log("ReplyEditor");
					console.log(this);
					console.log(that);
					that.creatingReply = true;
			};
			this.closeEditor = function (event) {
            that.creatingReply = false;
            // that.update();
        };
		this.publicComments = [];

		var database = firebase.database();
		var publicCommentsRef = database.ref('comments/public');

		publicCommentsRef.on('value', function (snapshot) {
			var commentsData = snapshot.val();

			if (commentsData) {
				// What does Object.values() do? E.g. Object.values({a:1, b:2, c:3});
				// Note: Object.values() is still experimental.
				that.publicComments = Object.values(commentsData);
			} else {
				that.publicComments = [];
			}
			that.update();
		});

		this.on('unmount', function (event) {
			publicCommentsRef.off('value');
		});
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
