


def factory_404_partner():
    partner = {
        'name': 'The Pit',
        'email': 'contato@pit.com.br',
        'whatsapp': '11999999999',
        'business': 'Conveniência'
    }
    return partner

def factory_enable_partner():
    partner = {
        'name': 'Forneria Rhaegus',
        'email': 'contato@rhaegus.com.br',
        'whatsapp': '11999999999',
        'business': 'Restaurante'
    }
    return partner

def factory_new_partner():
    partner = {
        'name': 'Pizzas Raphilske',
        'email': 'contato@raphilske.com.br',
        'whatsapp': '11999999999',
        'business': 'Restaurante'
    }
    return partner


def factory_dup_name():
    partner = {
        'name': 'Adega Cain',
        'email': 'contato@cain.com.br',
        'whatsapp': '21999999999',
        'business': 'Conveniência'
    }
    return partner


def factory_partner_list():
    p_list = [
        {
            'name': 'Mercado Bela Rosa',
            'email': 'contato@bel.com',
            'whatsapp': '21999991001',
            'business': 'Supermercado'
        },

        {
            'name': 'Bistrô Luz da Lua',
            'email': 'contato@luar.com',
            'whatsapp': '21999991002',
            'business': 'Restaurante'
        },

        {
            'name': 'Toca da Onça',
            'email': 'contato@onça.com',
            'whatsapp': '21999991003',
            'business': 'Conveniência'
        },
    ]

    return p_list