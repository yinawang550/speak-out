<photo-card>


	<!-- <p if={ imageCaption }>{ imageCaption }</p>
  <img class="noImage"
	src="https://s3-us-west-1.amazonaws.com/powr/defaults/image-slider2.jpg" if={!imageCaption}/>



	<button type="button" onclick={ updateCard }>Post</button> -->



	<script>
    this.imageCaption ="Thanks for your posting";



		// this.updateCard = function (event) {
		// 	this.imageURL = this.refs.urlInput.value;

			//just point to it, dont have to call it
		};

	</script>

	<style>
		:scope {
			display: inline-block;
			border: 1px solid #CCC;
			border-radius: 6px;
			margin: 0;
			padding: 10px;
			width: 100px;
		}
		.noImageIcon {
			width: 100%;
		}
		.inputbox {
			width:100%;}

    .noImage{
    	width: 100%;
    }


	</style>
</photo-card>
