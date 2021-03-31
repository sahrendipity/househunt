library(shiny)
library(leaflet)
library(RColorBrewer)
library(raster)
library(sp)
library(rgdal)
r_colors <- rgb(t(col2rgb(colors()) / 255))
names(r_colors) <- colors()


ui <- fluidPage(
  leafletOutput("mymap"),
  p(),
  actionButton("recalc", "New points")
)

server <- function(input, output, session) {
  points <- eventReactive(input$recalc, {
    cbind(rnorm(40) * 2 + 13, rnorm(40) + 48)
  }, ignoreNULL = FALSE)
  
  output$mymap <- renderLeaflet({
    leaflet() %>%
      #base groups
      addTiles() %>% 
      setView(lng=153.0000, lat=-27.41989, zoom=13) %>% 
      addMarkers(data = points()) 
  })
  
   
  
} 


shinyApp(ui, server)
