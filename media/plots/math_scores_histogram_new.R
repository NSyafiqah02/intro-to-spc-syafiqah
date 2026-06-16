
library(ggplot2)
library(plotly)
library(htmlwidgets)

p_math_hist <- ggplot(bigclass, aes(x=Math)) +
  geom_histogram(binwidth=50, fill='#0072B2', color='white', alpha=0.9) +
  labs(title='Distribution of Math Scores', x='Math Score', y='Frequency') +
  theme_minimal() +
  theme(
    plot.title = element_text(size=18, face='bold'),
    axis.title.x = element_text(size=18),
    axis.title.y = element_text(size=18),
    axis.text.x = element_text(size=14),
    axis.text.y = element_text(size=14),
    panel.background = element_rect(fill='white', colour='white'),
    plot.background = element_rect(fill='white', colour='white')
  )

# Convert to plotly for interactivity
plotly_math_hist <- ggplotly(p_math_hist)

# Save as HTML widget
saveWidget(plotly_math_hist, file="media/plots/math_scores_histogram_new.html", selfcontained=TRUE)

# Save R code
r_code_to_save <- c(
  "library(ggplot2)",
  "library(plotly)",
  "",
  "p_math_hist <- ggplot(bigclass, aes(x=Math)) +",
  "  geom_histogram(binwidth=50, fill='#0072B2', color='white', alpha=0.9) +",
  "  labs(title='Distribution of Math Scores', x='Math Score', y='Frequency') +",
  "  theme_minimal() +",
  "  theme(",
  "    plot.title = element_text(size=18, face='bold'),",
  "    axis.title.x = element_text(size=18),",
  "    axis.title.y = element_text(size=18),",
  "    axis.text.x = element_text(size=14),",
  "    axis.text.y = element_text(size=14),",
  "    panel.background = element_rect(fill='white', colour='white'),",
  "    plot.background = element_rect(fill='white', colour='white')",
  "  )",
  "",
  "# Convert to plotly for interactivity",
  "plotly_math_hist <- ggplotly(p_math_hist)"
)

writeLines(r_code_to_save, "media/plots/math_scores_histogram_new.md")
