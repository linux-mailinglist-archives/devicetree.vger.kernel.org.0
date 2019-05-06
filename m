Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 606D814A70
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2019 14:58:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726298AbfEFM6B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 May 2019 08:58:01 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:45167 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725886AbfEFM6B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 May 2019 08:58:01 -0400
Received: by mail-pg1-f193.google.com with SMTP id i21so6416719pgi.12
        for <devicetree@vger.kernel.org>; Mon, 06 May 2019 05:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=3yJBCKGR2L57C08ZCcNvx8rpcWn4E4qX0pN/jP148ZU=;
        b=eLarq4Ffp7BjsITqSQlz2hSLPWtaejD9F29WXPEMw2SqJDUECmBS4D7XP1Pt5cl+Gj
         6Qim1TVRAg/xxrtKNnSMLQ1sFJyWF3z8/K4E48r2dufIm4l8G9mRpjrcRd/z5J8qu22a
         vcWshiwGN/r2EzzCR4FftWIW614/C17yN/JKBzSAlxD4hNwdI4eMxGWHbosZcWaBw/TD
         +tq4tFRIMr5icG/Elbt41wWtleyysZxvvScYYpCG9VWOIZfmIDUk9b1PfxTQOttXQKMu
         SJD6DliKlgTV+WndmwX90KWxulzq7oC/wbbkYnMXkCyQB2I/XDdlcdnIW9RGJQmn4i5W
         AJlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=3yJBCKGR2L57C08ZCcNvx8rpcWn4E4qX0pN/jP148ZU=;
        b=V2LYp1fl+f0hQ5CM2OyRravz7kcn75Tc/vreT9DrEwqI8142+HrFN7VyY4jqAfe1Rt
         3yJpbRghEQZ1Cr5GJl36bmvyX7Amccwoe6tNuMlKfv+lSIwoLPOQ55ncCfKCuSDnXzVP
         hWBqJEMVu78cZ8bu50/S6G1mHo1bhiRZax0O9Yb1t+pi511M62vvRhKTUL/+5kxQ48Ja
         /JTBJyzrt237V+7csunY/RneA16C1Bq+TUWAbT6QT1kcBYDmc4LC5JpOJFkmLARcKVe6
         2ytj4VSv7WJ1M09A1f5UEGxNBHGtg9ZFGd+JdQkjDv4gTEhKU0aS5jzNmkgCjx1zStQB
         gT6Q==
X-Gm-Message-State: APjAAAV5M/fzC4Q42riAEUITaT1jMogSKoscCfK94d1SyeKwrrWRSaxJ
        +JBg4kZbXnW45nIeDpPiUmM+kQ==
X-Google-Smtp-Source: APXvYqzOLRJnZ/ugQgGd1S7emDFcNYFDNzwkPn6sKQ1ywPvxa6ZPbBSvOcGtuJOVmTmh8hb5KAhWdQ==
X-Received: by 2002:a63:fd08:: with SMTP id d8mr31596695pgh.141.1557147480957;
        Mon, 06 May 2019 05:58:00 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id p81sm18031132pfa.26.2019.05.06.05.57.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 May 2019 05:58:00 -0700 (PDT)
From:   Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com, palmer@sifive.com,
        paul.walmsley@sifive.com, sagar.kadam@sifive.com,
        peter@korsgaard.com, andrew@lunn.ch, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 v1 3/3] i2c-ocores: sifive: add polling mode workaround for FU540-C000 SoC.
Date:   Mon,  6 May 2019 18:24:00 +0530
Message-Id: <1557147240-29551-4-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557147240-29551-1-git-send-email-sagar.kadam@sifive.com>
References: <1557147240-29551-1-git-send-email-sagar.kadam@sifive.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The i2c-ocore driver already has a polling mode interface.But it needs
a workaround for FU540 Chipset on HiFive unleashed board (RevA00).
There is an erratum in FU540 chip that prevents interrupt driven i2c
transfers from working, and also the I2C controller's interrupt bit
cannot be cleared if set, due to this the existing i2c polling mode
interface added in mainline earlier doesn't work, and CPU stall's
infinitely, when-ever i2c transfer is initiated.

	commit 69c8c0c0efa8 ("i2c: ocores: add polling interface")

