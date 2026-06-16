library(tidyverse)
library(plotly)
library(htmlwidgets)

# Ensure the output directory exists
output_dir <- "media/plots"
if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}

p_math_histogram <- ggplot(bigclass, aes(x=Math)) +
  geom_histogram(binwidth=50, fill="#0072B2", color="white") + 
  labs(
    title="Distribution of Math Scores"
    x="Math Score"
    y="Frequency"
  ) +
  theme_minimal() +
  theme(
    plot.background = element_rect(fill = "white"),
    axis.title.x = element_text(size = 18),
    axis.title.y = element_text(size = 18),
    axis.text.x = element_text(size = 14),
    axis.text.y = element_text(size = 14)
  )

gg_math_histogram <- ggplotly(p_math_histogram) %>% config(displayModeBar = FALSE)

# saveWidget(widget = gg_math_histogram, file = file.path(output_dir, "math_scores_histogram.html"), selfcontained = TRUE)
