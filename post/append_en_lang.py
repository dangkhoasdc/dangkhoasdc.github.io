"""
Convert default file to en language
"""

from pathlib import Path
import shutil

def main():
    docs = [f.absolute().as_posix() for f in Path('.').glob("**/*.md")]
    docs = [f for f in docs if ".vi." not in f]
    # change filename
    for doc in docs:
        new_doc = doc[:-2] + "en.md"
        print(f"{doc} --> {new_doc}")
        shutil.move(doc, new_doc)


if __name__ == '__main__':
    main()
