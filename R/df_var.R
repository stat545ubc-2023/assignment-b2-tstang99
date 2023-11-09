#' df_var
#'
#' @description This function calculates the variance of each column in a dataframe, it requires the dataframe to
#'              contain only numeric columns. 
#' 
#' @param df The input dataframe
#'
#' @return It returns a vector of variance corresponds to each numeric column in the dataframe.
#' @export
#'
#' @examples
#' a <- c(23,45,34,231)
#' b <- c(0.3,3,22,0.003)
#' df <-  data.frame(a,b)
#' df_var(df)
#' 
df_var <- function(df) {
  # Check if df is empty or not
  if(is_empty(df)) {return("Please use a non-empty dataframe.")}
  output <- c()
  for(i in 1:ncol(df)){
    # Verify numeric values in the dataframe 
    if(!is.numeric(unlist(df[,i]))) {
      return("You have a non numeric column, please select a dataframe with all numeric column")
    }
    if(is.numeric(unlist(df[,i]))) {
      output[i] <- var(df[,i])
    }
  }
  return(output)
}