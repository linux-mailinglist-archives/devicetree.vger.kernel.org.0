Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBDD3733613
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 18:33:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344500AbjFPQdV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 12:33:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344104AbjFPQdT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 12:33:19 -0400
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA7A630FD
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 09:33:08 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686933187;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=tlzdPZjVhCncGXBrk+Svwfe0n2Vpr58cTUfIRVVymiE=;
        b=kUQGH6Tn2DKsCXdjh8L3rL0LSyclek6Whc9sMQ1Glh5foLU0ZCETw4YhIw7GkMWjkwjEnT
        mTdIystdbRa+9FfeTOgQ3cuJ46PTSQ0hTcWY512AxfvhWZF1aEsieDlKqn+raXzFzWSuLK
        CQOyBk+QW4U4tF6nO4YC/GrvnG2DzK4pjXo7DqkMZoOcUb9gEZ+qKfqTcZGhgGD0YN/5aC
        lV6Z7PNmESHmReZLJYbzC8jhQNuXqw0Pg3yiwhnOcJyOrj86SA8ffWKDCCepPIns2FbxAg
        fULUD2AHRw7Eq51p/6k47w0QjoVoPE2X010QNNkHz/G3I34jiglUzMJbXMBo5Q==
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
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 343E6C0002;
        Fri, 16 Jun 2023 16:33:06 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 6/6] drm/panel: sitronix-st7789v: Check display ID
Date:   Fri, 16 Jun 2023 18:32:55 +0200
Message-Id: <20230616163255.2804163-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616163255.2804163-1-miquel.raynal@bootlin.com>
References: <20230616163255.2804163-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A very basic debugging rule when a device is connected for the first
time is to access a read-only register which contains known data in
order to ensure the communication protocol is properly working. This
driver lacked any read helper which is often a critical piece for
speed-up bring-ups.

Add a read helper and use it to verify the communication with the panel
is working as soon as possible in order to fail early if this is not the
case.

As this panel may work with no MISO line, the check is discarded in this
case.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---
 .../gpu/drm/panel/panel-sitronix-st7789v.c    | 81 +++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
index 8649966ceae8..36fb3f2453f1 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
@@ -110,6 +110,9 @@
 			return val;		\
 	} while (0)
 
+#define ST7789V_IDS { 0x85, 0x85, 0x52 }
+#define ST7789V_IDS_SIZE 3
+
 struct st7789_panel_info {
 	const struct drm_display_mode *mode;
 	u32 bus_format;
@@ -157,6 +160,80 @@ static int st7789v_write_data(struct st7789v *ctx, u8 cmd)
 	return st7789v_spi_write(ctx, ST7789V_DATA, cmd);
 }
 
+static int st7789v_read_data(struct st7789v *ctx, u8 cmd, u8 *buf,
+			     unsigned int len)
+{
+	struct spi_transfer xfer[2] = { };
+	struct spi_message msg;
+	u16 txbuf = ((ST7789V_COMMAND & 1) << 8) | cmd;
+	u16 rxbuf[4] = {};
+	u8 bit9 = 0;
+	int ret, i;
+
+	switch (len) {
+	case 1:
+	case 3:
+	case 4:
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	spi_message_init(&msg);
+
+	xfer[0].tx_buf = &txbuf;
+	xfer[0].len = sizeof(txbuf);
+	spi_message_add_tail(&xfer[0], &msg);
+
+	xfer[1].rx_buf = rxbuf;
+	xfer[1].len = len * 2;
+	spi_message_add_tail(&xfer[1], &msg);
+
+	ret = spi_sync(ctx->spi, &msg);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < len; i++) {
+		buf[i] = rxbuf[i] >> i | (bit9 << (9 - i));
+		if (i)
+			bit9 = rxbuf[i] & GENMASK(i - 1, 0);
+	}
+
+	return 0;
+}
+
+static int st7789v_check_id(struct drm_panel *panel)
+{
+	const u8 st7789v_ids[ST7789V_IDS_SIZE] = ST7789V_IDS;
+	struct st7789v *ctx = panel_to_st7789v(panel);
+	bool invalid_ids = false;
+	int ret, i;
+	u8 ids[3];
+
+	if (ctx->spi->mode & SPI_NO_RX)
+		return 0;
+
+	ret = st7789v_read_data(ctx, MIPI_DCS_GET_DISPLAY_ID, ids, ST7789V_IDS_SIZE);
+	if (ret) {
+		dev_err(panel->dev, "Failed to read IDs\n");
+		return ret;
+	}
+
+	for (i = 0; i < ST7789V_IDS_SIZE; i++) {
+		if (ids[i] != st7789v_ids[i]) {
+			invalid_ids = true;
+			break;
+		}
+	}
+
+	if (invalid_ids) {
+		dev_err(panel->dev, "Unrecognized panel IDs");
+		return -EIO;
+	}
+
+	return 0;
+}
+
 static const struct drm_display_mode default_mode = {
 	.clock = 7000,
 	.hdisplay = 240,
@@ -295,6 +372,10 @@ static int st7789v_prepare(struct drm_panel *panel)
 	gpiod_set_value(ctx->reset, 0);
 	msleep(120);
 
+	ret = st7789v_check_id(panel);
+	if (ret)
+		return ret;
+
 	ST7789V_TEST(ret, st7789v_write_command(ctx, MIPI_DCS_EXIT_SLEEP_MODE));
 
 	/* We need to wait 120ms after a sleep out command */
-- 
2.34.1

