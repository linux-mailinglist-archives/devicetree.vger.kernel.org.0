Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3D99772414
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 14:31:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231944AbjHGMby (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 08:31:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232887AbjHGMbw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 08:31:52 -0400
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 087E910D8
        for <devicetree@vger.kernel.org>; Mon,  7 Aug 2023 05:31:42 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C52D31C0009;
        Mon,  7 Aug 2023 12:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1691411501;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=nmQsZ4iKveTkRfS5uCmvF1G6mGVBlqb5YMx0ATAXGE4=;
        b=Qlr5JFWkh2W3OK2WpDgzghj++iuKv3/5ncjUwtUpXglxnl3ru+o3PwNQLSXQgNgGf/5r4R
        7trX4Hcwh+5KhUILn+pId3Hh+t0+jL4gsk5k/IIZA8CUN/NqzE/q+hF/twhzMxRsqIXdh3
        knJ1rjLelOrmi+0XiKwniAkf82ImtObB4VtNkflkFa/2kyeBeVhYgqueuzkfa3o9yv0MY1
        mUYuSA12ggk2xw0FJlUa/3lr5CCtMmATmPl4UBGMhr2SERupkzBg7X4KEeDLyLBiZmA/au
        NZGQ6mBVfCJD5UR24DNND1TYt2fUQP3POBIPpVGTl01J51E44j9SE5Hs1Z8tkA==
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        devicetree@vger.kernel.org,
        Thomas Weber <thomas.weber@corscience.de>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v4 2/2] drm/panel: simple: Add support for Mitsubishi AA084XE01
Date:   Mon,  7 Aug 2023 14:31:38 +0200
Message-Id: <20230807123138.67443-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230807123138.67443-1-miquel.raynal@bootlin.com>
References: <20230807123138.67443-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: miquel.raynal@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
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

Changes in v4:
* None.

Changes in v3:
* Fix connector type.

Changes in v2:
* Add connector type and bus flags.

 drivers/gpu/drm/panel/panel-simple.c | 29 ++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index a247a0e7c799..e498a40e1f78 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2763,6 +2763,32 @@ static const struct panel_desc mitsubishi_aa070mc01 = {
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
+	.connector_type = DRM_MODE_CONNECTOR_DPI,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
+};
+
 static const struct display_timing multi_inno_mi0700s4t_6_timing = {
 	.pixelclock = { 29000000, 33000000, 38000000 },
 	.hactive = { 800, 800, 800 },
@@ -4286,6 +4312,9 @@ static const struct of_device_id platform_of_match[] = {
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

