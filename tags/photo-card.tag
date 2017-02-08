<photo-card>
	<img src={ imageURL }/>

	<input type="text" ref="urlInput" value="">
	<button type="button" onclick={ updateCard }>UPDATE</button>

	<script>
		this.imageURL = "http://placehold.it/100x100";

		this.updateCard = function (event) {
			this.imageURL = this.refs.urlInput.value;

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

	</style>
</photo-card>
