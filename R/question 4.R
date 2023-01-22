my_num <- readline(prompt = "Enter a value: ")

if (my_num < 0) {
  print("The number is negative.")
} else {
  if (my_num > 0) {
    print("The number is positive.")
  } else {
    print("The number is zero.")
  }
}
