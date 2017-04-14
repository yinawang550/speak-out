<reply-editor>
  <div class="comment">
		<!-- <strong>{ author }</strong> :
		<span>{ message }</span> -->
  </div>

    <div>
        <p>
          <strong>{author}</strong>
      		:
      		<span>{message}</span>

            <button type="button" name="button" onclick={ replyEditor }>Comment</button>

            <button type="button" onclick={ closeEditor }>Cancel</button>

        </p>
        <post-reply if={ creatingReply }></post-reply>

        <div >

            <button type="button" onclick={ toggleButtonA }>
                <span>&#x2764;</span>
            </button>

            <p class=likenum>
                { buttonA ? "1:)" : "0:("}
            </p>
        </div>


        <span> {publicComments} </span>
    </div>
    <script>

    this.buttonA = false;

      this.toggleButtonA = function (event) {
        that.buttonA = !that.buttonA;
      };

        var that = this;
        this.creatingReply = false;
        console.log('reply-editor');

        this.replyEditor = function (event) {
            console.log('replyEditor', this);
            // console.log("ReplyEditor"); console.log(this); console.log(that);
            this.creatingReply = true;
            // this.update(); this.closeEditor();
        };
        this.closeEditor = function (event) {
            this.creatingReply = false;
            // that.update();
        };

	// this.myReply = [];
  // postReply(event) {
  //   var newTask = {};
  //   if (event.type === "click") {
  //     newTask.task = this.refs.comment.value;
  //     console.log('xxx', this.refs.comment);
  //     this.myReply.push(newTask);
  //   }
  // }

//   var database = firebase.database();
//   var myReplyRef = database.ref('myreply');
// myReplyRef.on('child_added', function(snapshot) {
//
//     var data = snapshot.val(); // Object with properties as keys
//         data.id = snapshot.key;
//
//     that.myReply.push(data);
//     that.update();
//   });

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
</reply-editor>
