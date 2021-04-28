Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4E8936DF1B
	for <lists+devicetree@lfdr.de>; Wed, 28 Apr 2021 20:42:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243745AbhD1Sma (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Apr 2021 14:42:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243731AbhD1Sm3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Apr 2021 14:42:29 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29606C0613ED
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 11:41:44 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id j6-20020a17090adc86b02900cbfe6f2c96so9610431pjv.1
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 11:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JewEs2tV5gzRVg7T4CN2dfrhNEHaBUNm6fh+qnkrak4=;
        b=XCl0s7Eqigekg60CNXBBoKtGPRYwWSy6HJzODNJee1xEPVC1XnIBB5ARNdvOdYoYqn
         NJgMLh/5XESFikD7bEqRSvvWAdJRmG+Py8yqRlx0wgBDOtQfMDKaoZJswD8OHVkARuSF
         nTgUriQ4A223f9Dh8YwCzC+Ccxbd4ItQJx784=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JewEs2tV5gzRVg7T4CN2dfrhNEHaBUNm6fh+qnkrak4=;
        b=fy6DZ4nSk2//EdkanCTmWm/6Y4cQlaIZwXueYXiCPZVpFJQRuVLNLSubJMqOYNuJaX
         YaEIkzXJMpmbGuZMphZg9lHz9uZJbZggk7/HsNVDNK+vItv+q+XQvKQuqNob0Yo4dMUP
         VyGHjLozIeTSJR1qTVCzPgcfLBaeMgcp1sMovY1DyIQdX8yiWDVNpEQV8cYni69+4qLI
         zqpuWqyg1gfngWawHSfbNmd76ZTO8I6282wVSKGQBxjZxUMOHngL0iBMdTztTz4uu2T/
         STrXFXHxpMvZGADATH1gb0RzGIq97eZY4frNcxTjeDDGPbLSrSpd22NHcTZFRNWDqkdM
         iu/A==
X-Gm-Message-State: AOAM530jWXPGoCQefSeUTZurkFOPD4Za3NhhLvAMp22L2Y/iODOyd9iX
        GRZ/CUlH+B4aePo4W/tCUheesA==
X-Google-Smtp-Source: ABdhPJydlOsUm7kXCtjtYtMsTQl/HsmsVUkJwNAiD+AwTudy4abTOY5bUFX9DV/aZJWWWN43v42OPg==
X-Received: by 2002:a17:90a:e649:: with SMTP id ep9mr3605487pjb.8.1619635303695;
        Wed, 28 Apr 2021 11:41:43 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:4c1a:a0a7:2b43:81b0])
        by smtp.gmail.com with UTF8SMTPSA id c13sm374859pgw.42.2021.04.28.11.41.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 11:41:43 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-kernel@vger.kernel.org,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Bastien Nocera <hadess@hadess.net>, linux-usb@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>, devicetree@vger.kernel.org,
        Peter Chen <peter.chen@nxp.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mathias Nyman <mathias.nyman@intel.com>
Subject: [PATCH v8 4/5] usb: host: xhci-plat: Create platform device for onboard hubs in probe()
Date:   Wed, 28 Apr 2021 11:41:31 -0700
Message-Id: <20210428114109.v8.4.I7a3a7d9d2126c34079b1cab87aa0b2ec3030f9b7@changeid>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210428184132.2184997-1-mka@chromium.org>
References: <20210428184132.2184997-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Check during probe() if a hub supported by the onboard_usb_hub
driver is connected to the controller. If such a hub is found
create the corresponding platform device. This requires the
device tree to have a node for the hub with its vendor and
product id (which is not common for USB devices). Further the
platform device is only created when CONFIG_USB_ONBOARD_HUB=y/m.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

Changes in v8:
- none

Changes in v7:
- none

Changes in v6:
- none

Changes in v5:
- patch added to the series

 drivers/usb/host/xhci-plat.c | 16 ++++++++++++++++
 include/linux/usb/hcd.h      |  2 ++
 2 files changed, 18 insertions(+)

diff --git a/drivers/usb/host/xhci-plat.c b/drivers/usb/host/xhci-plat.c
index c1edcc9b13ce..9c0fb7e8df1f 100644
--- a/drivers/usb/host/xhci-plat.c
+++ b/drivers/usb/host/xhci-plat.c
@@ -15,6 +15,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/usb/onboard_hub.h>
 #include <linux/usb/phy.h>
 #include <linux/slab.h>
 #include <linux/acpi.h>
@@ -195,6 +196,7 @@ static int xhci_plat_probe(struct platform_device *pdev)
 	int			ret;
 	int			irq;
 	struct xhci_plat_priv	*priv = NULL;
+	struct device_node	*np;
 
 
 	if (usb_disabled())
@@ -374,6 +376,17 @@ static int xhci_plat_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(&pdev->dev);
 
+	np = usb_of_get_device_node(hcd->self.root_hub, hcd->self.busnum);
+	if (np && of_is_onboard_usb_hub(np)) {
+		struct platform_device *pdev;
+
+		pdev = of_platform_device_create(np, NULL, NULL);
+		if (pdev)
+			hcd->onboard_hub_dev = &pdev->dev;
+		else
+			xhci_warn(xhci, "failed to create onboard hub platform device\n");
+	}
+
 	return 0;
 
 
@@ -420,6 +433,9 @@ static int xhci_plat_remove(struct platform_device *dev)
 	usb_remove_hcd(hcd);
 	usb_put_hcd(shared_hcd);
 
+	if (hcd->onboard_hub_dev)
+		of_platform_device_destroy(hcd->onboard_hub_dev, NULL);
+
 	clk_disable_unprepare(clk);
 	clk_disable_unprepare(reg_clk);
 	usb_put_hcd(hcd);
diff --git a/include/linux/usb/hcd.h b/include/linux/usb/hcd.h
index 96281cd50ff6..d02a508e19b0 100644
--- a/include/linux/usb/hcd.h
+++ b/include/linux/usb/hcd.h
@@ -225,6 +225,8 @@ struct usb_hcd {
 	 * (ohci 32, uhci 1024, ehci 256/512/1024).
 	 */
 
+	struct device *onboard_hub_dev;
+
 	/* The HC driver's private data is stored at the end of
 	 * this structure.
 	 */
-- 
2.31.1.498.g6c1eba8ee3d-goog

