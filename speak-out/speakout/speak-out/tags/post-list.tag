<post-list>
    Post--
    <span>{ Name }</span>:
    <span>{ Post }</span>
    <p>
        <button type="button" name="button" onclick={ ReplyEditor }>Comment</button>

    </p>
    <!-- <p>
<button type="button" onclick={ increaseNumber }>Like</button>

<span> { magicNumber }</span>
</p> -->
<div >

  <button type="button" onclick={ toggleButtonA }><span>&#x2764;</span></button>

  <p class=likenum>
    { buttonA ? "1:)" : "0:("}
  </p>
</div>



    <post-list each={ postItem }></post-list>
    <div class="mail-list">
        <mail-item each={ emailList }></mail-item>
    </div>
    <mail-editor if={ creatingEmail }></mail-editor>

    <script>
    this.buttonA = false;

    this.toggleButtonA = function (event) {
      this.buttonA = !this.buttonA;
    };



        var that = this;

        this.creatingEmail = false;

        this.ReplyEditor = function (event) {
            this.creatingEmail = true;
        };

        this.closeEditor = function (event) {
            that.creatingEmail = false;
            that.update();
        };

        this.emailList = [
            {
                subject: "",
                body: ""
            }
        ];
        console.log('first.tag');

        this.magicNumber = "";

        this.increaseNumber = function (event) {
            this.magicNumber++;

        };

        this.on('mount', function (event) {
            console.log('MOUNT first.tag');
        });

        this.on('update', function (event) {
            console.log('UPDATE first.tag');
        });



    </script>

    <style >
        :scope {
            font-family: 'Aref Ruqaa', serif;
            font-size: 15px;
            display: block;
            border: 0.5px solid gray;
            padding: 15px;
            margin: 15px;
            color: teal;
            width: 80%;
        }
        .likenum{
          display: inline-block;
        }
        <style>
        /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */

        html {
            background: #f5f5f5;
            font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
        }

        body {
            margin: 30px auto 0;
            width: 450px;
            font-size: 75%;
        }

        h3 {
            margin-top: 30px;
            font-size: 18px;
            color: #555;
        }

        p {
            padding-left: 10px;
        }
        /*
 * Basic button style
 */

        .btn {
            box-shadow: 1px 1px 0 rgba(255, 255, 255, 0.5) inset;
            border-radius: 3px;
            border: 1px solid;
            display: inline-block;
            height: 18px;
            line-height: 18px;
            padding: 0 8px;
            position: relative;
            font-size: 12px;
            text-decoration: none;
            text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
        }
        /*
 * Counter button style
 */

        .btn-counter {
            margin-right: 39px;
        }
        .btn-counter:after,
        .btn-counter:hover:after {
            text-shadow: none;
        }
        .btn-counter:after {
            border-radius: 3px;
            border: 1px solid #d3d3d3;
            background-color: #eee;
            padding: 0 8px;
            color: #777;
            content: attr(data-count);
            left: 100%;
            margin-left: 8px;
            margin-right: -13px;
            position: absolute;
            top: -1px;
        }
        .btn-counter:before {
            transform: rotate(45deg);
            filter: progid: DXImageTransform.Microsoft.Matrix(M11=0.7071067811865476, M12=-0.7071067811865475, M21=0.7071067811865475, M22=0.7071067811865476, sizingMethod= 'auto expand');
            background-color: #eee;
            border: 1px solid #d3d3d3;
            border-right: 0;
            border-top: 0;
            content: '';
            position: absolute;
            right: -13px;
            top: 5px;
            height: 6px;
            width: 6px;
            z-index: 1;
            zoom: 1;
        }
        /*
 * Custom styles
 */

        .btn {
            background-color: #dbdbdb;
            border-color: #bbb;
            color: #666;
        }
        .btn.active,
        .btn:hover {
            text-shadow: 0 1px 0 #b12f27;
            background-color: #f64136;
            border-color: #b12f27;
        }
        .btn:active {
            box-shadow: 0 0 5px 3px rgba(0, 0, 0, 0.2) inset;
        }

        .btn span {
            color: #f64136;
        }
        .btn.active,
        .btn.active span,
        .btn:hover,
        .btn:hover span {
            color: #eeeeee;
        }
        .btn:active span {
            color: #b12f27;
            text-shadow: 0 1px 0 rgba(255, 255, 255, 0.3);
        }

    </style>

</style>

</post-list>
