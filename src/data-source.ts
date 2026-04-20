import { DataSource } from 'typeorm';

export const AppDataSource = new DataSource({
  type: 'mysql',
  host: 'db',
  port: 3306,
  username: 'root',
  password: 'root',
  database: 'blog_db',

  entities: ['dist/**/*.entity.js'],
  migrations: ['dist/migrations/*.js'],
});
