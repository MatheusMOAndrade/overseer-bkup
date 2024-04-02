USE Overseer;

INSERT INTO Companies(
    name,
    cnpj,
    logo
) VALUES (
    'Pioventi',
    '32.559.198/0001-34',
    null
);

INSERT INTO Users(
    id,
    company_id,
    level,
    name,
    password,
    email,
    phone
) VALUES (
    '1',
    '1',
    '10',
    'Overseer',
    'kg0tHftBDJzapEtTfN3nFGCm4C1FzPLBkGIMrU6cnOgZUlOmeTEQg/eAWIZTcIVgEK4HWyuj7XQkMMP+9UARcLMJsAJqSO/E3jInAqTZsBu0ZdT/WnlEJffAIPTa14LqunkV7T7/xsY+RIR7+6cYQHkIdKo=',
    'admin@overseer.com',
    null
);
