#' help UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList includeMarkdown fluidPage column div br tabPanel
#' 
mod_help_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidPage(
      column(width=12),
      column(width=12,
             div(
               style = "padding: 20px;",
               div(
                 style = "text-align: center; margin-bottom: 25px; padding-bottom: 15px; border-bottom: 2px solid #17a2b8;",
                 tags$h2("Help Documentation", style = "color: #17a2b8; margin-bottom: 10px;"),
                 tags$p("Click a module to expand its help section.",
                        style = "color: #666; font-size: 16px;")
               )),
             box(title="Genomic Diversity", id = "Genomic_Diversity_box",width = 12, collapsible = TRUE, collapsed = TRUE, status = "info", solidHeader = TRUE,
                 "This tab estimates summary metrics for the samples and SNPs within a genomic dataset and produces figures and tables.",
                 br(), br(),
                 tabsetPanel(id = "Genomic_Diversity_tabset",
                             tabPanel("Parameters description", value = "Genomic_Diversity_par", br(),
                                      includeMarkdown(system.file("help_files/Genomic_Diversity_par.Rmd", package = "YourAppName"))
                             ),
                             tabPanel("Results description", value = "Genomic_Diversity_results", br(),
                                      includeMarkdown(system.file("help_files/Genomic_Diversity_res.Rmd", package = "YourAppName"))
                             ),
                             tabPanel("How to cite", value = "Genomic_Diversity_cite", br(),
                                      includeMarkdown(system.file("help_files/Genomic_Diversity_cite.Rmd", package = "YourAppName"))
                             ))
             )
      ),
      column(width=2)
      # Add Help content here
    )
  )
}

#' help Server Functions
#'
#' @noRd
mod_help_server <- function(input, output, session, parent_session){
  
  ns <- session$ns
  
}

## To be copied in the UI
# mod_help_ui("help_1")

## To be copied in the server
# mod_help_server("help_1")
