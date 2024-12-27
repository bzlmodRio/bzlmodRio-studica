from get_studica_dependencies import get_studica_dependencies


def main():
    group = get_studica_dependencies()
    print(group.version)


if __name__ == "__main__":
    main()
