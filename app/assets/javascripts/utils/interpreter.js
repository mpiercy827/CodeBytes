//These are the options that are used for the

InterpreterOptions = {
  input: function (callback) {
    callback();
  },

  output: function (outputData) {

  },

  result: function (resultData) {

  },

  error: function (errorData) {

  },

  timeout: {
    time: 10000,
    callback: function () {

    }
  }
};

// CodeBytes.Interpreter = new JSREPL(InterpreterOptions);
