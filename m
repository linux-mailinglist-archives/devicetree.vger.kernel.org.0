Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46A5E51519D
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 19:21:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379586AbiD2RYv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 13:24:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235486AbiD2RYn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 13:24:43 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1324F532F0
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 10:21:16 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id a10so9162083oif.9
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 10:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JujFyyZhvM4XOXVsYz78/GtAJG0bR0liSI3QGaDbkow=;
        b=HaGjDDZ99AMi0OWYgvKPimL2aWVGOgMgM/KXY5LrO5hP03zoADF928VEreD+A+R09A
         snh77iR0n8MSzKQytLiTiaOtMcDO2RcUkbdrf8niOYZEaiPCeI4Rm3FtPDxFsHcNRrxf
         Ymsa5GI56jSz1cmzlRfhnxpoSKPmxBA+2ZWd/VE6c5GD9ixQIPIXRuRKyRnPIOEHbbuk
         Yf2xqs9wxYPsmTp2301XetFvO5l4QDAupZnQfLQ1NqR2u7rZcZB9Nx/oEzI7T/E71ViC
         EDgODrVnNoc3Nt/ajhLxlMVuSuDojEtugpmH3rtMx1BPqrz1l+vigkHIqLtiPl+b3YLH
         4tXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JujFyyZhvM4XOXVsYz78/GtAJG0bR0liSI3QGaDbkow=;
        b=hPF0TeXG38LbPCFoN2Z8P2LI5/5qVbBAs6B/NrnaBbT8nP3nQRWHSs3x7mGiqD9hf8
         q838VbNVik5vgMQnJ8uytNeo2uuH/vI6cFsMZdhfBxBS7RdY413V7Ls2L2nNb/EzpLXP
         vwD/BGroTKVyuxDKxyHBZFMosz7xJkg7VxL0KBnD7dBqUFVn0/cftFezho2yhqa+OjJ8
         I5KsSzoupa7fwR1ppO+kFnA6A3ths0djw8LLgevyXxdbThWDsuVhlawzZbcluT0ncKaK
         rRZreI3r3vKB9kZ3AYXGRcbQjR8290+dpUgs4zjSJHyxOsGHz1mvtKFuuubAfFy8hFUA
         yVFw==
X-Gm-Message-State: AOAM530UfWoc7TRWfReQnoaFikeTZK7uh9Wwtf3XqCEh2UUZQn02rPwJ
        STsYg6xwbjrQuTVDn3wHdz4=
X-Google-Smtp-Source: ABdhPJyE2LcK0HrcmxW1Eh6+2wv8OOKioUST747y5swXm3Ts0xmS4XVM7pTpNaanUq0jHqFEExdkWw==
X-Received: by 2002:aca:3403:0:b0:322:82c5:2ef5 with SMTP id b3-20020aca3403000000b0032282c52ef5mr1934097oia.38.1651252875427;
        Fri, 29 Apr 2022 10:21:15 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:485:4b69:5013:a749:adb3:2bea])
        by smtp.gmail.com with ESMTPSA id u3-20020a056870d58300b000e686d1389csm3509288oao.54.2022.04.29.10.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 10:21:14 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     sam@ravnborg.org
Cc:     marex@denx.de, robh+dt@kernel.org, hs@denx.de,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v3 2/2] drm/panel: simple: Add Startek KD070WVFPA043-C069A panel support
Date:   Fri, 29 Apr 2022 14:20:56 -0300
Message-Id: <20220429172056.3499563-2-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220429172056.3499563-1-festevam@gmail.com>
References: <20220429172056.3499563-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Heiko Schocher <hs@denx.de>

Add Startek KD070WVFPA043-C069A 7" TFT LCD panel support.

Signed-off-by: Heiko Schocher <hs@denx.de>
[fabio: passed .flags and .bus_flags]
Signed-off-by: Fabio Estevam <festevam@denx.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---
Changes since v2:
- Pass the full flags and bus_flags.

 drivers/gpu/drm/panel/panel-simple.c | 38 ++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 595396f57632..8c9fae298d9b 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -3310,6 +3310,41 @@ static const struct panel_desc starry_kr070pe2t = {
 	.connector_type = DRM_MODE_CONNECTOR_DPI,
 };
 
+static const struct display_timing startek_kd070wvfpa_mode = {
+	.pixelclock = { 25200000, 27200000, 30500000 },
+	.hactive = { 800, 800, 800 },
+	.hfront_porch = { 19, 44, 115 },
+	.hback_porch = { 5, 16, 101 },
+	.hsync_len = { 1, 2, 100 },
+	.vactive = { 480, 480, 480 },
+	.vfront_porch = { 5, 43, 67 },
+	.vback_porch = { 5, 5, 67 },
+	.vsync_len = { 1, 2, 66 },
+	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
+		 DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
+		 DISPLAY_FLAGS_SYNC_POSEDGE,
+};
+
+static const struct panel_desc startek_kd070wvfpa = {
+	.timings = &startek_kd070wvfpa_mode,
+	.num_timings = 1,
+	.bpc = 8,
+	.size = {
+		.width = 152,
+		.height = 91,
+	},
+	.delay = {
+		.prepare = 20,
+		.enable = 200,
+		.disable = 200,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
+	.connector_type = DRM_MODE_CONNECTOR_DPI,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
+		     DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
+		     DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
+};
+
 static const struct display_timing tsd_tst043015cmhx_timing = {
 	.pixelclock = { 5000000, 9000000, 12000000 },
 	.hactive = { 480, 480, 480 },
@@ -4019,6 +4054,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "starry,kr070pe2t",
 		.data = &starry_kr070pe2t,
+	}, {
+		.compatible = "startek,kd070wvfpa",
+		.data = &startek_kd070wvfpa,
 	}, {
 		.compatible = "team-source-display,tst043015cmhx",
 		.data = &tsd_tst043015cmhx,
-- 
2.25.1

