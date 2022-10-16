from math import ceil
import re

WPM = 210  # Somewhat average reading WPM
TRUNCATE_WORDS = 150  # Truncate after this many words


def word_count(source: str) -> int:
    return len(re.findall(r"\w+", source))


def estimate_reading_time(source: str) -> int:
    wc = word_count(source)
    mins = ceil(wc / WPM)
    return mins


# This can be improved later
def truncate_article(source: str) -> str:
    np = source.index("\n")
    if np > 0:
        return source[:np] + "..."
    else:
        return source[: source.index(" ", 300)] + "..."
