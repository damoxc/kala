from setuptools import setup

requires = [
    'bottle',
    'bottle_mongo',
    'pymongo'
]

setup(
    name='kala',
    version='0.5.1',
    packages=[''],
    url='https://github.com/cloudbuy/kala',
    license='MIT',
    author='Paul Etherton',
    author_email='paul@pjetherton.co.uk',
    description='Simple read-only REST API for mongoDB',
    install_requires=requires,
    entry_points={
        'console_scripts': [
            'kala = kala:main'
        ]
    }
)
