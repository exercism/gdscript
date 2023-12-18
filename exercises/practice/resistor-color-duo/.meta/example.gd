const COLORS = ["black",
                "brown",
                "red",
                "orange",
                "yellow",
                "green",
                "blue",
                "violet",
                "grey",
                "white"]

func color_code(colors):
    var tens = colors[0]
    var ones = colors[1]
    return COLORS.find(tens) * 10 + COLORS.find(ones)
