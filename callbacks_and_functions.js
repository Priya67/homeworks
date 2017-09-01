const readline = require('readline');

// 1.Simple Timeout
window.setTimeout(function () {
  alert('HAMMER TIME!');
  }, 5000);
// it is synchronous


// 2.Timeout Plus Closure
function hammerTime (time) {
  window.setTimeout(function () {
    alert(`${time} is HAMMER TIME!`);
  });
}
//This is asynchronous

// 3.Some tea? Some biscuits?

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuits() {
  reader.question('Would you like to have some tea?', function (tea) {
    console.log(`Bringing ${tea}.`);
    reader.question('Would you like some biscuits?', function (biscuits) {
      console.log(`Bringing ${biscuits}.`);

      const firstAns = (tea === 'yes') ? 'do' : 'don\'t';
      const secondAnd = (biscuits === 'yes') ? 'do' : 'don\'t';

      console.log(`So you ${firstAnd} want tea and you ${secondAnd} want coffee.`);
      reader.close();
    });
  });
}

// Cats and dogs

function Cat () {
  this.name = 'Markov';
  this.age = 3;
}

function Dog () {
  this.name = 'Noodles';
  this.age = 4;
}

Dog.prototype.chase = function (cat) {
  console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
};

const Markov = new Cat ();
const Noodles = new Dog ();

// Method style

Noodles.chase(Markov);

Noodles.chase.call(Markov, Noodles);
Noodles.chase.apply(Markov, [Noodles]);
