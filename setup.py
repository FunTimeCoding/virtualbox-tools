try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

setup(
    name='virtual-box-tools',
    version='0.1',
    description='Stub description for virtual-box-tools.',
    packages=['virtual_box_tools'],
    author='Alexander Reitzel',
    author_email='funtimecoding@gmail.com',
    url='http://example.org',
    download_url='http://example.org/virtual-box-tools.tar.gz',
    install_requires=['pyyaml', 'python-utility==0.1'],
    scripts=['bin/node-config'],
    dependency_links=[
        'git+https://github.com/FunTimeCoding/python-utility.git@master'
        '#egg=python-utility-0.1'
    ]
)