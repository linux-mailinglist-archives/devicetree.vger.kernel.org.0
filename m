Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D8A8647F4C
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 09:34:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229773AbiLIIeG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 03:34:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229821AbiLIIeA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 03:34:00 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DA9A60B76
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 00:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670574833; x=1702110833;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=aqS6Xix3Clyg7votbMt2p6Yj9UqNWGx8KsGGmFu1njk=;
  b=olAWkbx/BhKR5HreSG5G7eQcQInGKMbhRhr341PDqyALsMLce+DhsonE
   Fd5xIQTHwPc/KYEy/QsFHHJywGnXSI5oN885mrCQMN1oN0iV3g08ssdsh
   BcmYrbrU/Q8FpTBy9gbGdH07urY7bT5oKpxbNpbpdJfxPqcetRTAzNO2c
   bDfoxyIi/bZs0N2NiEpKeweP/ppHjyrM+Vs/A6s7Itwcaj86b0kioRB2G
   EoZCJYc/tuHB+FBdqvkkZ2ebI+K/VYoohOvHifmEf4tHLTqiR5gVyoGrh
   M4SFzcwlwsQRlVH5UI8E+/eaVU80Xfr4t8Qa9S8mlThKpwuN7URnxRwOT
   A==;
X-IronPort-AV: E=Sophos;i="5.96,230,1665439200"; 
   d="scan'208";a="27857153"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 09 Dec 2022 09:33:47 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 09 Dec 2022 09:33:47 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 09 Dec 2022 09:33:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670574827; x=1702110827;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=aqS6Xix3Clyg7votbMt2p6Yj9UqNWGx8KsGGmFu1njk=;
  b=Am5kftNTRp0BTz+5bYbsD4OA4l6eRe7WsKsPsUiEnN1IFwoPDtYbsqsU
   rc4fyuORBviRvxDZ3u5+50l0f5HkynzWZWC7t+MjkvscbNPxYMw60M3e1
   9QYFGXCagPHpS7T2d86uvLtxAYMv/OWBRhZkMIwiR3+IzFfZiLW38w5TH
   I8YWxKXj2QmEyA6Zz1YzlhyklyhW2tJVgaGLA6Ct75mlpUxY6UCgaRqc/
   SUm5CEUGHWnljyFN0zqfksMv92Tt71pzsD0bnnC2N9+Ej9uiIocyb28ru
   GOXC3p5IYpz9BPy+TLufddmtxfwRjggH/FLgei3XFZhgNdhceZMzfhBae
   w==;
X-IronPort-AV: E=Sophos;i="5.96,230,1665439200"; 
   d="scan'208";a="27857149"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 09 Dec 2022 09:33:46 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 12E21280073;
        Fri,  9 Dec 2022 09:33:46 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Marek Vasut <marex@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: [PATCH 2/2] drm: bridge: ti-sn65dsi83: Add enable delay support
Date:   Fri,  9 Dec 2022 09:33:39 +0100
Message-Id: <20221209083339.3780776-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221209083339.3780776-1-alexander.stein@ew.tq-group.com>
References: <20221209083339.3780776-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It takes some time until the enable GPIO has settled when turning on.
This delay is platform specific and may be caused by e.g. voltage shifts,
capacitors etc.
Fall back to current default if not specified in DT.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 drivers/gpu/drm/bridge/ti-sn65dsi83.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
index 047c14ddbbf11..6510ee384315e 100644
--- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
+++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
@@ -145,6 +145,7 @@ struct sn65dsi83 {
 	struct drm_bridge		*panel_bridge;
 	struct gpio_desc		*enable_gpio;
 	struct regulator		*vcc;
+	u32				enable_delay;
 	bool				lvds_dual_link;
 	bool				lvds_dual_link_even_odd_swap;
 };
@@ -346,7 +347,7 @@ static void sn65dsi83_atomic_enable(struct drm_bridge *bridge,
 
 	/* Deassert reset */
 	gpiod_set_value_cansleep(ctx->enable_gpio, 1);
-	usleep_range(10000, 11000);
+	fsleep(ctx->enable_delay);
 
 	/* Get the LVDS format from the bridge state. */
 	bridge_state = drm_atomic_get_new_bridge_state(state, bridge);
@@ -603,6 +604,10 @@ static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx, enum sn65dsi83_model model)
 		return dev_err_probe(dev, PTR_ERR(ctx->vcc),
 				     "Failed to get supply 'vcc'\n");
 
+	if (of_property_read_u32(dev->of_node, "ti,enable-delay-us",
+				 &ctx->enable_delay))
+		ctx->enable_delay = 10000;
+
 	return 0;
 }
 
-- 
2.34.1

