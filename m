Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3155BCCA5E
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 16:19:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728691AbfJEOTl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 10:19:41 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:42004 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728637AbfJEOTl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 10:19:41 -0400
Received: by mail-pf1-f195.google.com with SMTP id q12so5651577pff.9
        for <devicetree@vger.kernel.org>; Sat, 05 Oct 2019 07:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3NxA/Yr80iVxdKub81APPkpdy1Qml/Yl3GutfXi9RDc=;
        b=YrrSlKQWQDx5ylGAdfIauv3lHB9Oak4L4iNrX08dGdQzvNF/GVgM5ikcJkkw4Yoaod
         LtTeWc+LKQ3n+2Fa3x8B4YL2a3EMIGzcOcxkU5SVsUJRn2Ll8ktBt1Yej3mlX8Rfozcy
         Y6sMA31Cpm/jDWq/o0rSo969bolIAGnpTHibQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3NxA/Yr80iVxdKub81APPkpdy1Qml/Yl3GutfXi9RDc=;
        b=sD5/enDdvcY29IftB19B7DgPXuX6M9RFJpbxGtsKF/kGHaiZlp/vFA2n76TZGI9h/H
         bUSes8KXhqKX2LpuTRgIYbPwmE4vtB1BhV6e3I3hEol1kmS9FimlwvF5I1yZPdASLkvU
         Y+DdwAfT2BA41hQtGRfGM6Igfhhc417iOAQwtW4vVoqpxzMMs4dnfKbOeN8z/6y6iSVM
         0AqTn8SDC1QbU/vjIPT0C/TAv3/aUbZgWzIvGpBaLfAzuQP2I/z1FG+K0I+iDK/ulZNp
         j5j4cmxqe8Faj/sylYO1SRIdnAxmLOalTTzbQoOLR4IK/8kIeynP7CaiBUraxi5R2X57
         LgXQ==
X-Gm-Message-State: APjAAAVCK7/P0MU7QUsTTQNO7PluW/qlGsM8n8QMWuE3guj9sBxy8Z0P
        rO3pf6NyHiAwYmBeKFkEcpfBuA==
X-Google-Smtp-Source: APXvYqwOS0LD2HS1m+5XKVlRht04+Vt6iAydlUtKPt+uRbbxb1fyadX5tNpeeaNlC31fEo7gW7E91A==
X-Received: by 2002:a65:5802:: with SMTP id g2mr22108678pgr.333.1570285180636;
        Sat, 05 Oct 2019 07:19:40 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
        by smtp.gmail.com with ESMTPSA id y138sm8977604pfb.174.2019.10.05.07.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Oct 2019 07:19:40 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     michael@amarulasolutions.com, Icenowy Zheng <icenowy@aosc.io>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v10 4/6] drm/sun4i: dsi: Add Allwinner A64 MIPI DSI support
Date:   Sat,  5 Oct 2019 19:49:11 +0530
Message-Id: <20191005141913.22020-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191005141913.22020-1-jagan@amarulasolutions.com>
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MIPI DSI controller in Allwinner A64 is similar to A33.

But unlike A33, A64 doesn't have DSI_SCLK gating so add compatible
for Allwinner A64 with uninitialized has_mod_clk driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Merlijn Wajer <merlijn@wizzup.org>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 6724a14c816d..e3aab815fa73 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1241,11 +1241,18 @@ static const struct sun6i_dsi_variant sun6i_a31_mipi_dsi = {
 	.has_mod_clk = true,
 };
 
+static const struct sun6i_dsi_variant sun50i_a64_mipi_dsi = {
+};
+
 static const struct of_device_id sun6i_dsi_of_table[] = {
 	{
 		.compatible = "allwinner,sun6i-a31-mipi-dsi",
 		.data = &sun6i_a31_mipi_dsi,
 	},
+	{
+		.compatible = "allwinner,sun50i-a64-mipi-dsi",
+		.data = &sun50i_a64_mipi_dsi,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, sun6i_dsi_of_table);
-- 
2.18.0.321.gffc6fa0e3

