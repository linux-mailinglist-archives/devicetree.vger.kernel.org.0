Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABFCC734C94
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 09:44:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229610AbjFSHoU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 03:44:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229940AbjFSHny (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 03:43:54 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::225])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEF3FE7F
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 00:43:52 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687160631;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=9BFD9qSkR0s44UL7BAPwQ0yamsSWDUEyrKoM0Ms23go=;
        b=PND6pAgVD9bniIhRY2PH5BA5DZZNWkDBhU3LDnq8IH7qIJViT2DH4mNjPlOMGDdbOT6BtD
        MZoXztOYnxxfL8XrfaCgmxmH7qaVToPzAd4f6zAe0FminFWXK4KrwGXHOLZKNX8Ir+6NUF
        gUs7dXbzmHlcZsfMGxEoieAvl16bJWASsqRx1qEYe1i85OGYebTKHVOtRoeNQ+LbYNd6k9
        5fXzAbNZxjXtkdbAaY3wxdxc95nTDyzcVLXOtZL64sF+0HhIEXLspO/PU1H565rphZqMUj
        cfs2SIv6lyCo6ZOEwNGFKNsBRxzX9UXhuo9lhmQUO12pdgSS35R55OVEeblIGg==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4593D1C000A;
        Mon, 19 Jun 2023 07:43:50 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Thomas Weber <thomas.weber@corscience.de>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 2/2] drm/panel: simple: Add support for Mitsubishi AA084XE01
Date:   Mon, 19 Jun 2023 09:43:48 +0200
Message-Id: <20230619074348.2893701-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230619074348.2893701-1-miquel.raynal@bootlin.com>
References: <20230619074348.2893701-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Thomas Weber <thomas.weber@corscience.de>

Add support for the Mitsubishi AA084XE01 panel which is an 8.4 inch XGA
TFT-LCD module for industrial use.

Link: https://www.mouser.fr/datasheet/2/274/aa084xe01_e-364171.pdf
Signed-off-by: Thomas Weber <thomas.weber@corscience.de>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---

Changes in v2:
* Lowered the clock to match the typical 65MHz frequency.
* Added the connector type and the missing bus flags.
* Collected an A-by tag.

 drivers/gpu/drm/panel/panel-simple.c | 29 ++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 8a3b685c2fcc..963f3223c985 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2670,6 +2670,32 @@ static const struct panel_desc mitsubishi_aa070mc01 = {
 	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
 };
 
+static const struct drm_display_mode mitsubishi_aa084xe01_mode = {
+	.clock = 56234,
+	.hdisplay = 1024,
+	.hsync_start = 1024 + 24,
+	.hsync_end = 1024 + 24 + 63,
+	.htotal = 1024 + 24 + 63 + 1,
+	.vdisplay = 768,
+	.vsync_start = 768 + 3,
+	.vsync_end = 768 + 3 + 6,
+	.vtotal = 768 + 3 + 6 + 1,
+	.flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC,
+};
+
+static const struct panel_desc mitsubishi_aa084xe01 = {
+	.modes = &mitsubishi_aa084xe01_mode,
+	.num_modes = 1,
+	.bpc = 8,
+	.size = {
+		.width = 1024,
+		.height = 768,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB565_1X16,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
+};
+
 static const struct display_timing multi_inno_mi0700s4t_6_timing = {
 	.pixelclock = { 29000000, 33000000, 38000000 },
 	.hactive = { 800, 800, 800 },
@@ -4158,6 +4184,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "mitsubishi,aa070mc01-ca1",
 		.data = &mitsubishi_aa070mc01,
+	}, {
+		.compatible = "mitsubishi,aa084xe01",
+		.data = &mitsubishi_aa084xe01,
 	}, {
 		.compatible = "multi-inno,mi0700s4t-6",
 		.data = &multi_inno_mi0700s4t_6,
-- 
2.34.1

