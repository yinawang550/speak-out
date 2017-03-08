<app-post>
	<h1>Speak-Out</h1>
	<h2>Post What You Want to Say</h2>

	<h3>Your post</h3>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

	<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Montserrat:700'>
	<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>

	<!-- <link rel="stylesheet" href="css/style.css"> -->
	<post-list each={ postItem }></post-list>
	<!-- <div class="mail-list">
		<mail-item each={ emailList }></mail-item>
	</div> -->
	<post-editor></post-editor>
	<mail-editor if={ creatingEmail }></mail-editor>
	<mail-item each={ emailList }></mail-item>


	<!-- <timer start="120"></timer> -->

	<!-- <div >

		<button type="button" onclick={ toggleButtonA }><span>&#x2764;</span></button>

		<p>
			{ buttonA ? "1:)" : "0:("}
		</p>
	</div> -->
<div>
<!-- <p>{ time } left</p> -->
</div>


	<header>
		<div>
			<h1>Made with</h1>
		</div>
	</header>

	<!-- scripts start from here -->
	<script>

		this.postItem = [
			{
				Name: "Abby",
				Post: "I think..."
			}
		];

  //  this.time = 10;
	//  tick(){
	// 	 if(this.time<= 10 && this.time>5){
	// 		 this.time--;
	// 		 if(this.time <=5){
	// 			 this.time = 5;
	// 		 }
	// 		 this.update();
	 //
	// 	 }
	// 	 else{
	// 		 clearInterval(timer);
	// 	 }
	//  }
	//  var timer = setInterval(this.tick, 1000);
	</script>

	<style>
		:scope {
			color: blue;
			font-family: Helvetica;
		}
		@keyframes heartbeat {
			0% {
				font-size: 1em;
			}
			30% {
				font-size: 1.4em;
			}
			45% {
				font-size: 1.2em;
			}
			70% {
				font-size: 1.4em;
			}
			100% {
				font-size: 1em;
			}
		}
		*,
		*::after,
		*::before {
			box-sizing: border-box;
		}

		body {
			background: darkkhaki;
			font: 700 16px 'Montserrat', sans-serif;
			line-height: 1em;
		}

		header {
			color: darkred;
			width: 100%;
			height: 10vh;
			display: flex;
			align-items: center;
			justify-content: center;
		}
		header > div {
			padding: 0 50px;
			text-transform: uppercase;
			position: relative;
		}
		header > div::after,
		header > div::before {
			clear: both;
			content: '';
			display: block;
			position: absolute;
			width: 50px;
			top: 0;
			bottom: 0;
			border-top: 3px solid;
			border-bottom: 3px solid;
			z-index: -1;
		}
		header > div::before {
			border-top-left-radius: 3px;
			border-bottom-left-radius: 3px;
			border-left: 3px solid;
			left: 0;
		}
		header > div::after {
			border-top-right-radius: 3px;
			border-bottom-right-radius: 3px;
			border-right: 3px solid;
			right: 0;
		}
		header > div > h1 {
			padding: 25px 0 30px;
			margin: 0 -25px;
			border-top: 3px solid;
			font-size: 25px;
			position: relative;
		}
		header > div > h1::after {
			content: '\f004';
			font: 20px 'FontAwesome', sans-serif;
			font-weight: normal;
			position: absolute;
			bottom: 0;
			left: 50%;
			transform: translate(-50%, 50%);
			animation: heartbeat 1s infinite;
			z-index: -1;
		}

	</style>
</app-post>
