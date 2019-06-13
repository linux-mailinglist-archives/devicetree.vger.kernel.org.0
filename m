Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C36C644A53
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 20:09:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728616AbfFMSJg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 14:09:36 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:45312 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728611AbfFMSJg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 14:09:36 -0400
Received: by mail-pg1-f195.google.com with SMTP id s21so859927pga.12
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 11:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=s4UOPmCaMTA/ZsZDFJPVYGvmCISuBSexVdeFUduycxw=;
        b=AskOkpFh+++DQTTwkArdgdbEfkDEWm7fPaUOs7Ny9QWsIUaPiNRiGi5WaJeUUHcjym
         gm+jUgHvjsTqYfPalPPiLiATfaYoIQekqX/3rNGp/yQFbm0/XdoLXLLQaDF50fZuML1V
         MdHGKBpojl7UUP03AIFcdmLEsEYcSIGP8ZgI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=s4UOPmCaMTA/ZsZDFJPVYGvmCISuBSexVdeFUduycxw=;
        b=Ebym4ryUEk2Esk70npFqtcPIA5i6IXPkfYaixfxW2ohOUOLKXp0/K+J2mCv4xS8SLE
         UowpVmtNVHWUIbBXuIByPlyMMgfzEu+WXr/KX2+h7KgZ4XUrbnXPM1FQ6NH10QI9jnw2
         g4HRXh57QO923CJaKfTePVEZJcgzgvktHDwVii+ZRoMV8brdvpvoijIQ3J7GoNs1aQB9
         wTCXRf+jpgXzBJ0t4RPO9JK1kEZJf+XGJdmLCeQvCwql5xavfzUs9hB2q7a3t37EbbL/
         0BoiH5v5y0z12kRpeLB8m5rSgv5gatIV71z0GHmX4aqZzLIVHollCwLtIKalFkOPrL4T
         /NcA==
X-Gm-Message-State: APjAAAWzRJ3r3v1/oxaxmxK0KuSiA9G5u4ulbN2hhj8JsXHLwxE5Ia5C
        +OIINiqWN1TzwxvJ2z6YDrWoTA==
X-Google-Smtp-Source: APXvYqyK//TFyvvsB14tdex9tb6JEfZao67LE8nQZkwFwZLlBu9O+FoPljXy615K3VxpUOjo9MniMw==
X-Received: by 2002:a62:14c4:: with SMTP id 187mr20886406pfu.241.1560449375606;
        Thu, 13 Jun 2019 11:09:35 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id b15sm454449pff.31.2019.06.13.11.09.34
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 13 Jun 2019 11:09:35 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Peter Huewe <peterhuewe@gmx.de>,
        Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Cc:     Andrey Pronin <apronin@chromium.org>, linux-kernel@vger.kernel.org,
        Jason Gunthorpe <jgg@ziepe.ca>, Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-integrity@vger.kernel.org, devicetree@vger.kernel.org,
        Duncan Laurie <dlaurie@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Dmitry Torokhov <dtor@chromium.org>
Subject: [PATCH 3/8] tpm_tis_spi: add max xfer size
Date:   Thu, 13 Jun 2019 11:09:26 -0700
Message-Id: <20190613180931.65445-4-swboyd@chromium.org>
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

Reject burstcounts larger than 64 bytes reported by tpm.
SPI Hardware Protocol defined in section 6.4 of TCG PTP
Spec supports up to 64 bytes of data in a transaction.

Signed-off-by: Andrey Pronin <apronin@chromium.org>
Reviewed-by: Dmitry Torokhov <dtor@chromium.org>
Reviewed-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---

This is a resend of https://lkml.kernel.org/r/1469677797-74304-3-git-send-email-apronin@chromium.org

 drivers/char/tpm/tpm_tis_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/char/tpm/tpm_tis_spi.c b/drivers/char/tpm/tpm_tis_spi.c
index 9914f6973463..0fdd3966a3b3 100644
--- a/drivers/char/tpm/tpm_tis_spi.c
+++ b/drivers/char/tpm/tpm_tis_spi.c
@@ -194,6 +194,7 @@ static const struct tpm_tis_phy_ops tpm_spi_phy_ops = {
 	.read16 = tpm_tis_spi_read16,
 	.read32 = tpm_tis_spi_read32,
 	.write32 = tpm_tis_spi_write32,
+	.max_xfer_size = MAX_SPI_FRAMESIZE,
 };
 
 static int tpm_tis_spi_probe(struct spi_device *dev)
-- 
Sent by a computer through tubes

