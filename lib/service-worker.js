import firebase from "firebase/app";
import "firebase/messaging";

// See: https://github.com/microsoft/TypeScript/issues/14877
/** @type {ServiceWorkerGlobalScope} */
let self;

function initInSw() {
    // [START messaging_init_in_sw]
    // Give the service worker access to Firebase Messaging.
    // Note that you can only use Firebase Messaging here. Other Firebase libraries
    // are not available in the service worker.
    importScripts('https://www.gstatic.com/firebasejs/8.4.1/firebase-app.js');
    importScripts('https://www.gstatic.com/firebasejs/8.4.1/firebase-messaging.js');

    // Initialize the Firebase app in the service worker by passing in
    // your app's Firebase config object.
    // https://firebase.google.com/docs/web/setup#config-object
    firebase.initializeApp({
        apiKey: "AIzaSyCkpmRkScFomU7ldv3-WmqfR_dC0SqoZow",
        authDomain: "store-front-676a7.firebaseapp.com",
        projectId: "store-front-676a7",
        storageBucket: "store-front-676a7.appspot.com",
        messagingSenderId: "990387901878",
        appId: "1:990387901878:web:d32d8be9ece674c41f5d17",
        measurementId: "G-SGSZCE9FTS"
    });

    // Retrieve an instance of Firebase Messaging so that it can handle background
    // messages.
    const messaging = firebase.messaging();
    // [END messaging_init_in_sw]
}

function onBackgroundMessage() {
    const messaging = firebase.messaging();

    // [START messaging_on_background_message]
    messaging.onBackgroundMessage((payload) => {
        console.log('[firebase-messaging-sw.js] Received background message ', payload);
        // Customize notification here
        const notificationTitle = 'Background Message Title';
        const notificationOptions = {
            body: 'Background Message body.',
            icon: '/firebase-logo.png'
        };

        self.registration.showNotification(notificationTitle,
            notificationOptions);
    });
    // [END messaging_on_background_message]
}