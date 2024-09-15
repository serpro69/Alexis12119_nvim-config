-- NOTE: NvDash Headers
math.randomseed(os.time())
local headers = {
  default = {
    "           ▄ ▄                   ",
    "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
    "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
    "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
    "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
    "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
    "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
    "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
    "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
  },

  nvim = {
    "                                                    ",
    " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  },

  nvchad = {
    "███▄    █ ██▒   █▓ ▄████▄   ██░ ██  ▄▄▄      ▓█████▄ ",
    "██ ▀█   █▓██░   █▒▒██▀ ▀█  ▓██░ ██▒▒████▄    ▒██▀ ██▌",
    "██  ▀█ ██▒▓██  █▒░▒▓█    ▄ ▒██▀▀██░▒██  ▀█▄  ░██   █▌",
    "██▒  ▐▌██▒ ▒██ █░░▒▓▓▄ ▄██▒░▓█ ░██ ░██▄▄▄▄██ ░▓█▄   ▌",
    "██░   ▓██░  ▒▀█░  ▒ ▓███▀ ░░▓█▒░██▓ ▓█   ▓██▒░▒████▓ ",
    " ▒░   ▒ ▒   ░ ▐░  ░ ░▒ ▒  ░ ▒ ░░▒░▒ ▒▒   ▓▒█░ ▒▒▓  ▒ ",
    " ░░   ░ ▒░  ░ ░░    ░  ▒    ▒ ░▒░ ░  ▒   ▒▒ ░ ░ ▒  ▒ ",
    "  ░   ░ ░     ░░  ░         ░  ░░ ░  ░   ▒    ░ ░  ░ ",
    "        ░      ░  ░ ░       ░  ░  ░      ░  ░   ░    ",
    "              ░   ░                           ░      ",
  },

  hydra = {
    "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
    "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
    "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
    "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
    "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
    "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
    "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
    " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
    " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
    "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
    "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
    "                                   ",
  },

  arch = {
    "                    ▄                   ",
    "                   ▟█▙                  ",
    "                  ▟███▙                 ",
    "                 ▟█████▙                ",
    "                ▟███████▙               ",
    "               ▂▔▀▜██████▙              ",
    "              ▟██▅▂▝▜█████▙             ",
    "             ▟█████████████▙            ",
    "            ▟███████████████▙           ",
    "           ▟█████████████████▙          ",
    "          ▟███████████████████▙         ",
    "         ▟█████████▛▀▀▜████████▙        ",
    "        ▟████████▛      ▜███████▙       ",
    "       ▟█████████        ████████▙      ",
    "      ▟██████████        █████▆▅▄▃      ",
    "     ▟██████████▛        ▜█████████▙    ",
    "    ▟██████▀▀▀              ▀▀██████▙   ",
    "   ▟███▀▘                       ▝▀███▙  ",
    "  ▟▛▀                               ▀▜▙ ",
  },

  pacman = {
    "                                    ",
    "               ██████               ",
    "           ████▒▒▒▒▒▒████           ",
    "         ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██         ",
    "       ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██       ",
    "     ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒         ",
    "     ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓     ",
    "     ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓     ",
    "   ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██   ",
    "   ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██   ",
    "   ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██   ",
    "   ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██   ",
    "   ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██   ",
    "   ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██   ",
    "   ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██   ",
    "   ██      ██      ████      ████   ",
  },

  anya = {
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔⣰⣿⣟⡽⢋⡴⣿⠏⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠹⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⡿⣡⠏⣴⡟⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⢹⣿⣿⣿⣿⡿⠏⠁⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⣠⢾⣿⣿⡛⣰⡏⣼⣿⡇⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⣿⡿⢛⣻⡅⠀⡆⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⣠⡟⣸⣿⣿⢠⣿⠃⣿⣿⠃⣼⢿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⡇⢿⡇⣿⣿⠃⢠⡟⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⢠⣿⢃⣿⣿⠇⣾⡟⠀⣿⢇⣴⡄⢸⣿⣿⣿⡟⣿⣧⠘⣿⣿⡇⣿⢿⢻⣷⠸⣇⢿⣿⠀⠀⣧⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⡼⢹⡿⢸⣿⡿⢸⠟⣵⡿⠈⠈⠿⣷⠈⣿⣿⣿⠆⢿⣷⢀⢻⣿⡆⢹⢼⣷⣿⢀⣿⡜⢿⠦⠀⠩⡄⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⣘⡇⣾⡿⢸⣿⡇⣠⡾⢋⣶⣦⠁⢒⡘⣷⡘⣿⣿⡄⣎⠻⡼⣧⡙⣿⣌⠘⣿⣿⢸⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⣰⣿⡇⢿⣿⢸⡿⢰⣿⢡⣿⠉⣯⣄⠀⣷⣿⣿⣌⡻⢧⢹⣷⢆⣉⠠⠄⡀⢢⠹⣿⢸⣿⣿⣿⡿⢱⣦⠄⢠⣶⠀⠀⠀⠀",
    "⠀⠀⣰⣿⣿⣷⢸⣿⠸⣿⢸⡏⣼⣿⠀⠟⠁⣸⣿⣿⣿⣿⣿⣷⣶⣴⡟⠿⡁⠀⢹⡎⢷⡹⢸⣿⣿⠟⣠⣿⠏⣼⢸⣿⡃⠀⠀⠀",
    "⠀⠀⣿⣿⣿⣿⡆⣿⡇⣿⢸⣿⡸⣿⣷⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣷⡀⣸⣿⢸⣇⢸⣿⡏⣸⣿⡏⣸⣿⢸⣿⡇⠀⠀⠀",
    "⠀⠀⢿⣿⣿⣿⣷⠸⣷⠸⢸⣿⣷⣮⣛⣛⣋⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⢠⣠⣿⡿⢸⠏⣾⢋⣴⣿⢋⣴⣿⣿⢸⣿⡏⡶⠀⠀",
    "⠀⡇⣿⣿⣿⣿⣿⣧⡹⣧⠈⣿⣿⣿⣿⣿⣿⣿⡟⠛⠿⢿⣿⣿⣟⠿⣿⣿⣿⣿⡿⣣⡟⠜⣱⣿⠟⣴⣿⣿⣿⣿⢸⣿⠃⣟⡇⠀",
    "⢘⠀⢻⣿⣿⣿⣿⣿⣷⡘⢆⠻⣿⣿⣿⣿⣿⡿⣰⣿⣿⡇⢿⣿⣿⣿⣶⣭⣭⣭⣾⡟⣠⣾⠟⣥⣿⣿⣿⣿⣿⡇⣼⡿⠸⣸⣿⡄",
    "⢈⠀⠸⣿⣿⣿⣿⣿⣿⣿⡆⠀⠉⠻⢿⣿⣿⡇⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⢏⡼⢛⣴⣿⣿⣿⣿⣿⣿⣿⢁⣿⢡⢃⡏⣿⡇",
    "⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⢰⡍⣛⠷⢭⣙⣛⣛⣸⣿⣿⣿⣿⣿⡿⠡⢊⣴⣿⣿⣿⣿⣿⣿⣿⣿⡏⣸⢇⡎⠘⡇⣿⡇",
    "⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⠀⢠⣼⣷⣬⠛⣶⣬⣭⠉⡍⠋⠙⢩⣭⡍⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⢣⡎⠀⠀⢹⣿⠃",
    "⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⢣⣾⣿⣿⢿⣿⣇⢹⣻⠿⢛⣩⣭⣝⠻⣿⢁⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠁⠀⠀⠀⣼⡟⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠛⢿⣿⢃⣿⣿⢿⣿⣿⣿⠉⡴⠉⠂⣾⣿⡿⢿⣷⡄⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⢀⠀⠂⠀⠟⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢸⣿⣿⣿⣮⣛⠿⢣⠰⠧⠾⣿⣿⣿⣿⣾⣿⢸⣿⣿⣿⣿⣿⣿⠿⠛⠁⠀⠀⢀⠐⠀⡀⠄⠀⠀",
  },

  -- https://discord.com/channels/869557815780470834/869557816430563370/1273778306122121417
  lotr = {
    "   ⠀⠀⠘⢤⣀⣀⣀⣀⣤⣤⣤⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
    "   ⠀⠀⠀⠀⠉⠛⠛⠿⠿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
    "   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
    "   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
    "   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⣀⠀⠀⠀⠀⠀⠀   ",
    "   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠛⠂⠀⠀⠀   ",
    "   ⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⠀⠀⠀⠀⠀⠀⠀   ",
    "   ⠀⠀⠀⠀⠀⠀⠚⠉⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀   ",
    "   ⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⠛⠀⠀⠀⠀⠀⠀   ",
    "   ⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢀⡀⠀⠀⠀⠀⠀   ",
    "   ⠀⠀⠀⠀⠀⠀⣠⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠈⠓⠦⣀⠀⠀   ",
    "   ⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠈⠳⣼⡿  ",
    "   ⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠈⠁  ",
    "   ⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀   ",
    "   ⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠀⠀⠀⠀⠀⠀⠀   ",
    "   ⠀⣼⣿⣿⣿⣿⣿⣿⡿⠟⠛⠉⠉⠉⠉⠙⠻⠿⣿⣿⣿⣿⣅⠀⠀⠀⠀⠀⠀   ",
    "   ⢰⣿⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⠁⠀⠀⠀⠀⠀⠀   ",
    "   ⡾⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀  ",
    "                                   ",
    "                                   ",
    "  A deadly sword, a healing hand,  ",
    "a back that bent beneath its load; ",
    " a trumpet-voice, a burning brand, ",
    "    a weary pilgrim on the road.   ",
  },

  rdr = {
    "                                  _.- ■ ▄▄█▓▓▄█▓▓▓▓▄▓▓▒▄▄                           ",
    "                                ▄█▓▒  ▄▒▓▓██████▓▒▒░▒░▓█▓▀▄                         ",
    "                              ,▓█░      ░░░▒▒▓▓██▓░░░▒▓▓██▄▀■▄                      ",
    "   ▄▓▀▀▀▀█▄                  ,▓░░        ░░░░▒▒▒▓░░░░░▒▒▓█▀ ▄░▀▄                    ",
    "  █:.    `▀▓█▄              ,███▓▒░    ░░░▒▒▓▓▓██▓▒░░▒▒▓█▀ ▄▓▒█▄▀.                  ",
    "  ▌_        `▀▒▄     ▄▀▀▀▀▀▀▀█▓▄▓▒░░ ░░░▒▒▓█████▓▒░░▒▒▓█▀ ▄▓▒██▓█:                  ",
    "  ▌___         `▀▓▄▄█ .▒░░ __-_ ▀▀▄▒░ ___.___.__▒░░▓▓█▀ ▄░▒▓█▓▓▓█▌                  ",
    "  █____           `▀░▒▓▄ ▒░░-  -_  ▀▄\":::::::::.`'==,_░█▓▓▓▓▓▓▓██:                  ",
    "   █_____            `▀▀█▄▄▀░░    \" ■:::x:::::x:::::.`'==.▓▓▓▓█▒'                  ",
    "    ▓▄_____             ▄▄`▀▀█▓█▓▀▀▀:~::===__::::::::x::::.`.▓██'                   ",
    "     ▀▓░_____        ,▄░░▒▒▓▄▄`▀██████████▓▓▓▓```==___::::x:.`.░                    ",
    "       ▀▓░_____     ,█▓▌▄ ░▓▓▒░▄▄`▀▀█████████████▓▒▒▒░░`==_::x .                   ",
    "         ▀▓░░____  ,░▌▓▌▓█░▒▓▒▒▓▒█▓▄_`▀▀▒▓████████▓▓▒▓▓▓▒▒░`.:.:█.                  ",
    '           ▀▓░░___ ▒▓▌▀▄▀░▒▐▒▓▓██▀        `▀▀░▓████▓███▓░▓▒▒░`."▀█▄.                ',
    "             ▀▒░░ ▐░▌▄  ▐░▀▐▓▓██▌.     x       `▀▒▓███████▓▓▓▒░▄_  ▀▀▀▄▄▄▄▄▄▄▄.     ",
    "               ▀▒.█░░▌▓ ░▌▓▓█▓███▓▄._            ,▄`▀▀▀█▀███▒▓▓▓▒▓░▄_         ▀▀▄   ",
    "                 :░▒▌▄▓▒▐░▀████  ▀▀▐▓▒▄▄▄▄.▄▀▄▄▄░▀▌▄  0  ░▀`▀█▀▒▀▓▓▓▓▓▒░ ░  ░ ■  ▓  ",
    "                 ▀░. ▀▀▀▒▌▐▒▀▀▀▀█▄░▓█▒▓▀▀▀▓▌▄░▀ '▄▀▄       ;░■▄█░▓▓▓▓▓▓▒▒░     ▄▀   ",
    "                 ▀▒▄   ▐  ░▒▒▒▄▄▒▀▀▀░▄░▓█░▄▀_.  ░█▄▓▄    ,▄ ░▓▀▀███▓▓▓▓▒▒░░▄▓▀'     ",
    "                     ▐░   .  ▀▀▀▀ ▓░▒▓░░█▒░▀▀.▄▄._ ▌▀▀█▓▄▄▓▐▌ :    `▀▀▀░▀▀▀▀▀'      ",
    "                      ▀▌  ▄.  ▄░▄ ▀▀▀▀ ▀▀▓█▌▓█▄░█▓░░▌▒░▀█▓█▌'                       ",
    "                          ▐▓▌▓▌░▌ ■▀░░█▐▌▄▄▄▄▌▌▀████▓▄▀█░▀█▒.                       ",
    "                           ▀▓▒░▓     ▀▐ ▀▀ ▀▒██▓▌▄▀▀█░▒░▀▀░'                        ",
    "                           ,▒░▓▌.  ▄▒▌▓▄▓▄▄▄_._▀▀█▓▄:▄░                             ",
    "                          .░▒▒▓▒ ,▀░▀▐▀▀░▀▓▀█▌█▌▄▐▀■                                ",
    "                           :▓░▓▒█▓▄  ▄▄██░▐█▄ ▄░▀ ▐▌                                ",
    "                             ▀░▒▓▄▄ ▄▒▄█░█▄█▌█▄█▀▄█:                                ",
    "                               ▀▓█▓█▐█▄ ▐▐█ ░█▀░▓▓▓                                 ",
    "                                  ▀████░░█▀░▀████▓'                                 ",
    "                                     ▀▀▀▀   `▀▀▀                                    ",
    "                                                                                    ",
  },

  wlcm1 = {
    "  ██████████████████████████████████████████████████  ",
    "  ██████████████████████████████████████████████████  ",
    "  ███   ██   ██   ██   █████      ████    █    █████  ",
    "  ███   ██   ██   ██   █████   ██▄██   ██   ██   ███  ",
    "  ███   ██   ██   ██   █████   ██▀██   ██   ██   ███  ",
    "  █████    █    ████      ██      ██   ██   ██   ███  ",
    "  ██████████████████████████████████████████████████  ",
    "  █████   ██   ██   ██      ██      ██   ██   ██████  ",
    "  █████   ██   ██   ██  ▄▄  ██  ▀▀  ██      ▄▄██████  ",
    "  █████   ██   ██   ██  ██  ██     ▀██   ▄▄   ██████  ",
    "  ███████    █    ████      ██   █  ██   ██   ██████  ",
    "  ██████████████████████████████████████████████████  ",
    "  ██████████████████████████████████████████████████  ",
    "  ████████████████████████████▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀██  ",
    "  ████▀▄▄▀█▀▀█████████████████  AARrrr...         ██  ",
    "  █▀▄▀█▀▀▀ ▀▀▄▀███████████████                    ██  ",
    "  ████████████████▀▀▀▀▀▀▀▀███▀        by Welcome  ██  ",
    "  ███████████████  ▄       █▄███████████████████████  ",
    "  ███████████████          █████████████████████████  ",
    "  ███████████████    ▄▄▄▄▄▄████████▀ ▀██████████████  ",
    "  ████▀█████████▀   ▄▄▄▄███████████   █▀ ███████████  ",
    "  ████ ▀████▀▀      ▀▀▀████████ ▀██   █  ███████████  ",
    "  ████   ▀▀         ██▄████████  ██     ▄██████▀████  ",
    "  █████▄           █████████████▄     ██████▀█  █▀██  ",
    "  ███████▄       ▄█████████████████   ██████▄▀  ▄▄██  ",
    "  ▀▀▀▀▀▀▀▀▀   ▄  ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀   ▀▀▀▀▀▀▀▀  ▀▀▀▀  ",
    "  █████████ ▄███ ██████████████████   ████████  ████  ",
    "  ▄███▄▄▄██▄▄███▄▄████▄██▄▄███▄████▄▄▄██▄▄████▄▄███▀  ",
    "  ██████████████████████████████████████████████████  ",
    "  ███████████████████████████████████████████████▀▄▀  ",
    "  ▀▄▀█▀████▀▄▀▄▀████████████████████████████████████  ",
    "  ▀▄ ▄▀▄▀▄▀▄▀▄████████████▀▄▀▄▀▄▀▄▀▄▀▄████▀▄▀▄▀▄▀▄▀▄  ",
    "    ▀▄      ▀▄▀▄▀▄████████████▀▄▀▄▀▄▀▄▀▄▀ ▀▄▀▀▄▀▄     ",
    "  ▀▄     ▀▄▀▄▀▄▀▄█▀▄▀▄███▀▄ ▀▄                        ",
    "  ▀             ▀▄▀▀▄▀▄▀▄▀▄▀▄                      ▀  ",
    "            ▀▄▀▄▀▄▀▀▄▀▄▀▄▀▄   welcomeworkdays.com  ▄  ",
    "  ▄▀▄            ▀ ▀▄▀ ▀▄▀▄▀                      ▀▄  ",
    "  ▄▀▄▀    ▄▀▄  ▄     ▀▄  ▀ ▀▄              ▄ ▄▀▄▀▄▀▄  ",
  },

  wlcm2 = {
    "                                                      ",
    "         ██╗    ██╗██╗     ██████╗███╗   ███╗         ",
    "         ██║    ██║██║    ██╔════╝████╗ ████║         ",
    "         ██║    ██║██║    ██║     ██╔████╔██║         ",
    "         ██║███╗██║██║    ██║     ██║╚██╔╝██║         ",
    "         ╚███╔███╔╝███████╚██████╗██║ ╚═╝ ██║         ",
    "          ╚══╝╚══╝ ╚══════╝╚═════╝╚═╝     ╚═╝         ",
    "                                                      ",
    "          ██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗         ",
    "          ██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝         ",
    "          ██║    ██║██║   ██║██████╔╝█████╔╝          ",
    "          ██║███╗██║██║   ██║██╔══██╗██╔═██╗          ",
    "          ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗         ",
    "           ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝         ",
    "                                                      ",
    "                              ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄    ",
    "      ▄▀▀▄ ▄▄                 ██AARrrr... ████████    ",
    "   ▄▀▄ ▄▄▄█▄▄▀▄               ██by Welcome████████    ",
    "                  ▄▄▄▄▄▄▄▄   ▄████████████████████    ",
    "                 ██▀███████ ▀                         ",
    "                 ██████████                           ",
    "                 ████▀▀▀▀▀▀        ▄█▄                ",
    "      ▄         ▄███▀▀▀▀           ███ ▄█             ",
    "      █▄    ▄▄██████▄▄▄        █▄  ███ ██             ",
    "      ███▄▄█████████  ▀        ██  █████▀      ▄      ",
    "       ▀███████████             ▀█████      ▄ ██ ▄    ",
    "         ▀███████▀                 ███      ▀▄██▀▀    ",
    "  ▄▄▄▄▄▄▄▄▄███▀██▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄███▄▄▄▄▄▄▄▄██▄▄▄▄  ",
    "           █▀   █                  ███        ██      ",
    "  ▀   ▀▀▀  ▀▀   ▀▀    ▀  ▀▀   ▀    ▀▀▀  ▀▀    ▀▀   ▄  ",
    "                                                      ",
    "                                                 ▄▀▄  ",
    "  ▄▀▄ ▄    ▄▀▄▀▄                                      ",
    "  ▄▀█▀▄▀▄▀▄▀▄▀            ▄▀▄▀▄▀▄▀▄▀▄▀    ▄▀▄▀▄▀▄▀▄▀  ",
    "  ██▄▀██████▄▀▄▀▄▀            ▄▀▄▀▄▀▄▀▄▀▄█▄▀▄▄▀▄▀███  ",
    "  ▄▀█████▄▀▄▀▄▀▄▀ ▄▀▄▀   ▄▀█▄▀██████████████████████  ",
    "  ▄█████████████▄▀▄▄▀▄▀▄▀▄▀▄▀██████████████████████▄  ",
    "  ██████████▄▀▄▀▄▀▄▄▀▄▀▄▀▄▀███WelcomeWorkdays.com██▀  ",
    "  ▀▄▀████████████▄█▄▀▄█▄▀▄▀▄██████████████████████▄▀  ",
    "  ▀▄▀▄████▀▄▀██▀█████▄▀██▄█▄▀██████████████▀█▀▄▀▄▀▄▀  ",
  },

  wlcm3 = {
    "                                                ▄                 ",
    "  ██╗    ██╗██╗     ██████╗███╗   ███╗          ██▄        ▄▀▀▄   ",
    "  ██║    ██║██║    ██╔════╝████╗ ████║      ▄██  ███▄   ▄▀▄▒▄▄▄█▄ ",
    "  ██║    ██║██║    ██║     ██╔████╔██║    ▄█▄███ █████▄           ",
    "  ██║███╗██║██║    ██║     ██║╚██╔╝██║   ▀▀▀▀▀▀████████▄▄▄▄▄▄▄▄   ",
    "  ╚███╔███╔╝███████╚██████╗██║ ╚═╝ ██║          ▀█████████▄▄▄     ",
    "   ╚══╝╚══╝ ╚══════╝╚═════╝╚═╝     ╚═╝            ▀▀▀▀▀▀▀         ",
    "                                                                  ",
    "        ▄▄                                                        ",
    "      ▄▀██▄                ██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗    ",
    "    ▄██████▄▄▄▄▄▄          ██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝    ",
    "         ▀████████▄▄▄▄▄▄▄  ██║    ██║██║   ██║██████╔╝█████╔╝     ",
    "           █████████▄▄▄    ██║███╗██║██║   ██║██╔══██╗██╔═██╗    •",
    "           ████▀▀▀▀▀       ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗  ••",
    "           ██▀              ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ •• ",
    "           █▀                                                •••  ",
    "                              ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄       • ••• •  ",
    "      ▄▀▀▄ ▄▄                 ██AARrrr... ████████     •• ••• •   ",
    "   ▄▀▄ ▄▄▄█▄▄▀▄               ██by Welcome████████   •••• •••     ",
    "                  ▄▄▄▄▄▄▄▄   ▄████████████████████  • • •• ••     ",
    "                 ██◾███████ ▀                    ▄███▄ •••       ",
    "                 ██████████                      ███████ •        ",
    "                 ████▀▀▀▀▀▀        ▄█▄           ▀█████▀          ",
    "      ▄         ▄███▀▀▀▀           ███ ▄█          ▀▀▀            ",
    "      █▄    ▄▄██████▄▄▄        █▄  ███ ██                         ",
    "      ███▄▄█████████  ▀        ██  █████▀      ▄                  ",
    "       ▀███████████             ▀█████      ▄ ██ ▄                ",
    "         ▀███████▀                 ███      ▀▄██▀▀                ",
    "  ▄▄▄▄▄▄▄▄▄███▀██▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄███▄▄▄▄▄▄▄▄██▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄",
    "           █▀   █                  ███        ██                  ",
    "  ▀   ▀▀▀  ▀▀   ▀▀    ▀  ▀▀   ▀    ▀▀▀  ▀▀    ▀▀   ▄              ",
    "                                                                  ",
    "                                                 ▄▀▄              ",
    "  ▄▀▄ ▄    ▄▀▄▀▄                                                  ",
    "  ▄▀█▀▄▀▄▀▄▀▄▀            ▄▀▄▀▄▀▄▀▄▀▄▀    ▄▀▄▀▄▀▄▀▄▀              ",
    "  ██▄▀██████▄▀▄▀▄▀            ▄▀▄▀▄▀▄▀▄▀▄█▄▀▄▄▀▄▀█▄▀▄▀▄▀█▀█▄█▄████",
    "  ▄▀█████▄▀▄▀▄▀▄▀ ▄▀▄▀   ▄▀█▄▀█████████████████████████▀███▄█▄████",
    "  ▄█████████████▄▀▄▄▀▄▀▄▀▄▀▄▀███████████████████████▀█  █▀█▄█▄████",
    "  ██████████▄▀▄▀▄▀▄▄▀▄▀▄▀▄▀███WelcomeWorkdays.com███▄▀  ▄▄████████",
    "  ▀▄▀████████████▄█▄▀▄█▄▀▄▀▄██████████████████████▄▀██  ██████▀▄█▄",
    "  ▀▄▀▄████▀▄▀██▀█████▄▀██▄█▄▀██████████████▀█▀▄▀▄▀▄▀██  ████▀▄▀▄▀▄",
  },
}

return headers
