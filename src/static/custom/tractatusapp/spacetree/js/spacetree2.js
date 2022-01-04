// code based on http://thejit.org/static/v20/Jit/Examples/RGraph/example1.html



var labelType, useGradients, nativeTextSupport, animate;

// get window size so that we can make the canvas as large as possible
var maskWidth = $(window).width();   // returns height of browser viewport
var maskHeight = $(window).height();   // returns height of browser viewport
// $(document).width(); // returns height of HTML document


(function() {
  var ua = navigator.userAgent,
      iStuff = ua.match(/iPhone/i) || ua.match(/iPad/i),
      typeOfCanvas = typeof HTMLCanvasElement,
      nativeCanvasSupport = (typeOfCanvas == 'object' || typeOfCanvas == 'function'),
      textSupport = nativeCanvasSupport 
        && (typeof document.createElement('canvas').getContext('2d').fillText == 'function');
  //I'm setting this based on the fact that ExCanvas provides text support for IE
  //and that as of today iPhone/iPad current text support is lame
  labelType = (!nativeCanvasSupport || (textSupport && !iStuff))? 'Native' : 'HTML';
  nativeTextSupport = labelType == 'Native';
  useGradients = nativeCanvasSupport;
  animate = !(iStuff || !nativeCanvasSupport);
})();

var Log = {
  elem: false,
  write: function(text){
    if (!this.elem) 
      this.elem = document.getElementById('footertext');
    this.elem.innerHTML = text;
    this.elem.style.left = (500 - this.elem.offsetWidth / 2) + 'px';
  }
};


function init(json){

    
    //init RGraph
    var rgraph = new $jit.RGraph({
        //Where to append the visualization
        injectInto: 'infovis',
		width: maskWidth,
		height: ((maskHeight/8)*5),
		duration: 800,
		//set distance between node and its children
        levelDistance: 150,
        //Optional: create a background canvas that plots
        //concentric circles.
        background: {
          CanvasStyles: {
            strokeStyle: '#555'  // the concentric circles
          },
        },
		    // mikele 2012-06-24
		Events: {  
		  enable: true,  
		  onMouseEnter: function(node, eventInfo, e) {  
		    $jit.id('footertext').innerHTML = node.name + ": " + node.data.preview_ogden
		  },  
		  onMouseLeave: function(node, eventInfo, e) {  
		    $jit.id('footertext').innerHTML = "&nbsp;&nbsp;"
		  },  
		},

		//Add navigation capabilities:
        //zooming by scrolling and panning.
        Navigation: {
          enable: true,
          panning: true,
          zooming: 50
        },
        //Set Node and Edge styles.
        Node: {
            // color: '#ddeeff', #660033, #663399, #9999CC
            color: '#660033',
			type: 'circle',
        },
        
        Edge: {
          // color: '#C17878',
          color: '#006699',
          lineWidth:1.2
        },

        onBeforeCompute: function(node){
			$jit.id('footertext').innerHTML = "centering " + node.name + "...";
			//Clear the text
			$jit.id('subfooter').innerHTML = "&nbsp;&nbsp;"
        },
        
        //Add the name of the node in the correponding label
        //and a click handler to move the graph.
        //This method is called once, on label creation.
        onCreateLabel: function(domElement, node){
            domElement.innerHTML = node.name;
            domElement.onclick = function(){
                rgraph.onClick(node.id, {
                    onComplete: function() {
						$jit.id('footertext').innerHTML = "&nbsp;&nbsp;";
						$jit.id('subfooter').innerHTML = node.data.full_ogden;
						
                    }
                });
            };
        },
        //Change some label dom properties.
        //This method is called each time a label is plotted.
        onPlaceLabel: function(domElement, node){
            var style = domElement.style;
            style.display = '';
            style.cursor = 'pointer';

            if (node._depth < 1) {
                style.fontSize = "1em";
                style.color = "#E0E002";
            
            } else if(node._depth == 1){
	           style.fontSize = ".7em";
               style.color = "#ccc";

	        } else if(node._depth == 2){
                style.fontSize = ".7em";
                style.color = "#A3A3A3";           
            } else if(node._depth == 3){
	           style.fontSize = ".7em";
	           style.color = "#494949";
	        }
			else {
                style.display = 'none';
            }

            var left = parseInt(style.left);
            var w = domElement.offsetWidth;
            style.left = (left - w / 2) + 'px';
        }
    });
    //load JSON data
    rgraph.loadJSON(json);
    //trigger small animation
    rgraph.graph.eachNode(function(n) {
      var pos = n.getPos();
      pos.setc(-200, -200);
    });
    rgraph.compute('end');
    rgraph.fx.animate({
      modes:['polar'],
      duration: 1000  // was 2000
    });
	// zoom in a little
    rgraph.canvas.scale(0.5, 0.5);
    //append information about the root relations in the right column
    // $jit.id('footertext').innerHTML = ""
}








function focus_node(nodeId) {
	var node = $jit.id(nodeId);
	node.click();
}



