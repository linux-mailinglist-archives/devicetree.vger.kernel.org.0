Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 693AA44A6A
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 20:10:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728658AbfFMSJi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 14:09:38 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:40509 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728561AbfFMSJf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 14:09:35 -0400
Received: by mail-pg1-f196.google.com with SMTP id d30so11395919pgm.7
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 11:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N1LCvmXCGv+gkQPnv1luVZnj+/a6kdzyRI1h9bDBLmA=;
        b=gZGYOpoqXoAWbd+TKowE14P4JrUuhZbtjvAWOO3zqScU3lgWODCmkG50kE0kgaq+aF
         tWJyy7VNDpiWz0Gn6UnpmkjygZ/aQCNtD4ngEufxjBNN/hX2vr33dJa3blh4g1CziVvI
         /y/0ymc4svkJPuV4xXPEkI/N6fvDYMhuu2HeE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N1LCvmXCGv+gkQPnv1luVZnj+/a6kdzyRI1h9bDBLmA=;
        b=aRHG7WTQ27h0FXPPF/cvtz1lWPHP+exllGLSyPtOiqGyEJYJvBzmiDnDJEHsvy1vPM
         IxHDuOf46gIJhKH/5a008aeN5Dj+syYpDYfeGEz/M4Kq4nLTNT4+bQ2xRoOJSGYofUun
         oWxfPmoxg0LbWdsJbNTE8kV99pIUMMymBsNIU3VKS7ENBmyy7KwFfRPNVWJcdNj55u3I
         WzCMErTUNX7pML2MlosSzYZRHJobWYR/MadtoGGU+2jLIf5+aM/kWhbVFndimbnB4pr3
         oxms+H1siPWB17/cTK6Z+MGZRAUjOujzgj+icHmHl7LgrqYhSBZYbtA79Nrr0Zmizbv7
         HsYQ==
X-Gm-Message-State: APjAAAVDATpqxCQqpxiI2g/rsgB8vLbssT4uqtRuM0OUlzM8WpU61Ivz
        jd3pb+DKQFv7+mQM85m6Rvm+0Q==
X-Google-Smtp-Source: APXvYqzP4ikoJxy7FM1zpspPzcggXagyw7xSKXjqsEJwdlc2PFNv1phkfgugD3oYOqXKNMMVI88Cvw==
X-Received: by 2002:a62:36c1:: with SMTP id d184mr96881472pfa.49.1560449374839;
        Thu, 13 Jun 2019 11:09:34 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id b15sm454449pff.31.2019.06.13.11.09.33
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 13 Jun 2019 11:09:34 -0700 (PDT)
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
Subject: [PATCH 2/8] tpm_tis_core: add optional max xfer size check
Date:   Thu, 13 Jun 2019 11:09:25 -0700
Message-Id: <20190613180931.65445-3-swboyd@chromium.org>
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

If tpm reports a bigger burstcnt than allowed by the physical protocol,
set burstcnt to the max allowed value.

In practice, seen in case of xfer issues (e.g. in spi interface case,
lost header causing flow control issues and wrong values returned on read
from TPM_STS). Without catching, causes the physical layer to reject xfer.

Signed-off-by: Andrey Pronin <apronin@chromium.org>
Reviewed-by: Dmitry Torokhov <dtor@chromium.org>
Reviewed-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
[swboyd@chromium.org: Drop extra parenthesis in if statement]
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---

This is a resend of https://lkml.kernel.org/r/1469677797-74304-2-git-send-email-apronin@chromium.org

 drivers/char/tpm/tpm_tis_core.c | 9 ++++++++-
 drivers/char/tpm/tpm_tis_core.h | 1 +
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/char/tpm/tpm_tis_core.c b/drivers/char/tpm/tpm_tis_core.c
index b9f64684c3fb..ecf703802333 100644
--- a/drivers/char/tpm/tpm_tis_core.c
+++ b/drivers/char/tpm/tpm_tis_core.c
@@ -272,8 +272,15 @@ static int get_burstcount(struct tpm_chip *chip)
 			return rc;
 
 		burstcnt = (value >> 8) & 0xFFFF;
-		if (burstcnt)
+		if (burstcnt) {
+			if (priv->phy_ops->max_xfer_size &&
+			    burstcnt > priv->phy_ops->max_xfer_size) {
+				dev_warn(&chip->dev,
+					 "Bad burstcnt read: %d\n", burstcnt);
+				burstcnt = priv->phy_ops->max_xfer_size;
+			}
 			return burstcnt;
+		}
 		usleep_range(TPM_TIMEOUT_USECS_MIN, TPM_TIMEOUT_USECS_MAX);
 	} while (time_before(jiffies, stop));
 	return -EBUSY;
diff --git a/drivers/char/tpm/tpm_tis_core.h b/drivers/char/tpm/tpm_tis_core.h
index f48125f1e6e0..bb4979cf81ed 100644
--- a/drivers/char/tpm/tpm_tis_core.h
+++ b/drivers/char/tpm/tpm_tis_core.h
@@ -110,6 +110,7 @@ struct tpm_tis_phy_ops {
 	int (*read16)(struct tpm_tis_data *data, u32 addr, u16 *result);
 	int (*read32)(struct tpm_tis_data *data, u32 addr, u32 *result);
 	int (*write32)(struct tpm_tis_data *data, u32 addr, u32 src);
+	u16 max_xfer_size;
 };
 
 static inline int tpm_tis_read_bytes(struct tpm_tis_data *data, u32 addr,
-- 
Sent by a computer through tubes

