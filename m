Return-Path: <devicetree+bounces-1101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 443427A4A64
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:01:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F36472816B9
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 13:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D19E1CAAA;
	Mon, 18 Sep 2023 13:00:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D039C1CF81
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 13:00:54 +0000 (UTC)
Received: from out-210.mta1.migadu.com (out-210.mta1.migadu.com [IPv6:2001:41d0:203:375::d2])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7303512E
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:59:57 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695041995;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+7Cu5zsIXzEyX7qBnjvxJyKtykP7Ho/OOvNX/Tdar6g=;
	b=L9Rr4IxOeDB6UuRUMyJiI3VRDOJGlLIKG6aTPh0dCE0yar6RGntR3YL0VzVp8ymfVkj52x
	t+9EeNUfSFi1SM+ZWTPjGRiAo0AQQ7m3aekJNWPH6BtZdwIJaDkdCqfg3jmhmNQTOiLQlH
	PCAWb4wXx9PoXGHO9hzqjk8RveUBlGaad2SW5vkf4t3RX5cfjXYq0Xjtjh5tt5nozUhfKg
	udBwANsXVOd7tLf5TJqg7Vc6B4IfubRB+yjtuUX7bNPXyBW2OYFtfzMMAx/Uu6v6/zZe9W
	R2nR0nE9h8SV4RLqajiPuFpWXg7OUEVj/bpE6XVN/cEewx5hLhhI7AdyG2i4Ug==
From: John Watts <contact@jookia.org>
To: dri-devel@lists.freedesktop.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	John Watts <contact@jookia.org>,
	Paul Cercueil <paul@crapouillou.net>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 5/9] drm/panel: nv3052c: Allow specifying registers per panel
Date: Mon, 18 Sep 2023 22:58:49 +1000
Message-ID: <20230918125853.2249187-6-contact@jookia.org>
In-Reply-To: <20230918125853.2249187-1-contact@jookia.org>
References: <20230918125853.2249187-1-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Panel initialization registers are per-display and not tied to the
controller itself. Different panels will specify their own registers.
Attach the sequences to the panel info struct so future panels
can specify their own sequences.

Signed-off-by: John Watts <contact@jookia.org>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
---
 .../gpu/drm/panel/panel-newvision-nv3052c.c   | 24 ++++++++++++-------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
index 307335d0f1fc..2b24c684a8ac 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
@@ -20,11 +20,18 @@
 #include <drm/drm_modes.h>
 #include <drm/drm_panel.h>
 
+struct nv3052c_reg {
+	u8 cmd;
+	u8 val;
+};
+
 struct nv3052c_panel_info {
 	const struct drm_display_mode *display_modes;
 	unsigned int num_modes;
 	u16 width_mm, height_mm;
 	u32 bus_format, bus_flags;
+	const struct nv3052c_reg *panel_regs;
+	int panel_regs_len;
 };
 
 struct nv3052c {
@@ -36,12 +43,7 @@ struct nv3052c {
 	struct gpio_desc *reset_gpio;
 };
 
-struct nv3052c_reg {
-	u8 cmd;
-	u8 val;
-};
-
-static const struct nv3052c_reg nv3052c_panel_regs[] = {
+static const struct nv3052c_reg ltk035c5444t_panel_regs[] = {
 	// EXTC Command set enable, select page 1
 	{ 0xff, 0x30 }, { 0xff, 0x52 }, { 0xff, 0x01 },
 	// Mostly unknown registers
@@ -244,6 +246,8 @@ static inline struct nv3052c *to_nv3052c(struct drm_panel *panel)
 static int nv3052c_prepare(struct drm_panel *panel)
 {
 	struct nv3052c *priv = to_nv3052c(panel);
+	const struct nv3052c_reg *panel_regs = priv->panel_info->panel_regs;
+	int panel_regs_len = priv->panel_info->panel_regs_len;
 	struct mipi_dbi *dbi = &priv->dbi;
 	unsigned int i;
 	int err;
@@ -260,9 +264,9 @@ static int nv3052c_prepare(struct drm_panel *panel)
 	gpiod_set_value_cansleep(priv->reset_gpio, 0);
 	msleep(150);
 
-	for (i = 0; i < ARRAY_SIZE(nv3052c_panel_regs); i++) {
-		err = mipi_dbi_command(dbi, nv3052c_panel_regs[i].cmd,
-				       nv3052c_panel_regs[i].val);
+	for (i = 0; i < panel_regs_len; i++) {
+		err = mipi_dbi_command(dbi, panel_regs[i].cmd,
+				       panel_regs[i].val);
 
 		if (err) {
 			dev_err(priv->dev, "Unable to set register: %d\n", err);
@@ -466,6 +470,8 @@ static const struct nv3052c_panel_info ltk035c5444t_panel_info = {
 	.height_mm = 64,
 	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
 	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
+	.panel_regs = ltk035c5444t_panel_regs,
+	.panel_regs_len = ARRAY_SIZE(ltk035c5444t_panel_regs),
 };
 
 static const struct spi_device_id nv3052c_ids[] = {
-- 
2.42.0


