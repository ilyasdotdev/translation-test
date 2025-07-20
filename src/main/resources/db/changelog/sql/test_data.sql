-- Test data for translation application
-- This script inserts approximately 500+ translation records

-- Insert locales
INSERT INTO locales (code, name) VALUES 
('en', 'English'),
('es', 'Spanish'),
('fr', 'French'),
('de', 'German'),
('it', 'Italian'),
('pt', 'Portuguese'),
('ru', 'Russian'),
('ja', 'Japanese'),
('ko', 'Korean'),
('zh', 'Chinese');

-- Insert tags
INSERT INTO tags (name) VALUES 
('ui'),
('validation'),
('menu'),
('button'),
('form'),
('error'),
('success'),
('navigation'),
('modal'),
('footer'),
('header'),
('auth');

-- Insert translation keys
INSERT INTO translation_keys (key, description) VALUES ('button.save', 'Save');
INSERT INTO translation_keys (key, description) VALUES ('button.cancel', 'Cancel');
INSERT INTO translation_keys (key, description) VALUES ('button.submit', 'Submit');
INSERT INTO translation_keys (key, description) VALUES ('button.edit', 'Edit');
INSERT INTO translation_keys (key, description) VALUES ('button.delete', 'Delete');
INSERT INTO translation_keys (key, description) VALUES ('button.add', 'Add');
INSERT INTO translation_keys (key, description) VALUES ('button.search', 'Search');
INSERT INTO translation_keys (key, description) VALUES ('button.filter', 'Filter');
INSERT INTO translation_keys (key, description) VALUES ('button.reset', 'Reset');
INSERT INTO translation_keys (key, description) VALUES ('button.confirm', 'Confirm');
INSERT INTO translation_keys (key, description) VALUES ('menu.home', 'Home');
INSERT INTO translation_keys (key, description) VALUES ('menu.about', 'About');
INSERT INTO translation_keys (key, description) VALUES ('menu.contact', 'Contact');
INSERT INTO translation_keys (key, description) VALUES ('menu.products', 'Products');
INSERT INTO translation_keys (key, description) VALUES ('menu.services', 'Services');
INSERT INTO translation_keys (key, description) VALUES ('menu.profile', 'Profile');
INSERT INTO translation_keys (key, description) VALUES ('menu.settings', 'Settings');
INSERT INTO translation_keys (key, description) VALUES ('menu.logout', 'Logout');
INSERT INTO translation_keys (key, description) VALUES ('menu.help', 'Help');
INSERT INTO translation_keys (key, description) VALUES ('menu.dashboard', 'Dashboard');
INSERT INTO translation_keys (key, description) VALUES ('form.name', 'Name');
INSERT INTO translation_keys (key, description) VALUES ('form.email', 'Email');
INSERT INTO translation_keys (key, description) VALUES ('form.password', 'Password');
INSERT INTO translation_keys (key, description) VALUES ('form.confirm_password', 'Confirm Password');
INSERT INTO translation_keys (key, description) VALUES ('form.phone', 'Phone');
INSERT INTO translation_keys (key, description) VALUES ('form.address', 'Address');
INSERT INTO translation_keys (key, description) VALUES ('form.city', 'City');
INSERT INTO translation_keys (key, description) VALUES ('form.country', 'Country');
INSERT INTO translation_keys (key, description) VALUES ('form.company', 'Company');
INSERT INTO translation_keys (key, description) VALUES ('form.description', 'Description');
INSERT INTO translation_keys (key, description) VALUES ('validation.required', 'This field is required');
INSERT INTO translation_keys (key, description) VALUES ('validation.email_invalid', 'Please enter a valid email address');
INSERT INTO translation_keys (key, description) VALUES ('validation.password_weak', 'Password must be at least 8 characters');
INSERT INTO translation_keys (key, description) VALUES ('validation.passwords_mismatch', 'Passwords do not match');
INSERT INTO translation_keys (key, description) VALUES ('validation.phone_invalid', 'Please enter a valid phone number');
INSERT INTO translation_keys (key, description) VALUES ('validation.max_length', 'Maximum length exceeded');
INSERT INTO translation_keys (key, description) VALUES ('validation.min_length', 'Minimum length not met');
INSERT INTO translation_keys (key, description) VALUES ('validation.numeric_only', 'Only numbers are allowed');
INSERT INTO translation_keys (key, description) VALUES ('validation.alpha_only', 'Only letters are allowed');
INSERT INTO translation_keys (key, description) VALUES ('validation.date_invalid', 'Please enter a valid date');
INSERT INTO translation_keys (key, description) VALUES ('success.saved', 'Successfully saved');
INSERT INTO translation_keys (key, description) VALUES ('success.deleted', 'Successfully deleted');
INSERT INTO translation_keys (key, description) VALUES ('success.created', 'Successfully created');
INSERT INTO translation_keys (key, description) VALUES ('success.updated', 'Successfully updated');
INSERT INTO translation_keys (key, description) VALUES ('success.sent', 'Successfully sent');
INSERT INTO translation_keys (key, description) VALUES ('success.uploaded', 'Successfully uploaded');
INSERT INTO translation_keys (key, description) VALUES ('success.downloaded', 'Successfully downloaded');
INSERT INTO translation_keys (key, description) VALUES ('success.registered', 'Successfully registered');
INSERT INTO translation_keys (key, description) VALUES ('success.logged_in', 'Successfully logged in');
INSERT INTO translation_keys (key, description) VALUES ('success.password_changed', 'Password changed successfully');
INSERT INTO translation_keys (key, description) VALUES ('error.generic', 'An error occurred');
INSERT INTO translation_keys (key, description) VALUES ('error.network', 'Network error');
INSERT INTO translation_keys (key, description) VALUES ('error.server', 'Server error');
INSERT INTO translation_keys (key, description) VALUES ('error.unauthorized', 'Unauthorized access');
INSERT INTO translation_keys (key, description) VALUES ('error.forbidden', 'Access forbidden');
INSERT INTO translation_keys (key, description) VALUES ('error.not_found', 'Not found');
INSERT INTO translation_keys (key, description) VALUES ('error.timeout', 'Request timeout');
INSERT INTO translation_keys (key, description) VALUES ('error.invalid_data', 'Invalid data');
INSERT INTO translation_keys (key, description) VALUES ('error.file_too_large', 'File too large');
INSERT INTO translation_keys (key, description) VALUES ('error.unsupported_format', 'Unsupported format');
INSERT INTO translation_keys (key, description) VALUES ('modal.confirm_delete', 'Are you sure you want to delete this item?');
INSERT INTO translation_keys (key, description) VALUES ('modal.confirm_action', 'Are you sure you want to perform this action?');
INSERT INTO translation_keys (key, description) VALUES ('modal.unsaved_changes', 'You have unsaved changes. Do you want to continue?');
INSERT INTO translation_keys (key, description) VALUES ('modal.file_upload', 'Upload File');
INSERT INTO translation_keys (key, description) VALUES ('modal.change_password', 'Change Password');
INSERT INTO translation_keys (key, description) VALUES ('modal.user_profile', 'User Profile');
INSERT INTO translation_keys (key, description) VALUES ('modal.settings', 'Settings');
INSERT INTO translation_keys (key, description) VALUES ('modal.about', 'About');
INSERT INTO translation_keys (key, description) VALUES ('modal.terms', 'Terms and Conditions');
INSERT INTO translation_keys (key, description) VALUES ('modal.privacy', 'Privacy Policy');
INSERT INTO translation_keys (key, description) VALUES ('header.welcome', 'Welcome');
INSERT INTO translation_keys (key, description) VALUES ('header.login', 'Login');
INSERT INTO translation_keys (key, description) VALUES ('header.register', 'Register');
INSERT INTO translation_keys (key, description) VALUES ('footer.copyright', '© 2024 All rights reserved');
INSERT INTO translation_keys (key, description) VALUES ('footer.privacy', 'Privacy Policy');
INSERT INTO translation_keys (key, description) VALUES ('footer.terms', 'Terms of Service');
INSERT INTO translation_keys (key, description) VALUES ('footer.contact', 'Contact Us');
INSERT INTO translation_keys (key, description) VALUES ('footer.support', 'Support');
INSERT INTO translation_keys (key, description) VALUES ('auth.login', 'Login');
INSERT INTO translation_keys (key, description) VALUES ('auth.logout', 'Logout');
INSERT INTO translation_keys (key, description) VALUES ('auth.register', 'Register');
INSERT INTO translation_keys (key, description) VALUES ('auth.forgot_password', 'Forgot Password');
INSERT INTO translation_keys (key, description) VALUES ('auth.reset_password', 'Reset Password');
INSERT INTO translation_keys (key, description) VALUES ('auth.change_password', 'Change Password');
INSERT INTO translation_keys (key, description) VALUES ('auth.username', 'Username');
INSERT INTO translation_keys (key, description) VALUES ('auth.password', 'Password');
INSERT INTO translation_keys (key, description) VALUES ('auth.remember_me', 'Remember me');
INSERT INTO translation_keys (key, description) VALUES ('auth.login_failed', 'Login failed');

