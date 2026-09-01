using {notifications} from '../db/schemas';

service Cepa {
    entity Notifications as projection on notifications.Notifications;
}
