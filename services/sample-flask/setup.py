from setuptools import setup

setup(
   name='sample_flask',
   version='1.0',
   description='A useful module',
   author='Man Foo',
   author_email='foomail@foo.com',
   packages=['sample_flask'],  #same as name
   install_requires=['flask'], #external packages as dependencies
   entry_points={
       'console_scripts': [
           'sample-flask = sample_flask.app:main',
        ]
    }
)
