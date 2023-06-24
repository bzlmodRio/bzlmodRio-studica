from get_navx_dependencies import get_navx_dependencies


def main():
    group = get_navx_dependencies()
    print(group.version)


if __name__ == "__main__":
    main()
