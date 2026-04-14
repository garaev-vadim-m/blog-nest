import { IsEmail, IsInt, IsString, MinLength } from 'class-validator';

export class RegisterDto {
  @IsString()
  name: string;

  @IsEmail()
  email: string;

  @IsInt()
  age: number;

  @IsString()
  @MinLength(6)
  password: string;
}
