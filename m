Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BAAD25E15A
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 20:09:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726948AbgIDSJI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Sep 2020 14:09:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726360AbgIDSJC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Sep 2020 14:09:02 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB7E2C061244
        for <devicetree@vger.kernel.org>; Fri,  4 Sep 2020 11:09:01 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id k15so5012268pfc.12
        for <devicetree@vger.kernel.org>; Fri, 04 Sep 2020 11:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IF4hZRilImi4GxcYV7qEP7KPFRG9zaXJ3kKDrwVOQs4=;
        b=IHef9VrWxwXnNg13BXyKnAQivvkeN+lXiPl4dz8j2xcTf6cDy2iA4NyhW5KSHDXL57
         ZDKNOPOGC7eZc0a5p4KBydw1He+hnLV89apGSLi8zJ4u/AkiQESxZpmxkYApIeMHybjP
         30H+4nB698PbsR82NQhxo6opiAD6tJ9MJNxnw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IF4hZRilImi4GxcYV7qEP7KPFRG9zaXJ3kKDrwVOQs4=;
        b=tlmtfZwA6pVTwFmFklIoA1I4moufAIcmk2T36A5Svnnrw7tyCIUEJ4IIwtil/peMOu
         OUMJTuVv8PkXbzfVTRW9ZV5zX3hB1pVbijcOT2/ssUNyZT2u9Jplv880j3xuNZtYLchD
         z3vilzd64wpkRz4dKir47XwXFxnPPlUHwuZoH+CUg25nD1ntb2OM1rz92xLB/b8D27Kc
         ZhMEe32bKQTHKx1RGrqiguB0+qPkWcigts8grqSj3giBlJuDYMusvhy2AFgJQDSxx2dC
         kDHC9yr1SNQ30/vVvVKPVtC9DTyumUCWu8JYLFjnWLUB0Tfdz+4mHLe+biCAywVYohjC
         6yGA==
X-Gm-Message-State: AOAM533ED4CI6kuE5/p8ZMgVNByTEycKiab1oEXwLclOn0cRTPPOcsJ/
        MoSBFT0I7epap2HmZWWDP62Upg==
X-Google-Smtp-Source: ABdhPJwV7R5MJBq0lY0RQvR78do2fecNytmePNDLyXB9T9y/8s9S7ztIMlIbQ2EGqdfi0qbtKjwtcw==
X-Received: by 2002:a63:dd0f:: with SMTP id t15mr6923191pgg.123.1599242941476;
        Fri, 04 Sep 2020 11:09:01 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b9ea:24bf:6b2b:1eee])
        by smtp.gmail.com with ESMTPSA id 131sm7448281pfy.5.2020.09.04.11.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2020 11:09:00 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 3/3] drm/panel: simple: Add YTC700TLAG-05-201C
Date:   Fri,  4 Sep 2020 23:38:21 +0530
Message-Id: <20200904180821.302194-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200904180821.302194-1-jagan@amarulasolutions.com>
References: <20200904180821.302194-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add panel timings for YTC700TLAG-05-201C 7" TFT LCD panel from
Yes Optoelectronics Co.,Ltd.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 29 ++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index b106142b11ca..9ca9a6b2ebc1 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -3634,6 +3634,32 @@ static const struct panel_desc winstar_wf35ltiacd = {
 	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
 };
 
+static const struct drm_display_mode yes_optoelectronics_ytc700tlag_05_201c_mode = {
+	.clock = 51200,
+	.hdisplay = 1024,
+	.hsync_start = 1024 + 100,
+	.hsync_end = 1024 + 100 + 100,
+	.htotal = 1024 + 100 + 100 + 120,
+	.vdisplay = 600,
+	.vsync_start = 600 + 10,
+	.vsync_end = 600 + 10 + 10,
+	.vtotal = 600 + 10 + 10 + 15,
+	.flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC,
+};
+
+static const struct panel_desc yes_optoelectronics_ytc700tlag_05_201c = {
+	.modes = &yes_optoelectronics_ytc700tlag_05_201c_mode,
+	.num_modes = 1,
+	.bpc = 6,
+	.size = {
+		.width = 154,
+		.height = 90,
+	},
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X7X4_SPWG,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct drm_display_mode arm_rtsm_mode[] = {
 	{
 		.clock = 65000,
@@ -4040,6 +4066,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "winstar,wf35ltiacd",
 		.data = &winstar_wf35ltiacd,
+	}, {
+		.compatible = "yes-optoelectronics,ytc700tlag-05-201c",
+		.data = &yes_optoelectronics_ytc700tlag_05_201c,
 	}, {
 		/* Must be the last entry */
 		.compatible = "panel-dpi",
-- 
2.25.1