The workaround / fix is particularly for FU540-COOO SoC.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/i2c/busses/i2c-ocores.c | 28 ++++++++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
index 7bf7b0c..08cdfed 100644
--- a/drivers/i2c/busses/i2c-ocores.c
+++ b/drivers/i2c/busses/i2c-ocores.c
@@ -27,6 +27,7 @@
 #include <linux/jiffies.h>
 
 #define OCORES_FLAG_POLL BIT(0)
+#define SIFIVE_FLAG_POLL BIT(1)
 
 /*
  * 'process_lock' exists because ocores_process() and ocores_process_timeout()
@@ -239,8 +240,13 @@ static irqreturn_t ocores_isr(int irq, void *dev_id)
 	struct ocores_i2c *i2c = dev_id;
 	u8 stat = oc_getreg(i2c, OCI2C_STATUS);
 
-	if (!(stat & OCI2C_STAT_IF))
+	if (i2c->flags && SIFIVE_FLAG_POLL) {
+		if (stat & OCI2C_STAT_IF)
+			if (!(stat & OCI2C_STAT_BUSY))
+				return IRQ_NONE;
+	} else if (!(stat & OCI2C_STAT_IF)) {
 		return IRQ_NONE;
+	}
 
 	ocores_process(i2c, stat);
 
@@ -356,6 +362,11 @@ static void ocores_process_polling(struct ocores_i2c *i2c)
 		ret = ocores_isr(-1, i2c);
 		if (ret == IRQ_NONE)
 			break; /* all messages have been transferred */
+		else {
+			if (i2c->flags && SIFIVE_FLAG_POLL)
+				if (i2c->state == STATE_DONE)
+					break;
+		}
 	}
 }
 
@@ -406,7 +417,7 @@ static int ocores_xfer(struct i2c_adapter *adap,
 {
 	struct ocores_i2c *i2c = i2c_get_adapdata(adap);
 
-	if (i2c->flags & OCORES_FLAG_POLL)
+	if ((i2c->flags & OCORES_FLAG_POLL) || (i2c->flags & SIFIVE_FLAG_POLL))
 		return ocores_xfer_polling(adap, msgs, num);
 	return ocores_xfer_core(i2c, msgs, num, false);
 }
@@ -597,6 +608,7 @@ static int ocores_i2c_probe(struct platform_device *pdev)
 {
 	struct ocores_i2c *i2c;
 	struct ocores_i2c_platform_data *pdata;
+	const struct of_device_id *match;
 	struct resource *res;
 	int irq;
 	int ret;
@@ -678,13 +690,21 @@ static int ocores_i2c_probe(struct platform_device *pdev)
 
 	irq = platform_get_irq(pdev, 0);
 	if (irq == -ENXIO) {
-		i2c->flags |= OCORES_FLAG_POLL;
+		/*
+		 * Set a SIFIVE_FLAG_POLL to enable workaround for FU540
+		 * in polling mode interface of i2c-ocore driver.
+		 */
+		match = of_match_node(ocores_i2c_match, pdev->dev.of_node);
+		if (match && (long)match->data == TYPE_SIFIVE_REV0)
+			i2c->flags |= SIFIVE_FLAG_POLL;
+		else
+			i2c->flags |= OCORES_FLAG_POLL;
 	} else {
 		if (irq < 0)
 			return irq;
 	}
 
-	if (!(i2c->flags & OCORES_FLAG_POLL)) {
+	if (!(i2c->flags & (OCORES_FLAG_POLL | SIFIVE_FLAG_POLL))) {
 		ret = devm_request_irq(&pdev->dev, irq, ocores_isr, 0,
 				       pdev->name, i2c);
 		if (ret) {
-- 
1.9.1

