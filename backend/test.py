from typing import Any
import unittest
from generated.greeter_pb2 import *

from main import TripsServicer, UsersServicer, prepareDb

TEST_DB = 'test.db'

CTX: Any = None


class UsersTests(unittest.TestCase):
    users = UsersServicer()

    def setUp(self):
        # reset the DB every test
        prepareDb(TEST_DB)

    def test_register(self):
        user = self.users.Register(RegisterRequest(
            username='foobar',
            email='food@food.com',
            password='hunter3'
        ), CTX)
        self.assertEqual(user.user.username, 'foobar')
        self.assertEqual(user.user.email, 'food@food.com')

    def test_register_existing_username(self):
        try:
            self.users.Register(RegisterRequest(
                username='foo',
                email='foo@foo.com',
                password='hunter2'
            ), CTX)
            self.fail('failed to catch registering against user foo')
        except:
            pass

    def test_login(self):
        user = self.users.Login(LoginRequest(
            identity='foo',
            password='hunter2'
        ), CTX)
        self.assertEqual(user.user.username, 'foo')
        user2 = self.users.Login(LoginRequest(
            identity='foo@foo.com',
            password='hunter2',
        ), CTX)
        self.assertEqual(user2.user.email, 'foo@foo.com')
        # if fail, please change the database
        self.assertEqual(user.user.user_id, user2.user.user_id)

    def test_login_null_value(self):
        user = self.users.Login(LoginRequest(), CTX)
        # in gRPC, no attributes are ever null
        # so just assert that we DID pass an error message
        self.assertTrue(user.error)
        user = self.users.Login(LoginRequest(
            identity='foo'
        ), CTX)
        self.assertTrue(user.error)
        user = self.users.Login(LoginRequest(
            password='foo'
        ), CTX)
        self.assertTrue(user.error)

    def test_login_invalid_value(self):
        user = self.users.Login(LoginRequest(
            identity='bogus',
            password='bogus'
        ), CTX)
        self.assertTrue(user.error)


class TripsTest(unittest.TestCase):
    trips = TripsServicer()

    def setUp(self):
        prepareDb(TEST_DB)

    def test_trips_of(self):
        res = self.trips.TripsOf(TripsOfRequest(
            user_id=1  # foo
        ), CTX)
        self.assertTrue(len(res.trips))

    def test_trips_of_nonexistent_user(self):
        res = self.trips.TripsOf(TripsOfRequest(user_id=0), CTX)
        self.assertFalse(len(res.trips))

    def test_trips_of_user_with_no_trips(self):
        res = self.trips.TripsOf(TripsOfRequest(
            user_id=2  # bar
        ), CTX)
        self.assertFalse(len(res.trips))

    def test_photos_of(self):
        res = self.trips.PhotosOf(PhotosOfRequest(
            user_id=1,
            trip_id=1
        ), CTX)
        self.assertTrue(len([*res]), 'foo should have some photos')

    def test_photos_of_nonexistent_user(self):
        res = self.trips.PhotosOf(PhotosOfRequest(
            user_id=0,
            trip_id=1
        ), CTX)
        self.assertFalse(len([*res]), 'user id 0 does not own trip id 1')

    def test_photos_of_user_with_no_photos(self):
        res = self.trips.PhotosOf(PhotosOfRequest(
            user_id=2,
            trip_id=1
        ), CTX)
        self.assertFalse(len([*res]))

    def test_add_trip(self):
        res = self.trips.AddTrip(AddTripRequest(
            user_id=1,
            trips=[Trip(
                stops=[
                    Destination(coords=Coords(lat=12, lon=12)),
                    Destination(coords=Coords(lat=13, lon=13)),
                ]
            )]
        ), CTX)
        self.assertFalse(len(res.errors))

    def test_add_trip_to_nonexistent_user(self):
        try:
            self.trips.AddTrip(AddTripRequest(user_id=0), CTX)
            self.fail('Failed to catch adding to user 0')
        except:
            pass

    def test_add_photo(self):
        self.trips.AddPhotoToDestination(AddDestPhotoRequest(
            # There should be a coordinate like this in the DB
            coords=Coords(lat=42, lon=-12.12),
            photos=[Photo(url='bogus')]
        ), CTX)

    def test_add_photo_to_nonexistent_user(self):
        try:
            self.trips.AddPhotoToDestination(AddDestPhotoRequest(
                coords=Coords(lat=0, lon=0),
                photos=[Photo(url='bogus')]
            ), CTX)
            self.fail('Failed to catch add to coord 0, 0')
        except:
            pass

    def test_delete_trip(self):
        res = self.trips.DeleteTrip(DeleteTripRequest(
            user_id=1,
            trip_id=1
        ), CTX)
        self.assertFalse(len(res.errors))


if __name__ == "__main__":
    unittest.main()
