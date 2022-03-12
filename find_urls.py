import regex
import hashlib as Hl 
import sys


def filtered_files(t: str):
    exts = ['php','js','py','html']
    for ext in exts:
        if not t.endswith('.' + ext):
            return True
    return False

URL_PATTERN = r'\b(?:[A-Za-z0-9-]{1,63}+[.]?)+[A-Za-z0-9-]{1,63}\b'
URL_PATTERN_SPECIAL = r'\b(?:[A-Za-z0-9-]{1,63}+[.]?)+[A-Za-z0-9-]{1,63}\b'


def fetch_set_of_urls():
    with open('easylist.txt', 'r', encoding='utf-8') as file:
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

def szukaj_haszy():
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
