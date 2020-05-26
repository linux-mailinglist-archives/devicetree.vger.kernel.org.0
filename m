Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 578BA1B18EA
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2020 23:57:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726491AbgDTV5W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Apr 2020 17:57:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726532AbgDTV5V (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Apr 2020 17:57:21 -0400
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AE26C061A0E
        for <devicetree@vger.kernel.org>; Mon, 20 Apr 2020 14:57:20 -0700 (PDT)
Received: by mail-pl1-x644.google.com with SMTP id a23so4468380plm.1
        for <devicetree@vger.kernel.org>; Mon, 20 Apr 2020 14:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7ERuQZuCLk01x2KDiDzTtYEWNEw864gDAxj/pZ9kbAY=;
        b=vfIBvPwsW2MNCKWGAxhh5yAxrDMGifvsxaF+4So1WZxSF7vP1lW//oLDySbQAMBPnI
         LkGncBPyr9PbQbH/Jc5RUiNbIQeFATTGh6AsRoKv5G0WVeN3OhNWAZbet4FVHF09fBZr
         8K8W2QWAqU6pqDR/inMq0eNMP1W0UR/hu/AMHsycnRuRVetlWfMzc90SOny6tNIEGX/M
         2+M2LeNSr4X1ZpmQrNAYjorDqYedGwCAgsA+WTr9O0Nrh+gZnRLrG1cAWYToXC7B+2Mf
         rDcycMc+JyjRT0wSuyd2j6PuEmcwDnica5yMZoTZIY5KGk8Q/nUflv0ZgUxPa/IXoCO/
         fz0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7ERuQZuCLk01x2KDiDzTtYEWNEw864gDAxj/pZ9kbAY=;
        b=G0ynEPx6zXyGweSkiKDsYeGmRFN0+Xv9BtQjjHSVSPOI+vJ7ZJtHjOPAyHKTBLrpJh
         8Ju83ZQvrHhF6VzZ2d0l4s2b05tT+OiE6iUyZAqDTT8AsMShlF2vHFRGs68AyupR9Ijz
         hcmDX631iZv57PJVgpVmqcr97KJvTvWkrNrcYDP6pevHtQWGjH4nczHGCmdBjSEuWU8U
         u1TWiJTmwiAcrRqopklXvRZPvcF6k+b54UdU1lW8GS4Jh3lM2a+fqRFagkZ8SDvPG6RV
         qergY0rlir6ULitR6w8hbAsn8+/nW98Sfioizmp00LRLa+syjHH/MrWysk2t7ZcQt/n7
         axfg==
X-Gm-Message-State: AGi0PubrXpyH5Iwo77+Vfbm1v5MVMdsD/OkfNO7o7sYLBxGswDqvm351
        1TyNkB0Zyh4Bdvae9zoKoo5rxA==
X-Google-Smtp-Source: APiQypJebqWLBt7PWYbUounxjinvwFHZmqwHIZzsMiNPPcvtKjGnPEhbjTMcSAPX1khY32okPttWWA==
X-Received: by 2002:a17:902:7793:: with SMTP id o19mr11532864pll.107.1587419839603;
        Mon, 20 Apr 2020 14:57:19 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id 62sm455565pfu.181.2020.04.20.14.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2020 14:57:18 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     Rob Herring <robh+dt@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] panel: simple: Add BOE NV133FHM-N61
Date:   Mon, 20 Apr 2020 14:57:42 -0700
Message-Id: <20200420215742.1927498-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200420215742.1927498-1-bjorn.andersson@linaro.org>
References: <20200420215742.1927498-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The BOE NV133FHM-N61 panel is a 13.3" 1920x1080 eDP panel, add support
for it in panel-simple.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/gpu/drm/panel/panel-simple.c | 33 ++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 3ad828eaefe1..5b92583bccdf 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1124,6 +1124,36 @@ static const struct panel_desc boe_nv140fhmn49 = {
 	.connector_type = DRM_MODE_CONNECTOR_eDP,
 };
 
+static const struct drm_display_mode boe_nv133fhm_n61_modes = {
+	.clock = 147840,
+	.hdisplay = 1920,
+	.hsync_start = 1920 + 48,
+	.hsync_end = 1920 + 48 + 32,
+	.htotal = 1920 + 48 + 32 + 200,
+	.vdisplay = 1080,
+	.vsync_start = 1080 + 3,
+	.vsync_end = 1080 + 3 + 6,
+	.vtotal = 1080 + 3 + 6 + 31,
+	.vrefresh = 60,
+};
+
+static const struct panel_desc boe_nv133fhm_n61 = {
+	.modes = &boe_nv133fhm_n61_modes,
+	.num_modes = 1,
+	.bpc = 8,
+	.size = {
+		.width = 300,
+		.height = 187,
+	},
+	.delay = {
+		.hpd_absent_delay = 200,
+		.unprepare = 500,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
+	.bus_flags = DRM_BUS_FLAG_DATA_MSB_TO_LSB,
+	.connector_type = DRM_MODE_CONNECTOR_eDP,
+};
+
 static const struct drm_display_mode cdtech_s043wq26h_ct7_mode = {
 	.clock = 9000,
 	.hdisplay = 480,
@@ -3478,6 +3508,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "boe,nv101wxmn51",
 		.data = &boe_nv101wxmn51,
+	}, {
+		.compatible = "boe,nv133fhm-n61",
+		.data = &boe_nv133fhm_n61,
 	}, {
 		.compatible = "boe,nv140fhmn49",
 		.data = &boe_nv140fhmn49,
-- 
2.26.0

