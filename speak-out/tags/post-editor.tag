<post-editor>

    <div>
        <input class="inputbox" type="text" ref="postName" value="" placeholder="Your Name">
    </div>

    <div>
			<span show={ time < 5 }>YOU BETTER HURRY</span>
        <textarea class="textarea" rows="8" ref="postText" placeholder="Type your post" onfocus={ startTimer }></textarea>

        <button class="buttonpost" type="button" onclick={ sendPost }>Post { time }</button>

    </div>

    <script>
				var that = this;

				this.time = 10;

				var timer;
				this.startTimer = function(event){
					if (!timer) {
						timer = setInterval(function(){
					    that.time--;
							console.log(that.time);

							// if (that.time == 5) {
							// 	alert('Better hurry;')
							// }

							if (that.time == 0 ) {
								clearInterval(timer);
								that.sendPost();
							}

							that.update();
					  }, 1000);
					}

				}
        this.sendPost = function (event) {
            var newPost = {
                Name: this.refs.postName.value,
                Post: this.refs.postText.value
            };
            this.parent.postItem.push(newPost);
            this.parent.update();
            this.refs.postName.value="";
            this.refs.postText.value="";
            this.refs.clear();
        };

        // riot.tag('timer', '<p>Seconds left: { time }</p>', function (opts) {
        //     this.time = opts.start || 0;
				//
        //     this.tick = (function () {
        //         this.update({
        //             time: --this.time
        //         });
        //     }).bind(this);
				//
        //     var timer = setInterval(this.tick, 1000);
        //     // function (){ if(time<20)
        //     //   alert("Hurry!!");
        //     // };
				//
				//
        //     this.buttonpost('unmount', function () {
        //         console.info('timer cleared');
				//
        //         clearInterval(timer);
        //     });
        // });

    </script>
    <style>
        :scope {
            display: block;
            /*color: white;*/
            padding: 10px;
            right: 0;
            bottom: 0;
            width: 300px;
            height: 200px;
            margin-bottom: 40px;

        }

        .inputbox {
            display: inline-block;
            border: 1px solid silver;
            background-color: #F5F5F5;
            padding: 10px;
            margin-top: 40px;
        }
        .textarea {
            margin-top: 20px;

            width: 200px;
        }
        .buttonpost {
            position: right;
            margin-bottom: 80px;
        }

    </style>

</post-editor>
