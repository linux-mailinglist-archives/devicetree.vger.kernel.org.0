Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6585D44B46
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 20:54:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729817AbfFMSyL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 14:54:11 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:45630 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729815AbfFMSyK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 14:54:10 -0400
Received: by mail-pl1-f195.google.com with SMTP id bi6so8129501plb.12
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 11:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Q8S69BX3xpHZr2uy2odezTDXnVK0j/vxrp4XQpnzj94=;
        b=X69ZulaE4ksswSOcisK935ppPOCimBaK9wKQzoWbdJx9hexnxFxppTxwlkfyDk335f
         zg+xx/max7Lj5RHHaALWr4GF2Rs4pIVNcW+EsctqJTj4kTJGRhw4jp4Qu94m+HyOzm5y
         brXa4+I9BLezFomx007mMIT0udlZ21rLXg6bs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Q8S69BX3xpHZr2uy2odezTDXnVK0j/vxrp4XQpnzj94=;
        b=bpghOpl0k/vJQgtwncFwcf1uvKT6xcECo5HT45/oflGl6uqAE3cQKIXFbsWtAKnQBV
         rX/RCKCK8IXR4zK+xzIgR2ouSRtGcmvr4uNi9c8ith/2WuxrxtBsbedYS8k57VA6Nsxx
         mgew9UmgBBbKDeGBOys1XaXUxVD+kucK85uHBIHRYaIfdon5qvoXxn4XliW8iFT3Ltb0
         q6AcIpIg6VKn2Xu18rQLohFNK6Bg9cpbGV2rPmUwukPBYajtYD7Mcur3XvlysY3OZRsc
         X7VnZqoVeFXv6aoz0lsMjoRHPJlUwZeGCXP21acXBZH7PFuht0ngIEonQNtFzEkzBDWI
         Khcw==
X-Gm-Message-State: APjAAAUQuzSno1VD+NQT/eID0f0XFI37BOoninAisGh+9NY8Hco0P1LC
        Vxtf9D+1L3YHMQu7fs35LG4XUw==
X-Google-Smtp-Source: APXvYqxaaPemy8HlCqx44EJP2dYlb26OfNzzTdIleOfRx7U76bvedSxq5O2wJ0IWbVnEXm6M9wSwDQ==
X-Received: by 2002:a17:902:7793:: with SMTP id o19mr28815033pll.110.1560452049961;
        Thu, 13 Jun 2019 11:54:09 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
        by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.54.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 11:54:09 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 5/9] ARM: dts: sun8i: r40: Add TCON TOP LCD clocking
Date:   Fri, 14 Jun 2019 00:22:37 +0530
Message-Id: <20190613185241.22800-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190613185241.22800-1-jagan@amarulasolutions.com>
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to Fig 7-2. TCON Top Block Diagram in User manual.

TCON TOP can have an hierarchy for TCON_LCD0, LCD1 like
TCON_TV0, TV1 so, the tcon top would handle the clocks of
TCON_LCD0, LCD1 similar like TV0, TV1.

But, the current tcon_top node is using dsi clock name with
CLK_DSI_DPHY which is ideally handle via dphy which indeed
a separate interface block.

So, use tcon-lcd0 instead of dsi which would refer the
CLK_TCON_LCD0 similar like CLK_TCON_TV0 with tcon-tv0.

This way we can refer CLK_TCON_LCD0 from tcon_top clock in
tcon_lcd0 node and the actual DSI_DPHY clock node would
refer in dphy node.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi           | 6 +++---
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c     | 6 +++---
 include/dt-bindings/clock/sun8i-tcon-top.h | 2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 219d2dca16b3..12576536df4a 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -591,16 +591,16 @@
 				 <&ccu CLK_TVE0>,
 				 <&ccu CLK_TCON_TV1>,
 				 <&ccu CLK_TVE1>,
-				 <&ccu CLK_DSI_DPHY>;
+				 <&ccu CLK_TCON_LCD0>;
 			clock-names = "bus",
 				      "tcon-tv0",
 				      "tve0",
 				      "tcon-tv1",
 				      "tve1",
-				      "dsi";
+				      "tcon-lcd0";
 			clock-output-names = "tcon-top-tv0",
 					     "tcon-top-tv1",
-					     "tcon-top-dsi";
+					     "tcon-top-lcd0";
 			resets = <&ccu RST_BUS_TCON_TOP>;
 			#clock-cells = <1>;
 
diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index 465e9b0cdfee..e23c19f18986 100644
--- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
+++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
@@ -205,11 +205,11 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 						     CLK_TCON_TOP_TV1);
 
 	if (quirks->has_dsi)
-		clk_data->hws[CLK_TCON_TOP_DSI] =
-			sun8i_tcon_top_register_gate(dev, "dsi", regs,
+		clk_data->hws[CLK_TCON_TOP_LCD0] =
+			sun8i_tcon_top_register_gate(dev, "tcon-lcd0", regs,
 						     &tcon_top->reg_lock,
 						     TCON_TOP_TCON_DSI_GATE,
-						     CLK_TCON_TOP_DSI);
+						     CLK_TCON_TOP_LCD0);
 
 	for (i = 0; i < CLK_NUM; i++)
 		if (IS_ERR(clk_data->hws[i])) {
diff --git a/include/dt-bindings/clock/sun8i-tcon-top.h b/include/dt-bindings/clock/sun8i-tcon-top.h
index 25164d767835..88de3f2ba335 100644
--- a/include/dt-bindings/clock/sun8i-tcon-top.h
+++ b/include/dt-bindings/clock/sun8i-tcon-top.h
@@ -6,6 +6,6 @@
 
 #define CLK_TCON_TOP_TV0	0
 #define CLK_TCON_TOP_TV1	1
-#define CLK_TCON_TOP_DSI	2
+#define CLK_TCON_TOP_LCD0	2
 
 #endif /* _DT_BINDINGS_CLOCK_SUN8I_TCON_TOP_H_ */
-- 
2.18.0.321.gffc6fa0e3

