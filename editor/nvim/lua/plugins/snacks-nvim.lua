return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = table.concat({
          "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣿⣿⢳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢧⣿⡿⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⣿⡏⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠸⣿⡇⢹⣿⣿⣿⣿⣿⣿⣿⣿⢻⢿⣿⡿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠸⣇⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠀⢻⡇⠈⢿⣿⣿⣿⣿⣿⣿⣿⣬⣬⣾⠃⣿⣿⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠹⣆⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⢻⡄⠈⢿⣿⣿⣿⣿⣿⣿⡇⣿⣿⠀⢿⣿⡀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⢹⡆⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⢷⡀⠈⢿⣿⣿⣿⣿⣿⠀⣿⣿⡀⠈⢿⣷⡀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣘⣉⣸⣿⣿⡄⠀⢿⡄⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⢛⣿⣿⣷⡀⠈⣷⡀⠘⣿⣿⣿⣿⣿⠀⠘⣿⣷⡀⠈⢿⣷⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⡏⣾⡿⠛⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠘⣷⡀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣫⣭⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣧⠀⢹⣧⠀⢹⣿⣿⣿⣿⣧⠀⠘⣿⣷⡀⠈⢿⣧⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⣧⠙⢀⣤⣤⡀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢿⣿⣿⣿⣧⠀⣿⣇⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⡾⠟⠋⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⡆⠈⣿⡆⢸⣿⣿⣿⠿⣿⣧⠀⠹⣿⣷⠀⠘⣿⡆⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠸⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⡏⢀⠀⠈⠉⠀⢸⣿⣿⡿⠟⢿⣿⣿⣿⣿⡿⠛⠉⠉⠉⠛⠛⠿⢿⣿⣿⣿⣿⣿⠀⠀⠙⣿⣿⣿⠀⣿⣿⠰⢿⣿⣿⣿⡏⢻⣿⣿⣿⣿⣿⡿⠀⠠⣴⣦⡀⠈⣿⣿⣿⠿⠛⠉⠉⠛⠛⠻⠿⣿⣿⣿⣿⣿⡏⠀⠀⢻⣿⣿⣷⠀⣿⡇⣸⣿⡟⠁⡀⣸⣿⣇⠀⢻⣿⣇⠀⢻⣿⠀⡙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⣷⡀⢻⣿⣿⣿",
          "⣿⣿⡟⠙⠿⠿⠿⠟⠁⣾⣿⣷⡆⠘⠛⠛⠉⢀⣀⢠⣿⣿⣿⢋⣠⣤⣤⣤⣤⣄⡀⠀⠀⠈⠉⠙⠛⠛⠳⢄⠀⠻⠿⠛⠁⢟⡅⣾⣆⣿⣿⣿⣅⠀⠻⠿⣿⠿⠋⣰⣄⠀⠀⠉⠁⣰⣿⡟⢁⣠⣤⣤⣤⣤⣀⡀⠀⠀⠈⠉⠛⠛⠛⠷⡀⠀⠿⠿⠋⢰⣿⢧⣿⠏⣠⣾⡇⣿⣿⣿⡄⠈⢿⣿⠀⢸⣿⠀⣿⢸⠟⠉⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠋⠁⠀⢀⣀⣀⡀⢹⣧⠀⢿⣿⣿",
          "⣿⣿⣿⣦⣄⣀⣀⣠⣼⣿⣿⣿⣧⣄⣠⣴⠾⣿⣇⠘⠿⣿⣿⣿⡿⠿⠿⠟⠛⠋⠁⠀⣀⣀⣀⣠⣀⣀⣰⡿⠀⣤⣤⣴⢣⢟⣾⡿⠋⠙⠻⣿⣿⡄⢀⣀⣀⣠⣴⣿⣿⣿⣶⡆⠰⢿⣿⣴⣿⣿⠿⠿⠟⠛⠋⠁⠀⣀⣀⣀⣀⣀⣀⣼⡟⢠⣤⣤⣶⣿⢫⣿⠏⣰⣿⣿⡀⣿⣿⣿⣷⠀⡀⠀⢀⣾⡿⣼⡟⠀⢠⣤⡀⠈⠻⣿⣿⣿⣿⣿⣿⣿⠿⠟⠋⠉⠀⣀⣠⣴⣶⣿⣿⣿⣿⣿⢸⣿⠆⣾⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⣠⣿⣄⠀⠀⠀⠀⠀⠀⢀⣀⣠⣴⣾⣿⣿⣿⣿⣿⣿⡿⠋⢀⣼⣿⣿⡏⣡⣾⣿⣿⣦⣤⣾⣿⡿⢃⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣴⣾⣿⣿⣿⣿⣿⣿⠿⠋⢠⣾⣿⣿⣿⣱⠟⢃⣴⣿⣿⣿⣇⠈⠉⠉⠁⢠⣿⣿⣿⠟⣽⠟⢰⡀⠀⠈⠁⢠⣄⡀⠉⠉⠉⠉⠁⠀⣀⣠⣤⣶⣿⣿⣿⣿⣿⡋⠀⢙⣿⠏⠈⢁⣴⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡋⠀⠉⣻⣿⣿⣿⣿⣿⣿⣿⣷⣽⣻⠿⢿⣿⣿⠿⠟⠋⠁⣀⣴⣿⣿⣿⣿⡇⠹⣿⣿⣿⣿⡿⠟⠋⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣟⡿⠿⣿⣿⣿⠿⠟⠋⠁⣠⣴⣿⣿⣿⣿⣿⣶⣾⣿⣿⣿⣿⣿⣿⣷⣶⣶⡘⠿⠿⠿⠏⠞⢁⣠⣿⣿⣷⣶⣤⣾⣿⣿⣿⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣦⣶⣿⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣤⣀⣤⣶⣾⣿⣿⣿⣿⣿⣿⣷⡀⠀⠈⠁⠀⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
          "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        }, "\n"),
      },
    },
  },
}