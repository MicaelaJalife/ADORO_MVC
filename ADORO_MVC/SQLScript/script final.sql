USE [AdoroDB]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616003154_ADORO_MVC.Context.AdoroDatabaseContext', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616012946_Columna.Imagen.Actividad', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220616015919_Sala.esid', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623002547_Migacion1', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623002708_Migracion1', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623003355_Migracion2', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220623021717_202206222317', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220629020524_se.agrego.contador', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220630015555_usuario.agregado', N'3.1.25')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220630015957_usuario.agregado1', N'3.1.25')
GO
SET IDENTITY_INSERT [dbo].[Actividades] ON 

INSERT [dbo].[Actividades] ([Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (N'Muestra Origami', 0, CAST(N'2022-06-22T23:07:00.0000000' AS DateTime2), CAST(N'2022-07-09T23:08:00.0000000' AS DateTime2), 1, N'origami.jpg', N'Muestra Origami a cargo de Micaela Jalife. Inspirada en la naturaleza y sus animales, Micaela creó esta serie de obras de origami trabajando con diferentes papeles orgánicos hechos a partir de hojas secas.', 5, 1, 10)
INSERT [dbo].[Actividades] ([Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (N'Taller de Danza Clásica', 0, CAST(N'2022-07-05T22:55:00.0000000' AS DateTime2), CAST(N'2023-01-06T22:55:00.0000000' AS DateTime2), 2, N'danza.jpg', N'Taller de danza clásica a cargo de la primera bailarina del Teatro Colón. Será un taller introductorio destinado a principiantes que quieren comenzar a investigar esta disciplina', 4, 2, 0)
INSERT [dbo].[Actividades] ([Nombre], [EstadoAct], [FechaInicio], [FechaFin], [SalaId], [Imagen], [Descripcion], [GeneroActividad], [TipoActividad], [Contador]) VALUES (N'Muestra de Arte', 0, CAST(N'2022-07-12T14:24:00.0000000' AS DateTime2), CAST(N'2022-07-30T14:24:00.0000000' AS DateTime2), 3, N'fotografia.jpg', N'Muestra del artista Julio Hernandez. Estará exponiendo su última serie de pinturas inspiradas en relatos y vivencias durante la cuarentena', 5, 1, 0)
SET IDENTITY_INSERT [dbo].[Actividades] OFF
GO
SET IDENTITY_INSERT [dbo].[Salas] ON 

INSERT [dbo].[Salas] ([CapacidadMax], [AlAireLibre], [Nombre]) VALUES (20, 1, N'Sala 1')
INSERT [dbo].[Salas] ([CapacidadMax], [AlAireLibre], [Nombre]) VALUES (35, 1, N'Sala 2')
INSERT [dbo].[Salas] ([CapacidadMax], [AlAireLibre], [Nombre]) VALUES (15, 0, N'Sala 3')
SET IDENTITY_INSERT [dbo].[Salas] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (N'Sacha', N'Buengueroff', N'sachabuengueroff', N'12345678', 0)
INSERT [dbo].[Usuario] ([Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (N'Nicolas', N'Lavarello', N'nicolaslavarello', N'12345678', 0)
INSERT [dbo].[Usuario] ([Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (N'Micaela', N'Jalife', N'micaelajalife', N'12345678', 0)
INSERT [dbo].[Usuario] ([Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (N'Julio', N'Gutierrez', N'juliogutierrez', N'2345678', 1)
INSERT [dbo].[Usuario] ([Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (N'pepe', N'lopez', N'pepelopez', N'12345678', 1)
INSERT [dbo].[Usuario] ([Nombre], [Apellido], [UserName], [Password], [Rol]) VALUES (N'Nicolas', N'Ortiz', N'nicolasortiz', N'Franklin.114', 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
