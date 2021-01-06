# Python code to illustrate Sending mail with attachments
# from your Gmail account

# libraries to be imported
import smtplib
import glob
import os
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email import encoders

#Hotmail account, for gmail change the smtp server.
fromaddr = "saravjeet.singh@hotmail.com"
toaddr = "saravjeet3@gmail.com"

# instance of MIMEMultipart
msg = MIMEMultipart()

# storing the senders email address
msg['From'] = fromaddr

# storing the receivers email address
msg['To'] = toaddr

# storing the subject
msg['Subject'] = "JobSeeker Automation Testing Results"

# string to store the body of the mail
body = "Please find the attached Test Reults for JobSeeker Automation"

# attach the body with the msg instance
msg.attach(MIMEText(body, 'plain'))

#Get the latest file from the Results Directory
list_of_files = glob.glob(r'D:\robotframework\Shenzyn-Test-Aut\development\shenzyn\Results\report-*.html') # * means all if need specific format then *.csv
filename = max(list_of_files, key=os.path.getctime)

# open the file to be sent
attachment = open(filename, "rb")

# instance of MIMEBase and named as p
p = MIMEBase('application', 'octet-stream')

# To change the payload into encoded form
p.set_payload((attachment).read())

# encode into base64
encoders.encode_base64(p)

p.add_header('Content-Disposition', "attachment; filename= %s" % filename)

# attach the instance 'p' to instance 'msg'
msg.attach(p)

# creates SMTP session
s = smtplib.SMTP('smtp-mail.outlook.com', 587)

# start TLS for security
s.starttls()

# Authentication
s.login(fromaddr, "seerat@123")

# Converts the Multipart msg into a string
text = msg.as_string()

# sending the mail
s.sendmail(fromaddr, toaddr, text)

# terminating the session
s.quit()
