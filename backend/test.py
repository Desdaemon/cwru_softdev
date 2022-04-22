import unittest

from backend.main import TripsServicer, UsersServicer


class UsersTests(unittest.TestCase):
    users = UsersServicer()

    def test_register(self):
        pass

    def test_register_null_value(self):
        pass

    def test_register_invalid_value(self):
        pass

    def test_login(self):
        pass

    def test_login_null_value(self):
        pass

    def test_login_invalid_value(self):
        pass


class TripsTest(unittest.TestCase):
    trips = TripsServicer()

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
