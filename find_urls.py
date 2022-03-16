import regex
# import hashlib as Hl 
import sys
# from urllib import request


def filtered_files(t: str):
    exts = ['php','js','py','html']
    for ext in exts:
        if not t.endswith('.' + ext):
            return True
    return False

URL_PATTERN = r'\b(?:[A-Za-z0-9-]{1,63}+[.]?)+[A-Za-z0-9-]{1,63}\b'
URL_PATTERN_SPECIAL = r'\b(?:[A-Za-z0-9-]{1,63}+[.]?)+[A-Za-z0-9-]{1,63}\b'
ADSERVERS_URL_LIST_FILE = 'https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt'

def async_fetch_urls_from_remote_file(url_path: str):
    """ Try of write function for fetching urls in async way,
        but If this one will be async, then now I dont see solution to
        write it withour rewriting more code for asynchronous """
    # savfile = open('tmp_urls', 'w')
    # def get_set_and_close_file_callback(result):
    #     savfile.close()
    #     with open('tmp_urls', 'r') as rfile:
    #         result_list = regex.findall(URL_PATTERN, rfile.read())
    #     srl = set(result_list)
    #     return srl
    # downloader = HTTPDownloader(url_path, savfile)
    # downloader.deferred.addBoth(get_set_and_close_file_callback)
    # return downloader.deferred

def sync_fetch_set_urls_from_remote(url: str) -> set:
    """ Open url and then searching there URL-s
        to use uncomment import with requests """
    r = request.urlopen(url)
    data = r.read()
    data = data.decode('utf-8')
    result_list = regex.findall(URL_PATTERN, data)
    r.close()
    return set(result_list)

def fetch_set_of_urls_from_file(path: str) -> set:
    with open(path, 'r', encoding='utf-8') as file:
        result_list = regex.findall(URL_PATTERN, file.read())
    srl = set(filter(filtered_files, result_list))
    return srl

def save_to_binary(path, _set):
    with open(path, 'wb') as savfile:
        for entry in _set:
            try: entry.encode('ascii')
            except: print("Error during encoding text to ascii")
            hash = Hl.sha256(entry.encode('ascii'))
            saved = savfile.write(hash.digest()) 
            # sprawdzanie poprawności zapisu
            if saved != hash.digest_size:
                savfile.seek(-saved, 1)  # cofnij się o ilosc zapisanych danych
                saved = savfile.write(hash.digest())  # powtórz zapis
                if saved != hash.digest_size:  # check data
                    raise Exception("Second try of saving data failed")

# save_to_binary('urls', srl)

def find_hash():
    # test sprawdzania hashy
    try: file = open('urls', 'rb')
    except OSError:
        print('file not open, probably not found')
        exit(-1)
    while True:
        file.seek(0)
        url = input('find url: ')
        if url == 'exit':
            break
        try: hash = Hl.sha256(url.encode('ascii'))
        except: print('you probably enter text, which can\'t be encode as ascii'); continue
        
        while True:
            block = file.read(hash.digest_size)
            if block == b'':
                break
            if block == hash.digest():
                print('znaleziono adres: %s' % url)
                break
    file.close()

def main(*args):
    if 'testing' in args:
        szukaj_haszy()
    elif 'load-url' in args:
        urls_set = fetch_set_of_urls()
        # if 'file' in args:
        #    idx = args.index('file') + 1
        #    if idx > len(args)-1:
        #        print('odjebao')
        #        exit(-1)
        if 'save' in args:
            save_to_binary('urls', urls_set)
            print('zapisano w pliku urls')
            if 'stdout' in args:
                # w przeciwnym przypadku wypisz na standardowe wyjscie
                print(urls_set)
        else: 
            print(urls_set)
        exit(0)
    else:
        print('Usage: python {} [ testing | load-url [ save [stdout] ] ]'.format(__file__))


if __name__ == "__main__":
    arguments = sys.argv[1:]
    main(*arguments)
