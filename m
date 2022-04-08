Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C5854F9A84
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 18:23:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230335AbiDHQZa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 12:25:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230430AbiDHQZ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 12:25:29 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D8AC2AE9C9
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 09:23:22 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d15so8293514pll.10
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 09:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lhe1gjfVmNBzu+OAJh4OI2ThwckJvfBSRTmYzb4Lz0s=;
        b=GEYKFzIcWeEp6hEGddeuWkDudWkl/gOlJK6Hh6JGbmHTlbqv6CNW/ZkiFclphnFgLi
         htBq+ZuDGcwVO4UyzklcSh0/YAFKedzvFS8L8pp0xp+g8CUAnWS0o1YytTthNovINEfI
         51kMWQzuAgs94d9kB0pFq4vNMcdLe1X4tlFIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lhe1gjfVmNBzu+OAJh4OI2ThwckJvfBSRTmYzb4Lz0s=;
        b=lxd9JDfyvFzrh8eARbrXlYlWCcHhuKTOOYZcamwgXPMR89IFwc2q4BExjAC76mJCkV
         6zMe5+kXhYI+hlIW9tVC3svpEPbh1eLFfs/nyTj111WUfJMIzDa/fUr5VUBbQ+1MUSfm
         2uNC7wH9KYPgWt9KLk/6bULqlrstm4pnRytBu5q87vMeQVROcBqLs/At8seNG6lJJ6K7
         LWGsT8pjmSn1xrUeeZno8o/bETvDkXIXiYrq/jZthNl1RDqt4Rjboe6hBy9/3JmfHZkj
         unHH+lIqgriPrMIIVZICjZ4TzpFluicaDij3/oiqqVg2yrsX4Ud0HZmu36RNcvEX1tAr
         cykQ==
X-Gm-Message-State: AOAM5302Au9MNdI85PVH9pJM6eNg9GyqmDU6q2w/Z5LuOsLGKUlngjN0
        XnlqrTBqakwBvB1Hmp4AVD5fCw==
X-Google-Smtp-Source: ABdhPJzjdH/kgRX17oIXGBe/rX2xmyR6sfgMFtUQQX/U7WzDzL3u6ctkQvEnSDFpMOlRzZI8k5IFCw==
X-Received: by 2002:a17:90a:c302:b0:1bd:14ff:15 with SMTP id g2-20020a17090ac30200b001bd14ff0015mr22844531pjt.19.1649435001831;
        Fri, 08 Apr 2022 09:23:21 -0700 (PDT)
Received: from j-ThinkPad-E14-Gen-2.domain.name ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id n18-20020a056a0007d200b004fdac35672fsm24929863pfu.68.2022.04.08.09.23.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 09:23:21 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Inki Dae <inki.dae@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Fancy Fang <chen.fang@nxp.com>,
        Tim Harvey <tharvey@gateworks.com>,
        Michael Nazzareno Trimarchi <michael@amarulasolutions.com>,
        Adam Ford <aford173@gmail.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 09/11] drm: bridge: samsung-dsim: Add input_bus_flags
Date:   Fri,  8 Apr 2022 21:51:06 +0530
Message-Id: <20220408162108.184583-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220408162108.184583-1-jagan@amarulasolutions.com>
References: <20220408162108.184583-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

eLCDIF is expecting to have input_bus_flags as DE_LOW in order to
set active low during valid data transfer on each horizontal line.

Add DE_LOW flag via drm bridge timings.

v1:
* none

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/bridge/samsung-dsim.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/bridge/samsung-dsim.c b/drivers/gpu/drm/bridge/samsung-dsim.c
index 02802526f82f..71bbaf19f530 100644
--- a/drivers/gpu/drm/bridge/samsung-dsim.c
+++ b/drivers/gpu/drm/bridge/samsung-dsim.c
@@ -1543,6 +1543,10 @@ __weak void samsung_dsim_plat_remove(struct samsung_dsim *priv)
 {
 }
 
+static const struct drm_bridge_timings samsung_dsim_bridge_timings = {
+	.input_bus_flags = DRM_BUS_FLAG_DE_LOW,
+};
+
 static int samsung_dsim_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1622,6 +1626,7 @@ static int samsung_dsim_probe(struct platform_device *pdev)
 
 	dsi->bridge.funcs = &samsung_dsim_bridge_funcs;
 	dsi->bridge.of_node = dev->of_node;
+	dsi->bridge.timings = &samsung_dsim_bridge_timings;
 	dsi->bridge.type = DRM_MODE_CONNECTOR_DSI;
 
 	if (dsi->driver_data->platform_init) {
-- 
2.25.1

