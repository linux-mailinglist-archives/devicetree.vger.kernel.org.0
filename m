Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 00B6D44A69
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 20:10:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728503AbfFMSJe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 14:09:34 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:42103 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728416AbfFMSJe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 14:09:34 -0400
Received: by mail-pg1-f193.google.com with SMTP id l19so8796817pgh.9
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 11:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pVbmGCXMlUq2A1hktcADs+0IfWfAQ2M2FW/CfDBhtLg=;
        b=FAbijmMdOArgULwBkXsBJp3YbUW1/Wrzaqs6dcYUYMl82wQ5JDMEWbDHYL6JEOFTK6
         3jUCluBlQdC0v3nbnxUgF8unfFjlPoH9r457SeTA879FsDsaanaiuHYZPar9Mowen66B
         eWsg52ZG0Viw9c+nueScpWKxFYh2vdQF+vZQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pVbmGCXMlUq2A1hktcADs+0IfWfAQ2M2FW/CfDBhtLg=;
        b=f1mMajeQ7XptpCrLRTvb++v6pFwiYVKzYPHigV+RPnfKF+2eyGvaXyTReZpNCaaqbF
         uxXzwYz7LTfE4834TW0FHcCbH/fzqHssjCOwgWydsXdRVumSMh63Mlp6p/XEC9y26tqF
         DwsLyez28vdM8m3eAwlV3PY3FZxTi+1PFWTtFpwhSajbGZi5u6vRoyZC71ny/hQTFD+b
         X+Dyl7bx9rZnoWLmk85SaD5KUsTV/uXDbUZXvBuckVCXF5Fe/SfNDxYyy+b/9FkxmY6N
         g3+vY4T5i3QfFNyuwD9bprDcZS+aBo26a8Z3Ny3Dt7YjUhfKJWSDxLNo1Yqm0pDL3r57
         i3Bg==
X-Gm-Message-State: APjAAAWEUVKevty7vC9mQUTN4KBvnAr7TTs7BBo5Kdsa2Cqa4j/izqWf
        VN+yn0Wo5Mfw+GnwSbuLz2FL5Q==
X-Google-Smtp-Source: APXvYqyrMSrLzGbPNmpEqq+83phzC38yETj3P78gr8NXQrfb8K/U7PH0ROe9UTKCnF6fg+nejUXM+Q==
X-Received: by 2002:a63:6ec1:: with SMTP id j184mr15876956pgc.225.1560449373537;
        Thu, 13 Jun 2019 11:09:33 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id b15sm454449pff.31.2019.06.13.11.09.32
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 13 Jun 2019 11:09:33 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Peter Huewe <peterhuewe@gmx.de>,
        Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Cc:     Andrey Pronin <apronin@chromium.org>, linux-kernel@vger.kernel.org,
        Jason Gunthorpe <jgg@ziepe.ca>, Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-integrity@vger.kernel.org, devicetree@vger.kernel.org,
        Duncan Laurie <dlaurie@chromium.org>,
        Guenter Roeck <groeck@chromium.org>
Subject: [PATCH 1/8] tpm: block messages while suspended
Date:   Thu, 13 Jun 2019 11:09:24 -0700
Message-Id: <20190613180931.65445-2-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190613180931.65445-1-swboyd@chromium.org>
References: <20190613180931.65445-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Andrey Pronin <apronin@chromium.org>

Other drivers or userspace may initiate sending a message to the tpm
while the device itself and the controller of the bus it is on are
suspended. That may break the bus driver logic.
Block sending messages while the device is suspended.

Signed-off-by: Andrey Pronin <apronin@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---

I don't think this was ever posted before.

 drivers/char/tpm/tpm-interface.c | 16 ++++++++++++++--
 include/linux/tpm.h              |  2 ++
 2 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/char/tpm/tpm-interface.c b/drivers/char/tpm/tpm-interface.c
index ae1030c9b086..7232527652e8 100644
--- a/drivers/char/tpm/tpm-interface.c
+++ b/drivers/char/tpm/tpm-interface.c
@@ -86,6 +86,11 @@ static ssize_t tpm_try_transmit(struct tpm_chip *chip, void *buf, size_t bufsiz)
 		return -E2BIG;
 	}
 
+	if (test_bit(0, &chip->is_suspended)) {
+		dev_warn(&chip->dev, "blocking transmit while suspended\n");
+		return -EAGAIN;
+	}
+
 	rc = chip->ops->send(chip, buf, count);
 	if (rc < 0) {
 		if (rc != -EPIPE)
@@ -403,14 +408,19 @@ int tpm_pm_suspend(struct device *dev)
 		return 0;
 
 	if (!tpm_chip_start(chip)) {
-		if (chip->flags & TPM_CHIP_FLAG_TPM2)
+		if (chip->flags & TPM_CHIP_FLAG_TPM2) {
 			tpm2_shutdown(chip, TPM2_SU_STATE);
-		else
+			set_bit(0, &chip->is_suspended);
+		} else {
 			rc = tpm1_pm_suspend(chip, tpm_suspend_pcr);
+		}
 
 		tpm_chip_stop(chip);
 	}
 
+	if (!rc)
+		set_bit(0, &chip->is_suspended);
+
 	return rc;
 }
 EXPORT_SYMBOL_GPL(tpm_pm_suspend);
@@ -426,6 +436,8 @@ int tpm_pm_resume(struct device *dev)
 	if (chip == NULL)
 		return -ENODEV;
 
+	clear_bit(0, &chip->is_suspended);
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(tpm_pm_resume);
diff --git a/include/linux/tpm.h b/include/linux/tpm.h
index 1b5436b213a2..48df005228d0 100644
--- a/include/linux/tpm.h
+++ b/include/linux/tpm.h
@@ -132,6 +132,8 @@ struct tpm_chip {
 	int dev_num;		/* /dev/tpm# */
 	unsigned long is_open;	/* only one allowed */
 
+	unsigned long is_suspended;
+
 	char hwrng_name[64];
 	struct hwrng hwrng;
 
-- 
Sent by a computer through tubes

