import unittest
from generated.greeter_pb2 import *

from main import TripsServicer, UsersServicer, prepareDb

TEST_DB = 'test.db'


class UsersTests(unittest.TestCase):
    users = UsersServicer()

    def setUp(self):
        prepareDb(TEST_DB)

    def test_register(self):
        user = self.users.Register(RegisterRequest(
            username='foobar',
            email='food@food.com',
            password='hunter3'
        ), None)
        self.assertIsNotNone(user.user)
        self.assertEqual(user.user.username, 'foobar')
        self.assertEqual(user.user.email, 'food@food.com')

    def test_register_null_value(self):
        pass

    def test_register_invalid_value(self):
        pass

    def test_login(self):
        user = self.users.Login(LoginRequest(
            identity='foo',
            password='hunter2'
        ), None)
        self.assertIsNotNone(user.user)

    def test_login_null_value(self):
        pass

    def test_login_invalid_value(self):
        pass


class TripsTest(unittest.TestCase):
    trips = TripsServicer()

    def setUp(self):
        prepareDb(TEST_DB)

    def test_trips_of(self):
        pass

    def test_trips_of_nonexistent_user(self):
        pass

    def test_trips_of_user_with_no_trips(self):
        pass

    def test_photos_of(self):
        pass

    def test_photos_of_nonexistest_user(self):
        pass

    def test_photos_of_user_with_no_photos(self):
        pass

    def test_add_trip(self):
        pass

    def test_add_trip_null_value(self):
        pass

    def test_add_trip_invalid_value(self):
        pass

    def test_add_photo(self):
        pass

    def test_add_photo_null_value(self):
        pass

    def test_add_photo_invalid_value(self):
        pass


if __name__ == "__main__":
    unittest.main()
