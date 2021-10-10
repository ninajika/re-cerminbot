from telegram.ext import CommandHandler

from bot import LOGGER, dispatcher
from bot.helper.ext_utils.bot_utils import new_thread
from bot.helper.mirror_utils.upload_utils.gdriveTools import GoogleDriveHelper
from bot.helper.telegram_helper.bot_commands import BotCommands
from bot.helper.telegram_helper.filters import CustomFilters
from bot.helper.telegram_helper.message_utils import editMessage, sendMessage


@new_thread
def list_drive(update, context):
    try:
        search = update.message.text.split(' ', maxsplit=1)[1]
        LOGGER.info(f"Searching: {search}")
        reply = sendMessage("Mencari..... Harap tunggu!", context.bot, update)
        gdrive = GoogleDriveHelper()
        msg, button = gdrive.drive_list(search)

        if button:
            editMessage(msg, reply, button)
        else:
            editMessage(f"Tidak ada hasil ditemukan untuk <code>{search}</code>", reply)
    except IndexError:
        sendMessage(
            "Kirim kunci pencarian bersama dengan perintah", context.bot, update
        )


list_handler = CommandHandler(
    BotCommands.ListCommand,
    list_drive,
    filters=CustomFilters.authorized_chat | CustomFilters.authorized_user,
    run_async=True,
)
dispatcher.add_handler(list_handler)
