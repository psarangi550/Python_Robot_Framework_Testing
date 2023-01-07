import os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))


def create_folder(folder):
    if not os.path.exists(os.path.join(BASE_DIR, folder)):
        os.mkdir(os.path.join(BASE_DIR, folder))
        return True
    return False
