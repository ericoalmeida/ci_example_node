import { Router } from 'express'

const routes = Router();

routes.get('/', (_, response) => {
  response.json({
    status: "Working properly!"
  });
});

export default routes;
