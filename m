Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3EBF4316C30
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 18:12:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232059AbhBJRMZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 12:12:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232280AbhBJRMP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 12:12:15 -0500
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58728C0617A7
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 09:10:56 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id k22so1557750pll.6
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 09:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/N1dRUXzM9/JUnFq9Pnug/RkqUAq6HP4wYrIBCKV8U8=;
        b=d+dSLiyqzCEaPidb2aOKZIvp0lhsfcdHvEI9OxD73mTRni5bYCIvAQtYXgtb1ivtzO
         sx7oFWVXUwn6DYZHEGe4Ps2/cIj1IciaGkKZt3OLhjCMnCt4PfXf7uh+tzJ0UxvxzOPO
         D37EBzitIYaYY961sgDmE5k6/+UXes3738IGQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/N1dRUXzM9/JUnFq9Pnug/RkqUAq6HP4wYrIBCKV8U8=;
        b=RhQsfk9nVINqFyIzRHJgXqbNxXEzVXzBDOwYOOPpg+sLv9QtDFnFKPP4sqi1zYbJiC
         bo3QKNbgG6JrQfZ8mA8zlz5lIIISmcqeJPBmncq+D0+5hhTsjhyWrb5oP3Fk2yQBFfpM
         gYJXarTLlbjyFaOQBDGNlfNuQyvoVnhVTH9M4GUXlemeJdYyaw7zPmw6d5JODA9IDpMy
         O+5jLmznBLExYjoWMEt3belVSWp5bs/YhfKzRZEQaIBoK+o5VIK5xMP5Lw6jkrnx5EI4
         ydfm7CjpPpzCTlWP7iG081qrO/QYlqNsF19gc9gAcOnLHy09TcgX4HTCVKiM7JatTvz3
         P8rQ==
X-Gm-Message-State: AOAM530DOb6ogzuSkUj+yX9jktXJD+zaBAeshfG6etxnmGlJEFBir2S1
        Z2RVhPgoLvJzIre9oCJnyWSnFQ==
X-Google-Smtp-Source: ABdhPJzqsMVvkNvazjxu/kz8rafeT0JEQSG4eqPPE7KcdeDt5bc648hMBfwdiOeEsYzrYNBtjLHIBA==
X-Received: by 2002:a17:903:22c2:b029:dd:f952:e341 with SMTP id y2-20020a17090322c2b02900ddf952e341mr3845981plg.67.1612977055912;
        Wed, 10 Feb 2021 09:10:55 -0800 (PST)
Received: from localhost ([2620:15c:202:1:d8e6:826a:fc50:2158])
        by smtp.gmail.com with UTF8SMTPSA id l25sm2787647pff.105.2021.02.10.09.10.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 09:10:55 -0800 (PST)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, Peter Chen <peter.chen@nxp.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Bastien Nocera <hadess@hadess.net>,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-usb@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mathias Nyman <mathias.nyman@intel.com>
Subject: [PATCH v5 3/4] usb: host: xhci-plat: Create platform device for onboard hubs in probe()
Date:   Wed, 10 Feb 2021 09:10:38 -0800
Message-Id: <20210210091015.v5.3.I7a3a7d9d2126c34079b1cab87aa0b2ec3030f9b7@changeid>
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
In-Reply-To: <20210210171040.684659-1-mka@chromium.org>
References: <20210210171040.684659-1-mka@chromium.org>
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

Changes in v5:
- patch added to the series

 drivers/usb/host/xhci-plat.c | 16 ++++++++++++++++
 include/linux/usb/hcd.h      |  2 ++
 2 files changed, 18 insertions(+)

diff --git a/drivers/usb/host/xhci-plat.c b/drivers/usb/host/xhci-plat.c
index 4d34f6005381..e785fa109eea 100644
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
@@ -184,6 +185,7 @@ static int xhci_plat_probe(struct platform_device *pdev)
 	int			ret;
 	int			irq;
 	struct xhci_plat_priv	*priv = NULL;
+	struct device_node	*np;
 
 
 	if (usb_disabled())
@@ -356,6 +358,17 @@ static int xhci_plat_probe(struct platform_device *pdev)
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
 
 
@@ -402,6 +415,9 @@ static int xhci_plat_remove(struct platform_device *dev)
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
2.30.0.478.g8a0d178c01-goog