-- Insert translations
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.save'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Save', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.save'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Guardar', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.save'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Enregistrer', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.save'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Speichern', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.cancel'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Cancel', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.cancel'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Cancelar', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.cancel'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Annuler', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.cancel'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Abbrechen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.submit'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Submit', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.submit'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Enviar', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.submit'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Soumettre', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.submit'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Senden', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.edit'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Edit', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.edit'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Editar', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.edit'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Modifier', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.edit'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Bearbeiten', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.delete'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Delete', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.delete'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Eliminar', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.delete'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Supprimer', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.delete'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Löschen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.add'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Add', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.add'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Agregar', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.add'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Ajouter', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.add'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Hinzufügen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.search'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Search', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.search'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Buscar', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.search'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Rechercher', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.search'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Suchen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.filter'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Filter', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.filter'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Filtrar', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.filter'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Filtrer', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.filter'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Filtern', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.reset'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Reset', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.reset'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Restablecer', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.reset'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Réinitialiser', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.reset'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Zurücksetzen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.confirm'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Confirm', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.confirm'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Confirmar', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.confirm'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Confirmer', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.confirm'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Bestätigen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.home'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Home', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.home'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Inicio', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.home'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Accueil', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.home'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Startseite', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.about'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'About', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.about'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Acerca de', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.about'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'À propos', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.about'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Über uns', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.contact'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Contact', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.contact'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Contacto', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.contact'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Contact', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.contact'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Kontakt', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.products'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Products', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.products'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Productos', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.products'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Produits', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.products'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Produkte', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.services'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Services', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.services'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Servicios', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.services'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Services', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.services'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Dienstleistungen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.profile'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Profile', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.profile'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Perfil', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.profile'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Profil', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.profile'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Profil', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.settings'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Settings', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.settings'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Configuración', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.settings'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Paramètres', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.settings'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Einstellungen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.logout'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Logout', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.logout'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Cerrar sesión', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.logout'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Déconnexion', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.logout'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Abmelden', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.help'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Help', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.help'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Ayuda', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.help'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Aide', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.help'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Hilfe', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.dashboard'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Dashboard', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.dashboard'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Panel', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.dashboard'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Tableau de bord', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.dashboard'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Dashboard', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.name'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Name', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.name'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Nombre', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.name'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Nom', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.name'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Name', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.email'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Email', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.email'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Correo electrónico', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.email'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'E-mail', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.email'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'E-Mail', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.password'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Password', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.password'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Contraseña', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.password'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Mot de passe', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.password'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Passwort', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.confirm_password'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Confirm Password', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.confirm_password'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Confirmar contraseña', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.confirm_password'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Confirmer le mot de passe', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.confirm_password'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Passwort bestätigen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.phone'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Phone', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.phone'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Teléfono', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.phone'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Téléphone', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.phone'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Telefon', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.address'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Address', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.address'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Dirección', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.address'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Adresse', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.address'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Adresse', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.city'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'City', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.city'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Ciudad', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.city'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Ville', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.city'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Stadt', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.country'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Country', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.country'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'País', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.country'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Pays', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.country'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Land', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.company'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Company', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.company'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Empresa', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.company'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Entreprise', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.company'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Unternehmen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.description'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Description', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.description'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Descripción', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.description'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Description', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.description'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Beschreibung', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.required'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'This field is required', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.required'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Este campo es obligatorio', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.required'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Ce champ est obligatoire', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.required'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Dieses Feld ist erforderlich', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.email_invalid'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Please enter a valid email address', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.email_invalid'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Ingrese una dirección de correo válida', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.email_invalid'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Veuillez saisir une adresse e-mail valide', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.email_invalid'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Bitte geben Sie eine gültige E-Mail-Adresse ein', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.password_weak'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Password must be at least 8 characters', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.password_weak'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'La contraseña debe tener al menos 8 caracteres', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.password_weak'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Le mot de passe doit contenir au moins 8 caractères', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.password_weak'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Das Passwort muss mindestens 8 Zeichen lang sein', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.passwords_mismatch'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Passwords do not match', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.passwords_mismatch'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Las contraseñas no coinciden', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.passwords_mismatch'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Les mots de passe ne correspondent pas', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.passwords_mismatch'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Die Passwörter stimmen nicht überein', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.phone_invalid'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Please enter a valid phone number', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.phone_invalid'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Ingrese un número de teléfono válido', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.phone_invalid'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Veuillez saisir un numéro de téléphone valide', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.phone_invalid'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Bitte geben Sie eine gültige Telefonnummer ein', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.max_length'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Maximum length exceeded', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.max_length'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Longitud máxima excedida', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.max_length'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Longueur maximale dépassée', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.max_length'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Maximale Länge überschritten', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.min_length'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Minimum length not met', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.min_length'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Longitud mínima no alcanzada', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.min_length'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Longueur minimale non atteinte', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.min_length'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Minimale Länge nicht erreicht', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.numeric_only'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Only numbers are allowed', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.numeric_only'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Solo se permiten números', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.numeric_only'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Seuls les chiffres sont autorisés', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.numeric_only'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Nur Zahlen sind erlaubt', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.alpha_only'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Only letters are allowed', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.alpha_only'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Solo se permiten letras', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.alpha_only'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Seules les lettres sont autorisées', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.alpha_only'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Nur Buchstaben sind erlaubt', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.date_invalid'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Please enter a valid date', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.date_invalid'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Ingrese una fecha válida', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.date_invalid'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Veuillez saisir une date valide', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.date_invalid'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Bitte geben Sie ein gültiges Datum ein', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.saved'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Successfully saved', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.saved'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Guardado exitosamente', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.saved'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Enregistré avec succès', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.saved'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Erfolgreich gespeichert', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.deleted'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Successfully deleted', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.deleted'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Eliminado exitosamente', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.deleted'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Supprimé avec succès', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.deleted'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Erfolgreich gelöscht', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.created'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Successfully created', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.created'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Creado exitosamente', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.created'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Créé avec succès', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.created'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Erfolgreich erstellt', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.updated'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Successfully updated', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.updated'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Actualizado exitosamente', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.updated'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Mis à jour avec succès', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.updated'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Erfolgreich aktualisiert', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.sent'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Successfully sent', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.sent'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Enviado exitosamente', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.sent'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Envoyé avec succès', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.sent'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Erfolgreich gesendet', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.uploaded'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Successfully uploaded', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.uploaded'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Subido exitosamente', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.uploaded'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Téléchargé avec succès', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.uploaded'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Erfolgreich hochgeladen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.downloaded'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Successfully downloaded', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.downloaded'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Descargado exitosamente', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.downloaded'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Téléchargé avec succès', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.downloaded'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Erfolgreich heruntergeladen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.registered'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Successfully registered', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.registered'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Registrado exitosamente', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.registered'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Inscrit avec succès', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.registered'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Erfolgreich registriert', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.logged_in'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Successfully logged in', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.logged_in'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Sesión iniciada exitosamente', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.logged_in'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Connecté avec succès', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.logged_in'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Erfolgreich angemeldet', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.password_changed'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Password changed successfully', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.password_changed'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Contraseña cambiada exitosamente', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.password_changed'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Mot de passe modifié avec succès', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.password_changed'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Passwort erfolgreich geändert', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.generic'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'An error occurred', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.generic'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Ha ocurrido un error', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.generic'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Une erreur s''est produite', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.generic'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Ein Fehler ist aufgetreten', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.network'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Network error', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.network'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Error de red', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.network'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Erreur réseau', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.network'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Netzwerkfehler', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.server'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Server error', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.server'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Error del servidor', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.server'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Erreur serveur', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.server'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Serverfehler', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.unauthorized'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Unauthorized access', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.unauthorized'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Acceso no autorizado', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.unauthorized'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Accès non autorisé', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.unauthorized'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Unbefugter Zugriff', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.forbidden'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Access forbidden', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.forbidden'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Acceso prohibido', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.forbidden'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Accès interdit', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.forbidden'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Zugriff verweigert', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.not_found'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Not found', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.not_found'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'No encontrado', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.not_found'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Non trouvé', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.not_found'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Nicht gefunden', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.timeout'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Request timeout', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.timeout'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Tiempo de espera agotado', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.timeout'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Délai d''attente expiré', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.timeout'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Zeitüberschreitung', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.invalid_data'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Invalid data', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.invalid_data'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Datos inválidos', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.invalid_data'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Données invalides', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.invalid_data'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Ungültige Daten', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.file_too_large'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'File too large', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.file_too_large'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Archivo demasiado grande', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.file_too_large'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Fichier trop volumineux', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.file_too_large'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Datei zu groß', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.unsupported_format'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Unsupported format', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.unsupported_format'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Formato no compatible', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.unsupported_format'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Format non pris en charge', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.unsupported_format'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Nicht unterstütztes Format', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.confirm_delete'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Are you sure you want to delete this item?', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.confirm_delete'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 '¿Está seguro de que desea eliminar este elemento?', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.confirm_delete'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Êtes-vous sûr de vouloir supprimer cet élément ?', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.confirm_delete'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Sind Sie sicher, dass Sie dieses Element löschen möchten?', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.confirm_action'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Are you sure you want to perform this action?', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.confirm_action'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 '¿Está seguro de que desea realizar esta acción?', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.confirm_action'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Êtes-vous sûr de vouloir effectuer cette action ?', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.confirm_action'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Sind Sie sicher, dass Sie diese Aktion ausführen möchten?', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.unsaved_changes'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'You have unsaved changes. Do you want to continue?', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.unsaved_changes'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Tiene cambios sin guardar. ¿Desea continuar?', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.unsaved_changes'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Vous avez des modifications non enregistrées. Voulez-vous continuer ?', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.unsaved_changes'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Sie haben ungespeicherte Änderungen. Möchten Sie fortfahren?', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.file_upload'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Upload File', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.file_upload'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Subir archivo', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.file_upload'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Télécharger un fichier', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.file_upload'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Datei hochladen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.change_password'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Change Password', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.change_password'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Cambiar contraseña', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.change_password'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Changer le mot de passe', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.change_password'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Passwort ändern', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.user_profile'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'User Profile', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.user_profile'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Perfil de usuario', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.user_profile'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Profil utilisateur', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.user_profile'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Benutzerprofil', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.settings'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Settings', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.settings'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Configuración', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.settings'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Paramètres', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.settings'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Einstellungen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.about'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'About', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.about'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Acerca de', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.about'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'À propos', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.about'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Über', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.terms'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Terms and Conditions', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.terms'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Términos y condiciones', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.terms'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Conditions générales', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.terms'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Geschäftsbedingungen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.privacy'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Privacy Policy', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.privacy'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Política de privacidad', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.privacy'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Politique de confidentialité', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.privacy'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Datenschutzrichtlinie', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.welcome'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Welcome', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.welcome'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Bienvenido', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.welcome'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Bienvenue', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.welcome'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Willkommen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.login'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Login', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.login'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Iniciar sesión', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.login'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Connexion', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.login'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Anmelden', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.register'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Register', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.register'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Registrarse', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.register'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'S''inscrire', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.register'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Registrieren', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.copyright'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 '© 2024 All rights reserved', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.copyright'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 '© 2024 Todos los derechos reservados', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.copyright'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 '© 2024 Tous droits réservés', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.copyright'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 '© 2024 Alle Rechte vorbehalten', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.privacy'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Privacy Policy', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.privacy'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Política de privacidad', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.privacy'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Politique de confidentialité', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.privacy'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Datenschutzrichtlinie', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.terms'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Terms of Service', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.terms'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Términos de servicio', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.terms'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Conditions de service', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.terms'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Nutzungsbedingungen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.contact'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Contact Us', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.contact'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Contáctanos', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.contact'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Nous contacter', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.contact'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Kontaktieren Sie uns', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.support'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Support', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.support'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Soporte', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.support'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Support', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.support'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Support', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.login'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Login', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.login'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Iniciar sesión', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.login'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Connexion', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.login'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Anmelden', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.logout'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Logout', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.logout'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Cerrar sesión', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.logout'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Déconnexion', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.logout'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Abmelden', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.register'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Register', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.register'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Registrarse', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.register'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'S''inscrire', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.register'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Registrieren', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.forgot_password'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Forgot Password', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.forgot_password'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Olvidé mi contraseña', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.forgot_password'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Mot de passe oublié', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.forgot_password'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Passwort vergessen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.reset_password'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Reset Password', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.reset_password'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Restablecer contraseña', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.reset_password'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Réinitialiser le mot de passe', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.reset_password'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Passwort zurücksetzen', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.change_password'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Change Password', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.change_password'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Cambiar contraseña', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.change_password'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Changer le mot de passe', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.change_password'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Passwort ändern', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.username'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Username', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.username'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Usuario', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.username'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Nom d''utilisateur', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.username'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Benutzername', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.password'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Password', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.password'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Contraseña', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.password'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Mot de passe', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.password'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Passwort', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.remember_me'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Remember me', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.remember_me'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Recordarme', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.remember_me'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Se souvenir de moi', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.remember_me'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Angemeldet bleiben', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.login_failed'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Login failed', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.login_failed'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Error al iniciar sesión', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.login_failed'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Échec de la connexion', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.login_failed'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Anmeldung fehlgeschlagen', 
 NOW());

