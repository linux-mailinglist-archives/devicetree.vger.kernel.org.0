Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 868EE6746F0
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 00:12:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231135AbjASXMr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 18:12:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231134AbjASXMT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 18:12:19 -0500
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EE057F994
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 15:04:23 -0800 (PST)
Received: by mail-ot1-x32c.google.com with SMTP id k44-20020a9d19af000000b00683e176ab01so2096692otk.13
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 15:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SvfLbk73RSGiWKGQx3k7Xnk0jJOs8gPVcCg0tLoAlfo=;
        b=PSBs74eN8lPWvhZXd+9LFUNPNytfQBRE8WgsR9V0aCdPGZv0MZRLAI4wpBiKTFJdfy
         ojqlncq7G5vOg/yyYWpDMmv5b55WUQPWpUs8eeP8JVJ8Ut77YZr7fwXmejeykutIIQJY
         QDksF20NEltJ6grBCFeaf8Zw0PcgMRGkQrj8DdToOoIaeX6A9G0wqrTHNAw2EDLkVc9K
         WohK3RsQICIDhNZp2RoC65k+XVm+N8EDsdpb+d2gNK23cIu5azQhAcmeVxtOsKf7jP3K
         2OlSvyPaAUrzpMdzOsocmbCUeX6YE2vlXEd/lQTx5076mi14OBHcsD5fn9Cg+G54GXIe
         Bi9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SvfLbk73RSGiWKGQx3k7Xnk0jJOs8gPVcCg0tLoAlfo=;
        b=ArLg0ybIoinyN4LcZ5gQgPcfmeFZCQGBk0uSU7PNDnfwlvGJOR3+nZ1JsspCzAF3U4
         Na8c529Y2pJ84DVUeiRpupHdUsm6V2sbwVP/UIT6YmPfXUf/g/1jZ+ROkqtM/JGJFPcZ
         yoyIIYwFnHEJJizTU2aM0sbsqLdkwDCnfRykaew3xk3iXDS4i9Ft/d/Nbl3BPe/VPkhY
         58lV6JIexHbHjey2fEqy9BeU5TJoEy/6T2XtnTpSjHX+F8BgjjI5Ll8hYURcZuxNyoNn
         GWGtkLIVAkuZ28MwB1MaUjNEUNUSe18omPxU7ybjLikOvarogrZNFrMSws486f+2jP38
         YZPA==
X-Gm-Message-State: AFqh2kpA6oJwBgIAo0jbTcvvbbrtyQMpH0InCB/yeodcskLOqc5Xozd/
        guKCeoq2EquXVL+EYKfOLNg=
X-Google-Smtp-Source: AMrXdXvvKv0MKYJd+CPBE9FmU12l9JvtZEOOnIir9Y2eTkY9D7UJRVgoWRBwu0OvE2EqNtLPKEOn4A==
X-Received: by 2002:a9d:6c42:0:b0:672:c3d9:967e with SMTP id g2-20020a9d6c42000000b00672c3d9967emr5779374otq.3.1674169462433;
        Thu, 19 Jan 2023 15:04:22 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id bv10-20020a0568300d8a00b00684e09b43bdsm9254034otb.13.2023.01.19.15.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 15:04:22 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com, megous@megous.com,
        kernel@puri.sm, agx@sigxcpu.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] drm/panel: st7703: Add support for Anbernic RG353V-V2 panel
Date:   Thu, 19 Jan 2023 17:04:15 -0600
Message-Id: <20230119230415.1283379-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119230415.1283379-1-macroalpha82@gmail.com>
References: <20230119230415.1283379-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG353V-V2 is a 5 inch panel used in a new revision of the
Anbernic RG353V handheld gaming device. Add support for it.

Unfortunately it appears this controller is not able to support 120hz
or 100hz mode like the first revision panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 102 +++++++++++++++++-
 1 file changed, 99 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
index 86a472b01360..2ed0cdfa86de 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
@@ -28,6 +28,7 @@
 /* Manufacturer specific Commands send via DSI */
 #define ST7703_CMD_ALL_PIXEL_OFF 0x22
 #define ST7703_CMD_ALL_PIXEL_ON	 0x23
+#define ST7703_CMD_SETAPID	 0xB1
 #define ST7703_CMD_SETDISP	 0xB2
 #define ST7703_CMD_SETRGBIF	 0xB3
 #define ST7703_CMD_SETCYC	 0xB4
@@ -41,12 +42,15 @@
 #define ST7703_CMD_UNKNOWN_BF	 0xBF
 #define ST7703_CMD_SETSCR	 0xC0
 #define ST7703_CMD_SETPOWER	 0xC1
+#define ST7703_CMD_SETECO	 0xC6
+#define ST7703_CMD_SETIO	 0xC7
+#define ST7703_CMD_SETCABC	 0xC8
 #define ST7703_CMD_SETPANEL	 0xCC
-#define ST7703_CMD_UNKNOWN_C6	 0xC6
 #define ST7703_CMD_SETGAMMA	 0xE0
 #define ST7703_CMD_SETEQ	 0xE3
 #define ST7703_CMD_SETGIP1	 0xE9
 #define ST7703_CMD_SETGIP2	 0xEA
+#define ST7703_CMD_UNKNOWN_EF	 0xEF
 
 struct st7703 {
 	struct device *dev;
@@ -266,8 +270,7 @@ static int xbd599_init_sequence(struct st7703 *ctx)
 				 * ESD_DET_TIME_SEL = 0 frames
 				 */);
 
