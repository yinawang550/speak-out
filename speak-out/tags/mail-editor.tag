<mail-editor>
	<p>Reply</p>


	<div>
		<span>Subject</span>
		<br><input type="text" ref="replySubject" value="">
	</div>

	<textarea name="name" ref="replyBody" rows="4" cols="40"></textarea>
<br>
	<span><button type="button" onclick={ sendMessage }>Send</button></span>
	<span><button type="button" onclick={ parent.closeEditor }>Cancel</button></span>
	
	<script>
		console.log(this);

		this.sendMessage = function(event) {
			var newReply = {
				subject: this.refs.replySubject.value,
				body: this.refs.replyBody.value
			};
			this.parent.emailList.push(newReply);
			this.parent.update();
			this.parent.closeEditor();
		};
	</script>

	<style>
		:scope {
			display: block;
			background-color: #666;
			color: white;
			border: 1px solid black;
			border-radius: 3px;
			padding: 10px;
			position: fixed;
			right: 0;
			bottom: 0;
			width: 300px;
			height: 200px;
		}
		textarea {
			margin-top: 10px;
		}
	</style>
</mail-editor>
