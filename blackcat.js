
var SPACE = SPACE || {};

window.startGame = function () {
  class Blackcat {

    constructor (props) {
      this.interval = null;
      this.points = null;
      this.blackCat = null;
      this.this = this;
    }
    randomPosition (excludePosition) {
      var position = excludePosition;
      while (position === excludePosition) {
        var i = parseInt(Math.random() * 20 + 1, 0);
        if (i <= 5) {
          position = 'LEFT';
        } else if (i <= 10) {
          position = 'TOP';
        } else if (i <= 15) {
          position = 'RIGHT';
        } else if (i <= 20) {
          position = 'BOTTOM';
        }
      }
      return position;
    }

    getMaxAvailablePosition (position) {
      var max = (position === 'TOP' || position === 'BOTTOM') ? window.innerWidth
               : window.innerHeight;
      return max;
    }

    define2dPoint (position, value) {
      var point2d = { x: 0, y: 0 };
      if (position === 'TOP') {
        point2d = { x: value, y: 0 };
      }
      if (position === 'BOTTOM') {
        point2d = { x: value, y: window.innerHeight };
      }
      if (position === 'LEFT') {
        point2d = { x: 0, y: value };
      }
      if (position === 'RIGHT') {
        point2d = { x: window.innerWidth, y: value };
      }
      return point2d;
    }

    prepareStartPosition () {
      var position = this.randomPosition(null);
      var max = this.getMaxAvailablePosition(position);
      var endPosition = this.randomPosition(position);
      var maxEnd = this.getMaxAvailablePosition(endPosition);
      return {
        startPosition: position,
        startPoint: this.define2dPoint(position, (Math.random() * max + 1)),
        endPosition: endPosition,
        endPoint: this.define2dPoint(endPosition, (Math.random() * maxEnd + 1))
      };
    }

    prepareInterval (points) {
      this.blackcat = document.getElementById('blackcat');
      var xCurrent = points.startPoint.x;
      var xDestination = points.endPoint.x;
      var speedX = xDestination - xCurrent > 0 ? 3 : -3;

      var yCurrent = points.startPoint.y;
      var yDestination = points.endPoint.y;
      var speedY = yDestination - yCurrent > 0 ? 3 : -3;
      this.blackcat.style.left = xCurrent;
      this.blackcat.style.top = yCurrent;
      this.blackcat.style.display = 'block';

      this.points = points;
      this.interval = setInterval((function (self) {
        var xCurrent = points.startPoint.x;
        // var xDestination = points.endPoint.x;
        var yCurrent = points.startPoint.y;
        // var yDestination = points.endPoint.y;

        if ((xCurrent < 0 || xCurrent > window.innerWidth) ||
               (yCurrent < 0 || yCurrent > window.innerHeight)) {
          self.stopCat(true);
          return;
        }

        xCurrent += speedX;
        points.startPoint.x = xCurrent;
        self.blackcat.style.left = xCurrent + 'px';

        yCurrent += speedY;
        points.startPoint.y = yCurrent;
        self.blackcat.style.top = yCurrent + 'px';
      })(this), 20);
    }

    runCatRun () {
      var points = this.prepareStartPosition();
      this.prepareInterval(points);
    }

    stopCat (shouldRestart) {
      clearInterval(this.interval);
      this.interval = null;
      this.blackcat.style.display = 'none';
      if (shouldRestart) {
        this.runCatRun();
      }
    }
  }

  var btnCat = document.getElementById('btnCat');
  var cat1 = new Blackcat();

  btnCat.onclick = (e) => {
    if (cat1.interval == null) {
      cat1.runCatRun();
      btnCat.textContent = 'Stop BlackCat';
    } else {
      cat1.stopCat();
      btnCat.textContent = 'Start BlackCat';
    }
  };
};

if (window.addEventListener) {
  window.addEventListener('DOMContentLoaded', window.startGame, false);
} else {
  window.attachEvent('onload', window.startGame);
}