-	/* Undocumented command. */
-	dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_C6, 0x01, 0x00, 0xFF, 0xFF, 0x00);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETECO, 0x01, 0x00, 0xFF, 0xFF, 0x00);
 
 	dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER,
 			  0x74, /* VBTHS, VBTLS: VGH = 17V, VBL = -11V */
@@ -355,6 +358,98 @@ static const struct st7703_panel_desc xbd599_desc = {
 	.init_sequence = xbd599_init_sequence,
 };
 
+static int rg353v2_init_sequence(struct st7703 *ctx)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+
+	/*
+	 * Init sequence was supplied by the panel vendor.
+	 */
+
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEXTC, 0xf1, 0x12, 0x83);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETAPID, 0x00, 0x00, 0x00,
+			       0xda, 0x80);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETDISP, 0x00, 0x13, 0x70);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETRGBIF, 0x10, 0x10, 0x28,
+			       0x28, 0x03, 0xff, 0x00, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCYC, 0x80);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETBGP, 0x0a, 0x0a);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVCOM, 0x92, 0x92);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER_EXT, 0x25, 0x22,
+			       0xf0, 0x63);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETMIPI, 0x33, 0x81, 0x05,
+			       0xf9, 0x0e, 0x0e, 0x20, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x44, 0x25, 0x00, 0x90, 0x0a,
+			       0x00, 0x00, 0x01, 0x4f, 0x01, 0x00, 0x00, 0x37);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVDC, 0x47);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_BF, 0x02, 0x11, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETSCR, 0x73, 0x73, 0x50, 0x50,
+			       0x00, 0x00, 0x12, 0x50, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER, 0x53, 0xc0, 0x32,
+			       0x32, 0x77, 0xe1, 0xdd, 0xdd, 0x77, 0x77, 0x33,
+			       0x33);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETECO, 0x82, 0x00, 0xbf, 0xff,
+			       0x00, 0xff);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETIO, 0xb8, 0x00, 0x0a, 0x00,
+			       0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCABC, 0x10, 0x40, 0x1e,
+			       0x02);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPANEL, 0x0b);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA, 0x00, 0x07, 0x0d,
+			       0x37, 0x35, 0x3f, 0x41, 0x44, 0x06, 0x0c, 0x0d,
+			       0x0f, 0x11, 0x10, 0x12, 0x14, 0x1a, 0x00, 0x07,
+			       0x0d, 0x37, 0x35, 0x3f, 0x41, 0x44, 0x06, 0x0c,
+			       0x0d, 0x0f, 0x11, 0x10, 0x12, 0x14, 0x1a);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEQ, 0x07, 0x07, 0x0b, 0x0b,
+			       0x0b, 0x0b, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00,
+			       0xc0, 0x10);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1, 0xc8, 0x10, 0x02, 0x00,
+			       0x00, 0xb0, 0xb1, 0x11, 0x31, 0x23, 0x28, 0x80,
+			       0xb0, 0xb1, 0x27, 0x08, 0x00, 0x04, 0x02, 0x00,
+			       0x00, 0x00, 0x00, 0x04, 0x02, 0x00, 0x00, 0x00,
+			       0x88, 0x88, 0xba, 0x60, 0x24, 0x08, 0x88, 0x88,
+			       0x88, 0x88, 0x88, 0x88, 0x88, 0xba, 0x71, 0x35,
+			       0x18, 0x88, 0x88, 0x88, 0x88, 0x88, 0x00, 0x00,
+			       0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2, 0x97, 0x0a, 0x82, 0x02,
+			       0x03, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x81, 0x88, 0xba, 0x17, 0x53, 0x88, 0x88, 0x88,
+			       0x88, 0x88, 0x88, 0x80, 0x88, 0xba, 0x06, 0x42,
+			       0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x23, 0x00,
+			       0x00, 0x02, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_EF, 0xff, 0xff, 0x01);
+
+	return 0;
+}
+
+static const struct drm_display_mode rg353v2_mode = {
+	.hdisplay	= 640,
+	.hsync_start	= 640 + 40,
+	.hsync_end	= 640 + 40 + 2,
+	.htotal		= 640 + 40 + 2 + 80,
+	.vdisplay	= 480,
+	.vsync_start	= 480 + 18,
+	.vsync_end	= 480 + 18 + 2,
+	.vtotal		= 480 + 18 + 2 + 28,
+	.clock		= 24150,
+	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	.width_mm	= 70,
+	.height_mm	= 57,
+};
+
+static const struct st7703_panel_desc rg353v2_desc = {
+	.mode = &rg353v2_mode,
+	.lanes = 4,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_NO_EOT_PACKET | MIPI_DSI_MODE_LPM,
+	.format = MIPI_DSI_FMT_RGB888,
+	.init_sequence = rg353v2_init_sequence,
+};
+
 static int st7703_enable(struct drm_panel *panel)
 {
 	struct st7703 *ctx = panel_to_st7703(panel);
@@ -615,6 +710,7 @@ static void st7703_remove(struct mipi_dsi_device *dsi)
 }
 
 static const struct of_device_id st7703_of_match[] = {
+	{ .compatible = "anbernic,rg353v-panel-v2", .data = &rg353v2_desc },
 	{ .compatible = "rocktech,jh057n00900", .data = &jh057n00900_panel_desc },
 	{ .compatible = "xingbangda,xbd599", .data = &xbd599_desc },
 	{ /* sentinel */ }
-- 
2.34.1

