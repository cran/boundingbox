## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  box_coords <-
#      boxer(
#      names = c("S2.jpg", "W1.jpg"),
#      file_path_input = system.file("extdata",    package = "boundingbox"),
#      file_path_output = tempdir(),
#      classifier = "dog",
#      show_classifier = TRUE,
#      resize_x = 224,
#      resize_y = 224,
#      outbox = TRUE
#      )

## ---- echo = FALSE, out.width = "250px", fig.show = 'hold'--------------------
knitr::include_graphics("README-input-1.jpg")
knitr::include_graphics("README-output-1.jpg")

## ---- echo = FALSE, out.width = "250px", fig.show = 'hold'--------------------
knitr::include_graphics("README-input-2.jpg")
knitr::include_graphics("README-output-2.jpg")

## ----echo=FALSE, eval=TRUE----------------------------------------------------
box_coords <- data.frame(file_name = c("S2.jpg", "W1.jpg"), x_left = c(19,41), y_top = c(9,5), x_right = c(201, 149), y_bottom = c(223, 216), size_x = c(224, 224), size_y = c(224,224), classifier = "dog", color = "red", stringsAsFactors = FALSE)
box_coords

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  dog_df <-
#      data.frame(
#      ref = (1:2),
#      class = c("Skip", "Waltz"),
#      color = c("red", "yellow"),
#      stringsAsFactors = FALSE
#      )
#  
#  box_coords2 <-
#      boxer2(
#      names = c("SW1.png"),
#      file_path_input = system.file("extdata",    package = "boundingbox"),
#      file_path_output = tempdir(),
#      classifier = dog_df,
#      show_classifier = TRUE,
#      outbox = TRUE
#      )

## ---- echo = FALSE, out.width = "250px"---------------------------------------
knitr::include_graphics("README-output-3.png")

## ----echo=FALSE, eval=TRUE----------------------------------------------------
box_coords2 <- data.frame(file_name = c("SW1.png", "SW1.png"), x_left = c(0, 157), y_top = c(9, 123), x_right = c(122, 284), y_bottom = c(110, 245), size_x = c(286, 286), size_y = c(320, 320), classifier = c("Waltz", "Skip"), color = c("yellow", "red"), stringsAsFactors = FALSE)
box_coords2

## ---- echo = TRUE, eval = FALSE-----------------------------------------------
#  points_master <-
#      data.frame(read.csv(
#      system.file("extdata", "points_example.csv",
#      package = "boundingbox")
#      ), stringsAsFactors = FALSE)
#  
#  
#  outBox(
#      points_master = points_master,
#      file_path_input = system.file("extdata", package = "boundingbox"),
#      file_path_output = tempdir(),
#      show_classifier = TRUE
#      )

