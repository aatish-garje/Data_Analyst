value <- readline(prompt = "Enter a value: ")

if (typeof(value) == "character") {
  if (is.na(as.numeric(value))) {
    if (grepl("[^a-zA-Z0-9]", value)) {
      print("The value is a special character.")
    } else {
      print("The value is a character.")
    }
  } else {
    print("The value is numeric.")
  }
}
