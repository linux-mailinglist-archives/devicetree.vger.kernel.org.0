Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E059625062
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 15:33:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728289AbfEUNdb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 09:33:31 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:42800 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728340AbfEUNdb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 09:33:31 -0400
Received: by mail-pl1-f196.google.com with SMTP id x15so8465936pln.9
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 06:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=q9ZIgayitHYinuwIIIQjmbyGj4R/0KKMdcZ9auHzvr8=;
        b=VlOYu1drdYLZpHJV9yk0qWwSSx5N4LCVyuAnvbVQ2maCo9bVARUiY89bZ1yKPhQCcH
         uNvDtxSgCuPt3Ou37gyoxRCm/9qexGEjOWipubkYFzvm6+F4Fazk2Q5S1WHGsW3SOYis
         C7cPoFIqYa4MEZ1trtTOhUXsiHoAjNl4bkEJe06N6edwmKhwXdq5wWmH2yEKnVMIaKR4
         AwbUMSTsfTlj43zrdVGSUl2wkrPrzteOPZScOYgg/PEXBq8b2vzftNajJPqmkNpNfcxq
         gF1EJ26O7OCpQEhcta7+PRX1PRcD7FZzYeHylUeNWK4DQk8rBl7ohWSoPx9cIVRf/1Sd
         fHqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=q9ZIgayitHYinuwIIIQjmbyGj4R/0KKMdcZ9auHzvr8=;
        b=inLnMf1a/a/XlxQFW0RFBnofaZsiJDZAJUjSwmBWl4Wj3aHDgrKyCNKI5ldQwHkRy5
         DK4HDC5krQ1hoRhEc9t6mKjX04uvvtWwryNEaVyiSIab5N3GAO2UWayEAuFX4G9bKiBG
         bW6o2eFwp6zCL1D+tIkopcpi2OTqZSoXn1ImCtJOtH+mMCw6yJ8X6kTEHH/RJfQYRyOC
         Da3qo+TqlAYMH/hLPt9HhM5Q+Y5nF4YhkZvn3Q2JljUhaewoTnD7/WZ0ZTUnLkNpKqS7
         /dNayzilOtAvjbiYI53823PTr3xu0EhhtWGDK+6TzapBj2Kt7OWisNfCp1JRW+8gUiV5
         C1Aw==
X-Gm-Message-State: APjAAAXwodJnsOLTyZs4XjBUpm4mpaljH3/bO6Gt8o0P5H8CAbsUIUUQ
        ByoDQMsiHuPknrqnXmAd6qhAHw==
X-Google-Smtp-Source: APXvYqwosybVnv92iOwCWSgxiLTjp16vqLrYP4NZArVA1GDu0mXZO7aPxnIG51uYXApdUCoO0dkHxQ==
X-Received: by 2002:a17:902:2aa6:: with SMTP id j35mr503646plb.189.1558445610576;
        Tue, 21 May 2019 06:33:30 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id d15sm65368906pfm.186.2019.05.21.06.33.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 May 2019 06:33:29 -0700 (PDT)
From:   Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
        andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
        sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v6 3/3] i2c-ocores: sifive: add polling mode workaround for FU540-C000 SoC.
Date:   Tue, 21 May 2019 19:02:54 +0530
Message-Id: <1558445574-16471-4-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
References: <1558445574-16471-1-git-send-email-sagar.kadam@sifive.com>
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

Ref:
	commit dd7dbf0eb090 ("i2c: ocores: refactor setup for polling")

The workaround / fix under OCORES_FLAG_BROKEN_IRQ is particularly for
FU540-COOO SoC.

The polling function identifies a SiFive device based on the device node
and enables the workaround.

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 drivers/i2c/busses/i2c-ocores.c | 38 +++++++++++++++++++++++++++++++++-----
 1 file changed, 33 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
index b334fa2..3175c72 100644
--- a/drivers/i2c/busses/i2c-ocores.c
+++ b/drivers/i2c/busses/i2c-ocores.c
@@ -84,6 +84,10 @@ struct ocores_i2c {
 #define TYPE_GRLIB		1
 #define TYPE_SIFIVE_REV0	2
 
+#define OCORES_FLAG_BROKEN_IRQ BIT(1) /* Broken IRQ for FU540-C000 SoC */
+
+static const struct of_device_id ocores_i2c_match[];
+
 static void oc_setreg_8(struct ocores_i2c *i2c, int reg, u8 value)
 {
 	iowrite8(value, i2c->base + (reg << i2c->reg_shift));
@@ -236,9 +240,13 @@ static irqreturn_t ocores_isr(int irq, void *dev_id)
 	struct ocores_i2c *i2c = dev_id;
 	u8 stat = oc_getreg(i2c, OCI2C_STATUS);
 
-	if (!(stat & OCI2C_STAT_IF))
+	if (irq == OCORES_FLAG_BROKEN_IRQ) {
+		if (stat & OCI2C_STAT_IF)
+			if (!(stat & OCI2C_STAT_BUSY))
+				return IRQ_NONE;
+	} else if (!(stat & OCI2C_STAT_IF)) {
 		return IRQ_NONE;
-
+	}
 	ocores_process(i2c, stat);
 
 	return IRQ_HANDLED;
@@ -340,6 +348,10 @@ static int ocores_poll_wait(struct ocores_i2c *i2c)
  */
 static void ocores_process_polling(struct ocores_i2c *i2c)
 {
+	const struct of_device_id *match;
+
+	match = of_match_node(ocores_i2c_match, i2c->adap.dev.of_node);
+
 	while (1) {
 		irqreturn_t ret;
 		int err;
@@ -350,9 +362,25 @@ static void ocores_process_polling(struct ocores_i2c *i2c)
 			break; /* timeout */
 		}
 
-		ret = ocores_isr(-1, i2c);
-		if (ret == IRQ_NONE)
-			break; /* all messages have been transferred */
+		/*
+		 * If it's a SiFive Device(FU540-C000 SoC ) use
+		 * OCORES_FLAG_BROKEN_IRQ to enable workaround in
+		 * polling mode.
+		 */
+		if (match && (long)match->data == TYPE_SIFIVE_REV0) {
+			ret = ocores_isr(OCORES_FLAG_BROKEN_IRQ, i2c);
+			if (ret == IRQ_NONE)
+				break; /* all messages have been transferred */
+			else
+				if (i2c->state == STATE_DONE)
+					break;
+		} else {
+			ret = ocores_isr(-1, i2c);
+			if (ret == IRQ_NONE)
+				break; /* all messages have been transferred */
+
+		}
+
 	}
 }
 
-- 
1.9.1

