#' @title Class: apk model
#' @description To create an apk object, use \link[aPack]{apk}. See also this function for mode details.
#' @slot call Object of class \code{"language"}. User call reminder.
#' @rdname apk-class
#' @import methods
#' @export
setClass("apk", representation(call = "language"), validity = function(object) {T})

#' @title Create an Object of class \code{"apk"}
#' @description Creator function for objects of class \code{"apk"}.
#' @param foo Not used yet.
#' @param ... Not used yet.
#' @export
apk <- function(foo, ...) {
    new("apk")
}

#' @name predict
#' @rdname predict-methods
#' @importFrom stats predict
#' @param object An object to predict from.
#' @param ... Further arguments for methods.
#' @export predict
setGeneric(name = "predict", def = function(object, ...) standardGeneric("predict"))


predict.apk <- function(object, bar,  ...) {
  print("I'm an apk prediction!")
}

#' @title Prediction Method for the apk Class
#' @name predict
#' @rdname predict-methods
#' @aliases predict,apk-method
#' @param bar Not used yet.
#' @examples
#' myApk <- apk()
#' predict(myApk)
setMethod("predict", "apk", predict.apk)
