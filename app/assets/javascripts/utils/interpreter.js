//These are the options that are used for the interpreter.
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
    $.ajax({
      type: "get",
      url: "api/exercises/" + CodeBytes.UserResults.exercise_id + "/check",
      data: CodeBytes.UserResults,
      success: function (responseData) {
        CodeBytes.Terminal.trigger("feedback", [responseData]);
      }
    });

    var $consoleText = $("<pre>").addClass("output");

    $consoleText.append(CodeBytes.UserResults.output);
    $consoleText.append("> " + resultData);

    CodeBytes.Terminal.html($consoleText);
  },

  error: function (errorData) {
    CodeBytes.UserResults.error = errorData;
    var $consoleText = $("<pre>").addClass("output");

    $consoleText.append(CodeBytes.UserResults.output);
    $consoleText.append("> " + errorData);

    CodeBytes.Terminal.html($consoleText);
  },

  timeout: {
    time: 10000,
    callback: function () {
      return true;
    }
  }
};

CodeBytes.UserResults = {};

CodeBytes.Interpreter = new JSREPL(InterpreterOptions);

CodeBytes.Interpreter.setNewLang = function (course) {
  if (course.has("language") && (!this.lang || this.lang.system_name !== course.get("language"))) {
    this.loadLanguage(course.get("language"), CodeBytes.submitCodeActivate);

    this.timeout.callback = function () {
      this.loadLanguage(course.get("language"), CodeBytes.submitCodeActivate);
      CodeBytes.Terminal.html("> Code Timed Out.");
      return true;
    };
  }
}