-- Additional translation keys
INSERT INTO translation_keys (key, description) VALUES ('page.report_import', 'Import report');
INSERT INTO translation_keys (key, description) VALUES ('status.record_send', 'Send record');
INSERT INTO translation_keys (key, description) VALUES ('component.message_send', 'Send message');
INSERT INTO translation_keys (key, description) VALUES ('component.notification_create', 'Create notification');
INSERT INTO translation_keys (key, description) VALUES ('app.message_delete', 'Delete message');
INSERT INTO translation_keys (key, description) VALUES ('action.document_process', 'Process document');
INSERT INTO translation_keys (key, description) VALUES ('page.document_export', 'Export document');
INSERT INTO translation_keys (key, description) VALUES ('status.order_process', 'Process order');
INSERT INTO translation_keys (key, description) VALUES ('page.report_create', 'Create report');
INSERT INTO translation_keys (key, description) VALUES ('app.product_receive', 'Receive product');
INSERT INTO translation_keys (key, description) VALUES ('component.invoice_send', 'Send invoice');
INSERT INTO translation_keys (key, description) VALUES ('component.order_receive', 'Receive order');
INSERT INTO translation_keys (key, description) VALUES ('component.product_delete', 'Delete product');
INSERT INTO translation_keys (key, description) VALUES ('component.invoice_delete', 'Delete invoice');
INSERT INTO translation_keys (key, description) VALUES ('label.message_delete', 'Delete message');
INSERT INTO translation_keys (key, description) VALUES ('page.user_send', 'Send user');
INSERT INTO translation_keys (key, description) VALUES ('component.record_receive', 'Receive record');
INSERT INTO translation_keys (key, description) VALUES ('app.user_delete', 'Delete user');
INSERT INTO translation_keys (key, description) VALUES ('page.order_send', 'Send order');
INSERT INTO translation_keys (key, description) VALUES ('status.invoice_read', 'Read invoice');
INSERT INTO translation_keys (key, description) VALUES ('label.record_create', 'Create record');
INSERT INTO translation_keys (key, description) VALUES ('status.notification_export', 'Export notification');
INSERT INTO translation_keys (key, description) VALUES ('label.notification_validate', 'Validate notification');
INSERT INTO translation_keys (key, description) VALUES ('app.item_process', 'Process item');
INSERT INTO translation_keys (key, description) VALUES ('app.message_read', 'Read message');
INSERT INTO translation_keys (key, description) VALUES ('app.item_update', 'Update item');
INSERT INTO translation_keys (key, description) VALUES ('status.notification_validate', 'Validate notification');
INSERT INTO translation_keys (key, description) VALUES ('status.invoice_send', 'Send invoice');
INSERT INTO translation_keys (key, description) VALUES ('component.notification_create', 'Create notification');
INSERT INTO translation_keys (key, description) VALUES ('action.message_send', 'Send message');
INSERT INTO translation_keys (key, description) VALUES ('component.invoice_delete', 'Delete invoice');
INSERT INTO translation_keys (key, description) VALUES ('component.item_export', 'Export item');
INSERT INTO translation_keys (key, description) VALUES ('component.item_import', 'Import item');
INSERT INTO translation_keys (key, description) VALUES ('page.document_receive', 'Receive document');
INSERT INTO translation_keys (key, description) VALUES ('page.item_validate', 'Validate item');
INSERT INTO translation_keys (key, description) VALUES ('component.report_read', 'Read report');
INSERT INTO translation_keys (key, description) VALUES ('label.record_export', 'Export record');
INSERT INTO translation_keys (key, description) VALUES ('app.invoice_update', 'Update invoice');
INSERT INTO translation_keys (key, description) VALUES ('app.invoice_process', 'Process invoice');
INSERT INTO translation_keys (key, description) VALUES ('page.product_send', 'Send product');
INSERT INTO translation_keys (key, description) VALUES ('action.user_receive', 'Receive user');
INSERT INTO translation_keys (key, description) VALUES ('app.record_import', 'Import record');
INSERT INTO translation_keys (key, description) VALUES ('status.user_receive', 'Receive user');
INSERT INTO translation_keys (key, description) VALUES ('component.message_receive', 'Receive message');
INSERT INTO translation_keys (key, description) VALUES ('page.item_receive', 'Receive item');
INSERT INTO translation_keys (key, description) VALUES ('action.document_validate', 'Validate document');
INSERT INTO translation_keys (key, description) VALUES ('label.invoice_update', 'Update invoice');
INSERT INTO translation_keys (key, description) VALUES ('label.invoice_delete', 'Delete invoice');
INSERT INTO translation_keys (key, description) VALUES ('app.user_import', 'Import user');
INSERT INTO translation_keys (key, description) VALUES ('status.document_validate', 'Validate document');

