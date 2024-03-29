#' Function for custom theme
#' 
#' @param fill color for the fill of the panel
#' @param border color of the border
#' @param textColor color of the plot text
#' @param grid color of the grid, NA for no grid
#' @export


theme_print <- function(fill = NA, border = 'grey50', textColor = 'grey90', grid = 'grey40'){
  if(is.na(fill)){
    fill <- hCol(h = runif(1, 0.01, 0.99), b = 0.6, s = 0.3)
  }
  gr <- ifelse(is.na(grid),
               element_blank(),
               element_line(linetype = 1, color = grid))
  
  ggplot2::theme(plot.background = element_rect(fill = border),
                 legend.background = element_rect(border),
                 panel.background = element_rect(fill = fill),
                 panel.border = element_blank(),
                 panel.grid = element_blank(),
                 axis.text = element_blank(),
                 axis.title = element_text(colour = textColor),
                 axis.ticks = element_blank(), 
                 legend.text = element_text(colour = textColor),
                 legend.title = element_text(colour = textColor),
                 plot.title = element_text(colour = textColor, face = 'bold.italic', size = 16, hjust = 0.5))
}