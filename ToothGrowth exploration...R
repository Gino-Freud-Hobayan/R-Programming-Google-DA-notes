data("ToothGrowth")
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)

arrange(filter(ToothGrowth,dose==0.5),len)


filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>%
  arrange_len
