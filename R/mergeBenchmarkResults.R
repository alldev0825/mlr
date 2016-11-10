#' @title Merge different BenchmarkResult objects.
#' @description Combines the \code{\link{BenchmarkResult}} objects that were performed
#'   with different learners and tasks.
#'   This can be helpful if you, e.g. forgot to run one learner on the set of tasks you used.
#' @param ... [\code{\link{BenchmarkResult}}]\cr
#'   \code{BenchmarkResult} objects that should be merged.
#' @return \code{\link{BenchmarkResult}}
#' @details Note that if you want to merge several \code{\link{BenchmarkResult}}
#'   objects you must ensure that all possible learner and task combinations will be
#'   contained in the return object.\cr
#'   Furthermore all given objects must have been calculated on the same
#'   set of measures.
#' @export
mergeBenchmarkResults = function(...) {
  # check all objects have the class BenchmarkResult
  set = list(...)
  assertList(set, types = "BenchmarkResult")

