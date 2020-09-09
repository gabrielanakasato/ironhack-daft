def index_page_file(url):

    import requests
    from slugify import slugify

    try:
        # Get the response for the url
        response = requests.get(url)

        # Get the content in the url
        content = response.content

        # Create the file name
        file_name = slugify(url) + '.html'

        # Create the file if it does not exist
        file = open(file_name, 'wb')

        # Write the content in the file
        file.write(content)

        # Close the file
        file.close()

    except Exception as Error:
        print(f'Erro na {url}')
        print(Error)