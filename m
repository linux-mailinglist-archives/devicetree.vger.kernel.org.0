Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ED370C9883
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 08:46:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728049AbfJCGqV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Oct 2019 02:46:21 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:34026 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728031AbfJCGqV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Oct 2019 02:46:21 -0400
Received: by mail-pf1-f193.google.com with SMTP id b128so1108077pfa.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2019 23:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=w28l9Bay7xNtt5EXEnd1uzJ8iDtWAmssV5M28OxUAUw=;
        b=KQ2LkOEKTiO6GSVyAcVCwmI6tIIYuy7DboEUKeXPS7BzMWxfmXMGK4XlY2+G43azj7
         lbWDLABCj1KDR3VPgHd0Ok/LMU8p7VvOv86DtsxVtqDxwFP7arJNy173b+On2ikOKiuc
         bLXmZaGH5ckchLB7pXN2xEm6b/fYaac9AJj/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=w28l9Bay7xNtt5EXEnd1uzJ8iDtWAmssV5M28OxUAUw=;
        b=TSPX5Paaymui5nGs+8N/+5hCfuB8WPH80Eh1FYnqy6+4Pr5kk8+43kk7azIHkarYWy
         vQC9mbdUF5mhPyIjuuwskm/dI4i4/KnSry2pxyqZMuCu0rWkuwYzrmnuUK8DlIKJMSHK
         e/E2Nth0O3ezXKgrzSRWIjE0zwAnG2h7ECou9ql3DeHiEN2wCqbAkGLCtOFhhQwL9rMo
         mh9mxcu3XyRVAV7DTWGxUKu03XPmcbxr2w7cQ6dJXCK+5UnAwgZn4UIqQNcJ1H25+GHP
         vU0Z9IbYb7TqOeeDi8XKinlgcBsxqrcs/bR2I8Gzvauy+Yu+jeOg9ucXjF6EYYqPnu8L
         OkLg==
X-Gm-Message-State: APjAAAV+SDC86AMg1WwZw5kqQFz0zYY9RFTzEAQEQai1tjMX6ZOMul2v
        71oWerk3GqIfxx4zt/qXf57KUw==
X-Google-Smtp-Source: APXvYqw9CN7jIsE+MsR2uxNhq5HhPqVzRo1QO/rv7lizgNxxfZvpTowoqU4TBvLm2ucXujxNgqGZOA==
X-Received: by 2002:a17:90a:da05:: with SMTP id e5mr8479030pjv.141.1570085180342;
        Wed, 02 Oct 2019 23:46:20 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.121])
        by smtp.gmail.com with ESMTPSA id b18sm1423294pfi.157.2019.10.02.23.46.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2019 23:46:19 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     michael@amarulasolutions.com, Icenowy Zheng <icenowy@aosc.io>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v11 5/7] drm/sun4i: sun6i_mipi_dsi: Add VCC-DSI regulator support
Date:   Thu,  3 Oct 2019 12:15:25 +0530
Message-Id: <20191003064527.15128-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191003064527.15128-1-jagan@amarulasolutions.com>
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allwinner MIPI DSI controllers are supplied with SoC
DSI power rails via VCC-DSI pin.

Add support for this supply pin by adding voltage
regulator handling code to MIPI DSI driver.

Tested-by: Merlijn Wajer <merlijn@wizzup.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 14 ++++++++++++++
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  2 ++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 446dc56cc44b..fe9a3667f3a1 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1110,6 +1110,12 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 		return PTR_ERR(base);
 	}
 
+	dsi->regulator = devm_regulator_get(dev, "vcc-dsi");
+	if (IS_ERR(dsi->regulator)) {
+		dev_err(dev, "Couldn't get VCC-DSI supply\n");
+		return PTR_ERR(dsi->regulator);
+	}
+
 	dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
 					      &sun6i_dsi_regmap_config);
 	if (IS_ERR(dsi->regs)) {
@@ -1183,6 +1189,13 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
 static int __maybe_unused sun6i_dsi_runtime_resume(struct device *dev)
 {
 	struct sun6i_dsi *dsi = dev_get_drvdata(dev);
+	int err;
+
+	err = regulator_enable(dsi->regulator);
+	if (err) {
+		dev_err(dsi->dev, "failed to enable VCC-DSI supply: %d\n", err);
+		return err;
+	}
 
 	reset_control_deassert(dsi->reset);
 	clk_prepare_enable(dsi->mod_clk);
@@ -1215,6 +1228,7 @@ static int __maybe_unused sun6i_dsi_runtime_suspend(struct device *dev)
 
 	clk_disable_unprepare(dsi->mod_clk);
 	reset_control_assert(dsi->reset);
+	regulator_disable(dsi->regulator);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
index 5c3ad5be0690..a01d44e9e461 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
@@ -12,6 +12,7 @@
 #include <drm/drm_connector.h>
 #include <drm/drm_encoder.h>
 #include <drm/drm_mipi_dsi.h>
+#include <linux/regulator/consumer.h>
 
 #define SUN6I_DSI_TCON_DIV	4
 
@@ -23,6 +24,7 @@ struct sun6i_dsi {
 	struct clk		*bus_clk;
 	struct clk		*mod_clk;
 	struct regmap		*regs;
+	struct regulator	*regulator;
 	struct reset_control	*reset;
 	struct phy		*dphy;
 
-- 
2.18.0.321.gffc6fa0e3

