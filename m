Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C57F729DA6
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 17:00:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241416AbjFIPAY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 11:00:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241673AbjFIO76 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:59:58 -0400
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E51F0269A
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:59:57 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686322796;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Nq6EroddWpsFxHMt68/nfoMOdKtHAf27aF2fFd7Umk4=;
        b=gEpvYVFP+WvhW6wKXVnxEg8n7BqHXZgpOr99f4i/fZk/S4i+s1LKeNHOOIIJ/ZxwQfgI7X
        L5cx26jgOp0sjAx4C5Br+/Ki5SaaToEiWB64judDAUP7FHV6UHtlaHlvmoyl9v3PjbVuUZ
        LjaLQw1msB12Q25czgj1EPQV0MPwRP3GQ/XFwiRrn5l+DrYTeMHTAHHrOk1e64YKz9WMP9
        NcWwiXeCaBTK/WGIQvFvkYL2dLDaGznVpcvnxk1sVkTgBCKEystklVltyCUNtL2efYjFaO
        iyXpi0QDrZ7I1aZDIceLMvIQhJBQr0GYXny/PIJYAngFy2OZggdrTDSMNrOkfQ==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id BD5FD24000B;
        Fri,  9 Jun 2023 14:59:55 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 2/7] drm/panel: sitronix-st7789v: Use 9 bits per spi word by default
Date:   Fri,  9 Jun 2023 16:59:46 +0200
Message-Id: <20230609145951.853533-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230609145951.853533-1-miquel.raynal@bootlin.com>
References: <20230609145951.853533-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Sitronix controller expects 9-bit words, provide this as default at
probe time rather than specifying this in each and every access.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7789v.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
index c67b9adb157f..e9ca7ebb458a 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
@@ -138,7 +138,6 @@ static int st7789v_spi_write(struct st7789v *ctx, enum st7789v_prefix prefix,
 	spi_message_init(&msg);
 
 	xfer.tx_buf = &txbuf;
-	xfer.bits_per_word = 9;
 	xfer.len = sizeof(txbuf);
 
 	spi_message_add_tail(&xfer, &msg);
@@ -365,6 +364,13 @@ static int st7789v_probe(struct spi_device *spi)
 	spi_set_drvdata(spi, ctx);
 	ctx->spi = spi;
 
+	spi->bits_per_word = 9;
+	ret = spi_setup(spi);
+	if (ret < 0) {
+		dev_err(&spi->dev, "spi_setup failed: %d\n", ret);
+		return ret;
+	}
+
 	drm_panel_init(&ctx->panel, &spi->dev, &st7789v_drm_funcs,
 		       DRM_MODE_CONNECTOR_DPI);
 
-- 
2.34.1

