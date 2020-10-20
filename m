Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5904293840
	for <lists+devicetree@lfdr.de>; Tue, 20 Oct 2020 11:37:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405786AbgJTJhL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Oct 2020 05:37:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405725AbgJTJgr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Oct 2020 05:36:47 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1DDBC0613CE
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 02:36:46 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id h64so1521316ybc.1
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 02:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=jTQTcdSgoIgGHUCr3kLKKiyuBYT4mT7d+yfkxv0fkh0=;
        b=a58rDllFinqB4k+cUYO4eWmLlfnl4ntED7dZK9CCDWURetwtYw79zjzeQEN/F7L9/R
         nkw0jvX3ULQ+MMqJu9np9JALeGN/9DVHJkCryGiaPf73fxpd2qGLKHPzvVV8bLSMV81q
         7x8ANZaqH4xIRz00xHHitEBXxhQD16T2qLJAl7t4XwSvQnSzVK5b7ugNGv/cKg83GpTl
         Pg73iM38n+kSrgsPwHMcQkMZpqPHhDXHTKPgJbfl0eOMjf7yoRop0ARu204JDukthIT8
         Osu7z7IBOCHA3pmXv6BSUnNEDIuTQOcPVr9HufSTQeRCG5ih7CLs/U87smP1fxZxN5FP
         eg7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=jTQTcdSgoIgGHUCr3kLKKiyuBYT4mT7d+yfkxv0fkh0=;
        b=fFTgvYWiikxJZENGod1jz8YynZtzVZe/OKdhvJWTKYYsYkbtVs58jdwchNVDLDBTgY
         +YJ1Yko3lzRtGYWHZJeD0xWxZs7B81xADT/M1uh8sGczO9dnrIf72DPf22YNYGPstL3H
         YkG1qq6q1CjRBqjkraPYYSWn8f4WR8F0IwFhiROggBJBzYTTAXwcPJ5J6DMzbkzlCt4j
         59Fp6wqufmJT0gg9sfMPK/qgkkazvb1SwGJ3PcQ9hWCU+AbsTf3dfi0Ax2k0WsJXUndd
         ipM1awKQbxJhAMxZQs8/XMY87izC1BrN4R1YJd0BiMbAMvAENwO6nXM7Zj0o7tY8DUvV
         ji3A==
X-Gm-Message-State: AOAM530Uf7aw1liIyk9QDLoRImUALFJwyd+26TyW+nqiv7cXZSzOC+MQ
        Jk886UA2BWertpH+JzXWxp2md6VJE94=
X-Google-Smtp-Source: ABdhPJy2kafnfx1Z0ACqlLOm3yxSpl8G/Af7OLk8B1zAJkXmFPZkRtQLA0Lh7Eb2Z80QRHBzG1/KIfFpstU=
Sender: "badhri via sendgmr" <badhri@badhri.mtv.corp.google.com>
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:1:f292:1cff:fee0:66cf])
 (user=badhri job=sendgmr) by 2002:a25:2054:: with SMTP id g81mr2919567ybg.490.1603186606144;
 Tue, 20 Oct 2020 02:36:46 -0700 (PDT)
Date:   Tue, 20 Oct 2020 02:36:24 -0700
In-Reply-To: <20201020093627.256885-1-badhri@google.com>
Message-Id: <20201020093627.256885-8-badhri@google.com>
Mime-Version: 1.0
References: <20201020093627.256885-1-badhri@google.com>
X-Mailer: git-send-email 2.29.0.rc1.297.gfa9743e501-goog
Subject: [PATCH v11 07/10] usb: typec: tcpci_maxim: Fix vbus stuck on upon
 diconnecting sink
From:   Badhri Jagan Sridharan <badhri@google.com>
To:     Guenter Roeck <linux@roeck-us.net>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Thierry Reding <treding@nvidia.com>,
        Prashant Malani <pmalani@chromium.org>,
        Badhri Jagan Sridharan <badhri@google.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Occasionally, POWER_STATUS.sourcing_vbus takes a while to clear after
writing to  MAX_BUCK_BOOST_OP register. This causes vbus to turn back
on while disconnecting the sink. Overcome this issue by writing into
MAX_BUCK_BOOST_OP during frs while sourcing vbu, instead of always
into the register whenever POWER_STATUS.sourcing_vbus is set.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---
v9 is the first version of this patch. Added to fix
occasional bug of vbus turning back on when disconnecting the FRS accessory
after disconnect. No changes since v9.

Changes since v10:
Added Reviewed-by: Heikki Krogerus
---
 drivers/usb/typec/tcpm/tcpci_maxim.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/typec/tcpm/tcpci_maxim.c b/drivers/usb/typec/tcpm/tcpci_maxim.c
index 82cc257fefd4..aa54b0cf7a64 100644
--- a/drivers/usb/typec/tcpm/tcpci_maxim.c
+++ b/drivers/usb/typec/tcpm/tcpci_maxim.c
@@ -238,23 +238,22 @@ static void process_power_status(struct max_tcpci_chip *chip)
 	if (ret < 0)
 		return;
 
-	if (pwr_status == 0xff) {
+	if (pwr_status == 0xff)
 		max_tcpci_init_regs(chip);
-	} else if (pwr_status & TCPC_POWER_STATUS_SOURCING_VBUS) {
+	else if (pwr_status & TCPC_POWER_STATUS_SOURCING_VBUS)
 		tcpm_sourcing_vbus(chip->port);
-		/*
-		 * Alawys re-enable boost here.
-		 * In normal case, when say an headset is attached, TCPM would
-		 * have instructed to TCPC to enable boost, so the call is a
-		 * no-op.
-		 * But for Fast Role Swap case, Boost turns on autonomously without
-		 * AP intervention, but, needs AP to enable source mode explicitly
-		 * for AP to regain control.
-		 */
-		max_tcpci_set_vbus(chip->tcpci, &chip->data, true, false);
-	} else {
+	else
 		tcpm_vbus_change(chip->port);
-	}
+}
+
+static void max_tcpci_frs_sourcing_vbus(struct tcpci *tcpci, struct tcpci_data *tdata)
+{
+	/*
+	 * For Fast Role Swap case, Boost turns on autonomously without
+	 * AP intervention, but, needs AP to enable source mode explicitly
+	 * for AP to regain control.
+	 */
+	max_tcpci_set_vbus(tcpci, tdata, true, false);
 }
 
 static void process_tx(struct max_tcpci_chip *chip, u16 status)
@@ -441,6 +440,7 @@ static int max_tcpci_probe(struct i2c_client *client, const struct i2c_device_id
 	chip->data.start_drp_toggling = max_tcpci_start_toggling;
 	chip->data.TX_BUF_BYTE_x_hidden = true;
 	chip->data.init = tcpci_init;
+	chip->data.frs_sourcing_vbus = max_tcpci_frs_sourcing_vbus;
 
 	max_tcpci_init_regs(chip);
 	chip->tcpci = tcpci_register_port(chip->dev, &chip->data);
-- 
2.29.0.rc1.297.gfa9743e501-goog

