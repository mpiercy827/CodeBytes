//These are the options that are used for the interpreter.
InterpreterElements = {
  $editor: $(".editor"),
  $editorArea: $(".editor-area"),
  $terminal: $(".terminal"),
};

InterpreterOptions = {
  input: function (callback) {
    callback();
  },

  output: function (outputData) {
    if (outputData) {
      CodeBytes.UserResults.output = outputData;
    }
  },

  result: function (resultData) {
    CodeBytes.UserResults.result = resultData;
    var $consoleText = $("<pre>").addClass("output");

    $consoleText.append(CodeBytes.UserResults.output);
    $consoleText.append("> " + resultData);

    InterpreterElements.$terminal.html($consoleText);
  },

  error: function (errorData) {
    CodeBytes.UserResults.error = errorData;
    var $consoleText = $("<pre>").addClass("output");

    $consoleText.append(CodeBytes.UserResults.output);
    $consoleText.append("> " + errorData);

    InterpreterElements.$terminal.html($consoleText);
  },

  timeout: {
    time: 10000,
    callback: function () {
      console.log("timed out");
      CodeBytes.Interpreter.loadLanguage("ruby", function() {
        console.log("ruby reloaded");
      });
      return true;
    }
  }
};

CodeBytes.UserResults = {};

CodeBytes.Interpreter = new JSREPL(InterpreterOptions);
