Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 927EF128E28
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2019 14:29:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726666AbfLVN3l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Dec 2019 08:29:41 -0500
Received: from mail-pl1-f193.google.com ([209.85.214.193]:39561 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726645AbfLVN3l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Dec 2019 08:29:41 -0500
Received: by mail-pl1-f193.google.com with SMTP id g6so3167131plp.6
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2019 05:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NRAz4ZoqKI0Nd9TLnyy5Bof8VE4wzHjzOviJFUDWFYU=;
        b=dNOsofgdHJWSE8kXto64TSNFpxvXSvTZtOGMWYtrAbWMsEWHOWfyZJKTWKxhM/tWbM
         AzxWaWz0PjEHFhYXmk9MIjDaDM8CUit4sGy/NLqKXDZxAxfI5cQfx55rk7JCf61gEnsQ
         6XQLOI6jPwnXWXY7UFUUb9Fhteq4HIuQHSf8w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NRAz4ZoqKI0Nd9TLnyy5Bof8VE4wzHjzOviJFUDWFYU=;
        b=NHUiaX/qq3P2N+id7575YA+Hw+Gmf6a8i1dMJJAH+84odEa+LdAMGWai3e1o8rTONZ
         +6jOHAKVSdIfGEWLrj5EAjjYTAGTg/aIUAL+epxOKETLTV/w5092PwsTnLd8jiU7x3Xg
         58P7ZEaZit48pQA5G+s3NAg5eKAmWb9uzVzeumjD4jdHmhOUZ6SXzxjIja/TAK4XhMUb
         lDhgF5626JhITu2joaIHBy/oly4rFNJOlSPhJ4zSOt0jb29QQIZF5IGR3tVFPlev8qU2
         6l3un0nOJAjWPDvMkbFCKWME2qPqaEdYQvTDLzpS7WJ1E/EZOM0RLeFXfRqZmVbWDjCW
         hjaQ==
X-Gm-Message-State: APjAAAUC903Kg+1cHz5HQsFbCKbXl7aF9klu+VaG5mypPsdy5b4uRGkA
        5Rc3Ciw4+hPjb1bq+hkTs2W8hg==
X-Google-Smtp-Source: APXvYqzi7D0b+20qvpHdXr2HAOx7HQsXtaHE5dZtjtMXAPfngax/iDdiCqnpwtaqArWonhyBKuzS1A==
X-Received: by 2002:a17:90a:a4c4:: with SMTP id l4mr27148361pjw.48.1577021380573;
        Sun, 22 Dec 2019 05:29:40 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.16])
        by smtp.gmail.com with ESMTPSA id o2sm12073058pjo.26.2019.12.22.05.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2019 05:29:40 -0800 (PST)
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
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v14 3/7] drm/sun4i: dsi: Get the mod clock for A31
Date:   Sun, 22 Dec 2019 18:52:25 +0530
Message-Id: <20191222132229.30276-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191222132229.30276-1-jagan@amarulasolutions.com>
References: <20191222132229.30276-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As per the user manual, look like mod clock is not mandatory
for all Allwinner MIPI DSI controllers, it is connected to
CLK_DSI_SCLK for A31 and not available in A64.

So, add compatible check for A31 and get mod clock accordingly.

Tested-by: Merlijn Wajer <merlijn@wizzup.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v14:
- none

 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index c958ca9bae63..68b88a3dc4c5 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1120,10 +1120,13 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
 		return PTR_ERR(dsi->reset);
 	}
 
-	dsi->mod_clk = devm_clk_get(dev, "mod");
-	if (IS_ERR(dsi->mod_clk)) {
-		dev_err(dev, "Couldn't get the DSI mod clock\n");
-		return PTR_ERR(dsi->mod_clk);
+	if (of_device_is_compatible(dev->of_node,
+				    "allwinner,sun6i-a31-mipi-dsi")) {
+		dsi->mod_clk = devm_clk_get(dev, "mod");
+		if (IS_ERR(dsi->mod_clk)) {
+			dev_err(dev, "Couldn't get the DSI mod clock\n");
+			return PTR_ERR(dsi->mod_clk);
+		}
 	}
 
 	/*
-- 
2.18.0.321.gffc6fa0e3

