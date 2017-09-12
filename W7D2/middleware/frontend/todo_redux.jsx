import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  store.dispatch = addLoggingToDispatch(store);

  // storemee = applyMiddlewares(store, addLoggingToDispatch);

  // window.store = store;
  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});


//
// const addLoggingToDispatch = (store) => {
//   const temp = store.dispatch;
//   return (action) => {
//     console.log(store.getState());
//     console.log(action);
//     store.dispatch(action);
//     console.log(store.getState());
//   }
// }

  // const addLoggingToDispatch = store => next => action => {
  //   return next(action);
  // };

  // const applyMiddlewares = (store, ...args) => {
  //   let dispatch = store.dispatch;
  //   args.forEach((mid) => {
  //     dispatch = mid(store)(dispatch);
  //   });
  //   return Object.assign({}, store, { dispatch });
  // };