-- Additional translations
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.report_import'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Import report', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.report_import'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Import report (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.report_import'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Import report (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.report_import'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Import report (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.record_send'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Send record', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.record_send'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Send record (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.record_send'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Send record (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.record_send'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Send record (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.message_send'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Send message', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.message_send'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Send message (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.message_send'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Send message (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.message_send'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Send message (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.notification_create'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Create notification', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.notification_create'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Create notification (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.notification_create'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Create notification (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.notification_create'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Create notification (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.message_delete'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Delete message', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.message_delete'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Delete message (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.message_delete'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Delete message (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.message_delete'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Delete message (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.document_process'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Process document', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.document_process'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Process document (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.document_process'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Process document (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.document_process'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Process document (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.document_export'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Export document', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.document_export'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Export document (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.document_export'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Export document (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.document_export'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Export document (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.order_process'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Process order', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.order_process'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Process order (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.order_process'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Process order (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.order_process'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Process order (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.report_create'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Create report', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.report_create'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Create report (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.report_create'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Create report (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.report_create'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Create report (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.product_receive'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Receive product', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.product_receive'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Receive product (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.product_receive'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Receive product (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.product_receive'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Receive product (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.invoice_send'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Send invoice', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.invoice_send'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Send invoice (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.invoice_send'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Send invoice (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.invoice_send'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Send invoice (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.order_receive'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Receive order', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.order_receive'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Receive order (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.order_receive'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Receive order (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.order_receive'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Receive order (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.product_delete'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Delete product', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.product_delete'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Delete product (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.product_delete'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Delete product (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.product_delete'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Delete product (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.invoice_delete'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Delete invoice', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.invoice_delete'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Delete invoice (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.invoice_delete'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Delete invoice (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.invoice_delete'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Delete invoice (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.message_delete'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Delete message', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.message_delete'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Delete message (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.message_delete'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Delete message (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.message_delete'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Delete message (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.user_send'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Send user', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.user_send'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Send user (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.user_send'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Send user (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.user_send'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Send user (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.record_receive'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Receive record', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.record_receive'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Receive record (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.record_receive'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Receive record (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.record_receive'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Receive record (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.user_delete'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Delete user', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.user_delete'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Delete user (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.user_delete'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Delete user (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.user_delete'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Delete user (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.order_send'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Send order', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.order_send'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Send order (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.order_send'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Send order (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.order_send'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Send order (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.invoice_read'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Read invoice', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.invoice_read'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Read invoice (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.invoice_read'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Read invoice (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.invoice_read'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Read invoice (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.record_create'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Create record', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.record_create'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Create record (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.record_create'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Create record (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.record_create'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Create record (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.notification_export'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Export notification', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.notification_export'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Export notification (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.notification_export'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Export notification (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.notification_export'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Export notification (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.notification_validate'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Validate notification', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.notification_validate'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Validate notification (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.notification_validate'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Validate notification (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.notification_validate'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Validate notification (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.item_process'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Process item', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.item_process'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Process item (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.item_process'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Process item (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.item_process'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Process item (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.message_read'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Read message', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.message_read'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Read message (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.message_read'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Read message (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.message_read'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Read message (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.item_update'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Update item', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.item_update'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Update item (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.item_update'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Update item (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.item_update'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Update item (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.notification_validate'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Validate notification', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.notification_validate'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Validate notification (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.notification_validate'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Validate notification (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.notification_validate'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Validate notification (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.invoice_send'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Send invoice', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.invoice_send'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Send invoice (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.invoice_send'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Send invoice (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.invoice_send'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Send invoice (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.notification_create'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Create notification', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.notification_create'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Create notification (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.notification_create'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Create notification (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.notification_create'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Create notification (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.message_send'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Send message', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.message_send'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Send message (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.message_send'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Send message (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.message_send'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Send message (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.invoice_delete'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Delete invoice', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.invoice_delete'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Delete invoice (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.invoice_delete'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Delete invoice (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.invoice_delete'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Delete invoice (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.item_export'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Export item', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.item_export'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Export item (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.item_export'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Export item (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.item_export'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Export item (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.item_import'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Import item', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.item_import'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Import item (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.item_import'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Import item (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.item_import'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Import item (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.document_receive'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Receive document', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.document_receive'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Receive document (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.document_receive'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Receive document (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.document_receive'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Receive document (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.item_validate'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Validate item', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.item_validate'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Validate item (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.item_validate'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Validate item (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.item_validate'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Validate item (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.report_read'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Read report', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.report_read'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Read report (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.report_read'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Read report (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.report_read'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Read report (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.record_export'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Export record', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.record_export'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Export record (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.record_export'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Export record (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.record_export'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Export record (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.invoice_update'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Update invoice', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.invoice_update'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Update invoice (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.invoice_update'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Update invoice (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.invoice_update'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Update invoice (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.invoice_process'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Process invoice', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.invoice_process'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Process invoice (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.invoice_process'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Process invoice (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.invoice_process'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Process invoice (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.product_send'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Send product', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.product_send'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Send product (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.product_send'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Send product (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.product_send'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Send product (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.user_receive'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Receive user', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.user_receive'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Receive user (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.user_receive'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Receive user (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.user_receive'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Receive user (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.record_import'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Import record', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.record_import'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Import record (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.record_import'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Import record (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.record_import'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Import record (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.user_receive'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Receive user', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.user_receive'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Receive user (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.user_receive'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Receive user (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.user_receive'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Receive user (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.message_receive'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Receive message', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.message_receive'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Receive message (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.message_receive'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Receive message (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'component.message_receive'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Receive message (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.item_receive'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Receive item', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.item_receive'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Receive item (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.item_receive'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Receive item (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'page.item_receive'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Receive item (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.document_validate'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Validate document', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.document_validate'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Validate document (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.document_validate'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Validate document (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'action.document_validate'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Validate document (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.invoice_update'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Update invoice', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.invoice_update'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Update invoice (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.invoice_update'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Update invoice (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.invoice_update'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Update invoice (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.invoice_delete'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Delete invoice', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.invoice_delete'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Delete invoice (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.invoice_delete'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Delete invoice (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'label.invoice_delete'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Delete invoice (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.user_import'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Import user', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.user_import'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Import user (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.user_import'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Import user (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'app.user_import'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Import user (DE)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.document_validate'), 
 (SELECT id FROM locales WHERE code = 'en'), 
 'Validate document', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.document_validate'), 
 (SELECT id FROM locales WHERE code = 'es'), 
 'Validate document (ES)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.document_validate'), 
 (SELECT id FROM locales WHERE code = 'fr'), 
 'Validate document (FR)', 
 NOW());
INSERT INTO translations (key_id, locale_id, content, updated_at) VALUES 
((SELECT id FROM translation_keys WHERE key = 'status.document_validate'), 
 (SELECT id FROM locales WHERE code = 'de'), 
 'Validate document (DE)', 
 NOW());

-- Insert translation key tags
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.save'), 
 (SELECT id FROM tags WHERE name = 'ui'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.save'), 
 (SELECT id FROM tags WHERE name = 'button'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.cancel'), 
 (SELECT id FROM tags WHERE name = 'ui'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.cancel'), 
 (SELECT id FROM tags WHERE name = 'button'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.submit'), 
 (SELECT id FROM tags WHERE name = 'ui'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.submit'), 
 (SELECT id FROM tags WHERE name = 'button'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.edit'), 
 (SELECT id FROM tags WHERE name = 'ui'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.edit'), 
 (SELECT id FROM tags WHERE name = 'button'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.delete'), 
 (SELECT id FROM tags WHERE name = 'ui'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.delete'), 
 (SELECT id FROM tags WHERE name = 'button'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.add'), 
 (SELECT id FROM tags WHERE name = 'ui'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.add'), 
 (SELECT id FROM tags WHERE name = 'button'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.search'), 
 (SELECT id FROM tags WHERE name = 'ui'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.search'), 
 (SELECT id FROM tags WHERE name = 'button'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.filter'), 
 (SELECT id FROM tags WHERE name = 'ui'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.filter'), 
 (SELECT id FROM tags WHERE name = 'button'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.reset'), 
 (SELECT id FROM tags WHERE name = 'ui'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.reset'), 
 (SELECT id FROM tags WHERE name = 'button'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.confirm'), 
 (SELECT id FROM tags WHERE name = 'ui'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'button.confirm'), 
 (SELECT id FROM tags WHERE name = 'button'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.home'), 
 (SELECT id FROM tags WHERE name = 'menu'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.home'), 
 (SELECT id FROM tags WHERE name = 'navigation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.about'), 
 (SELECT id FROM tags WHERE name = 'menu'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.about'), 
 (SELECT id FROM tags WHERE name = 'navigation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.contact'), 
 (SELECT id FROM tags WHERE name = 'menu'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.contact'), 
 (SELECT id FROM tags WHERE name = 'navigation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.products'), 
 (SELECT id FROM tags WHERE name = 'menu'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.products'), 
 (SELECT id FROM tags WHERE name = 'navigation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.services'), 
 (SELECT id FROM tags WHERE name = 'menu'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.services'), 
 (SELECT id FROM tags WHERE name = 'navigation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.profile'), 
 (SELECT id FROM tags WHERE name = 'menu'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.profile'), 
 (SELECT id FROM tags WHERE name = 'navigation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.settings'), 
 (SELECT id FROM tags WHERE name = 'menu'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.settings'), 
 (SELECT id FROM tags WHERE name = 'navigation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.logout'), 
 (SELECT id FROM tags WHERE name = 'menu'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.logout'), 
 (SELECT id FROM tags WHERE name = 'navigation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.help'), 
 (SELECT id FROM tags WHERE name = 'menu'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.help'), 
 (SELECT id FROM tags WHERE name = 'navigation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.dashboard'), 
 (SELECT id FROM tags WHERE name = 'menu'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'menu.dashboard'), 
 (SELECT id FROM tags WHERE name = 'navigation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.name'), 
 (SELECT id FROM tags WHERE name = 'form'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.email'), 
 (SELECT id FROM tags WHERE name = 'form'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.password'), 
 (SELECT id FROM tags WHERE name = 'form'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.confirm_password'), 
 (SELECT id FROM tags WHERE name = 'form'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.phone'), 
 (SELECT id FROM tags WHERE name = 'form'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.address'), 
 (SELECT id FROM tags WHERE name = 'form'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.city'), 
 (SELECT id FROM tags WHERE name = 'form'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.country'), 
 (SELECT id FROM tags WHERE name = 'form'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.company'), 
 (SELECT id FROM tags WHERE name = 'form'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'form.description'), 
 (SELECT id FROM tags WHERE name = 'form'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.required'), 
 (SELECT id FROM tags WHERE name = 'validation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.required'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.email_invalid'), 
 (SELECT id FROM tags WHERE name = 'validation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.email_invalid'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.password_weak'), 
 (SELECT id FROM tags WHERE name = 'validation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.password_weak'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.passwords_mismatch'), 
 (SELECT id FROM tags WHERE name = 'validation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.passwords_mismatch'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.phone_invalid'), 
 (SELECT id FROM tags WHERE name = 'validation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.phone_invalid'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.max_length'), 
 (SELECT id FROM tags WHERE name = 'validation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.max_length'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.min_length'), 
 (SELECT id FROM tags WHERE name = 'validation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.min_length'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.numeric_only'), 
 (SELECT id FROM tags WHERE name = 'validation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.numeric_only'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.alpha_only'), 
 (SELECT id FROM tags WHERE name = 'validation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.alpha_only'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.date_invalid'), 
 (SELECT id FROM tags WHERE name = 'validation'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'validation.date_invalid'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.saved'), 
 (SELECT id FROM tags WHERE name = 'success'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.deleted'), 
 (SELECT id FROM tags WHERE name = 'success'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.created'), 
 (SELECT id FROM tags WHERE name = 'success'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.updated'), 
 (SELECT id FROM tags WHERE name = 'success'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.sent'), 
 (SELECT id FROM tags WHERE name = 'success'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.uploaded'), 
 (SELECT id FROM tags WHERE name = 'success'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.downloaded'), 
 (SELECT id FROM tags WHERE name = 'success'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.registered'), 
 (SELECT id FROM tags WHERE name = 'success'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.logged_in'), 
 (SELECT id FROM tags WHERE name = 'success'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'success.password_changed'), 
 (SELECT id FROM tags WHERE name = 'success'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.generic'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.network'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.server'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.unauthorized'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.forbidden'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.not_found'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.timeout'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.invalid_data'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.file_too_large'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'error.unsupported_format'), 
 (SELECT id FROM tags WHERE name = 'error'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.confirm_delete'), 
 (SELECT id FROM tags WHERE name = 'modal'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.confirm_action'), 
 (SELECT id FROM tags WHERE name = 'modal'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.unsaved_changes'), 
 (SELECT id FROM tags WHERE name = 'modal'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.file_upload'), 
 (SELECT id FROM tags WHERE name = 'modal'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.change_password'), 
 (SELECT id FROM tags WHERE name = 'modal'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.user_profile'), 
 (SELECT id FROM tags WHERE name = 'modal'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.settings'), 
 (SELECT id FROM tags WHERE name = 'modal'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.about'), 
 (SELECT id FROM tags WHERE name = 'modal'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.terms'), 
 (SELECT id FROM tags WHERE name = 'modal'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'modal.privacy'), 
 (SELECT id FROM tags WHERE name = 'modal'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.welcome'), 
 (SELECT id FROM tags WHERE name = 'header'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.login'), 
 (SELECT id FROM tags WHERE name = 'header'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'header.register'), 
 (SELECT id FROM tags WHERE name = 'header'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.copyright'), 
 (SELECT id FROM tags WHERE name = 'footer'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.privacy'), 
 (SELECT id FROM tags WHERE name = 'footer'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.terms'), 
 (SELECT id FROM tags WHERE name = 'footer'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.contact'), 
 (SELECT id FROM tags WHERE name = 'footer'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'footer.support'), 
 (SELECT id FROM tags WHERE name = 'footer'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.login'), 
 (SELECT id FROM tags WHERE name = 'auth'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.logout'), 
 (SELECT id FROM tags WHERE name = 'auth'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.register'), 
 (SELECT id FROM tags WHERE name = 'auth'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.forgot_password'), 
 (SELECT id FROM tags WHERE name = 'auth'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.reset_password'), 
 (SELECT id FROM tags WHERE name = 'auth'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.change_password'), 
 (SELECT id FROM tags WHERE name = 'auth'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.username'), 
 (SELECT id FROM tags WHERE name = 'auth'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.password'), 
 (SELECT id FROM tags WHERE name = 'auth'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.remember_me'), 
 (SELECT id FROM tags WHERE name = 'auth'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.login_failed'), 
 (SELECT id FROM tags WHERE name = 'auth'));
INSERT INTO translation_key_tags (translation_key_id, tag_id) VALUES 
((SELECT id FROM translation_keys WHERE key = 'auth.login_failed'), 
 (SELECT id FROM tags WHERE name = 'error'));

