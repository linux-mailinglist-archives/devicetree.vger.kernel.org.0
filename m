Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2EFA35477B
	for <lists+devicetree@lfdr.de>; Mon,  5 Apr 2021 22:18:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240878AbhDEUSt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Apr 2021 16:18:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240767AbhDEUSg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Apr 2021 16:18:36 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8637C0617AA
        for <devicetree@vger.kernel.org>; Mon,  5 Apr 2021 13:18:27 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id s11so8877964pfm.1
        for <devicetree@vger.kernel.org>; Mon, 05 Apr 2021 13:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=phmSYqCi7mknHFm/KEUrvvrrvKp87F1PLLd2ohbWer0=;
        b=Bxew4BZaVIb/CcsXTp3cHQMwuxLv24nehxixcLowRwatyS6BltOCsORKpKFH+CiA3I
         QOxQ/TLddPQ4SK07LmBHRLXCbtiCrOr0VeDLNcw+bozvTh5jBr+pjf/o1HgTPmPftuxm
         XFyXvVmvuHKiCL1i+/4e9sSA5pvER1jWuvSJU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=phmSYqCi7mknHFm/KEUrvvrrvKp87F1PLLd2ohbWer0=;
        b=dV4NJa44F8tfrcGwW3wDehvGZ08gaEgvXZKyxNG6Mq1zFQFuGcpJt7A1lzZjJm2Yc9
         8tHb2mVuR2uce2xT+/LKygZ8FzSLpzpNrwPT1xWhgVP4aj66exujS4ltxpQvsLZr6fdp
         OjomdJBpuCHd8Bx9KzG7mYJJe4vHMF1LTkhNIYj64HRwtb9KsU6/UBYl2Rm4qgKdkc/r
         vNM4UKK+y0YZLldc2EMGknG5ff8tnnWdbshtbvMOnpBQ0jkKxMpDYXZVA+O0LapKG4A3
         E98WatZ/eMgb2ZOQkVqinPWIC66Fib8fKBZaQXLDAq+1INgF5aIda6WZUKK8pcZNZ0mY
         ic4A==
X-Gm-Message-State: AOAM532+ZsNdZat7++7RLeyH5RbWijZF9U3AP6IUFIiUsz3F+6e98H3+
        nSI9RtTYXk4k4eimw204AW2etA==
X-Google-Smtp-Source: ABdhPJx0kAom4olpEYGNk79t5SSQ9qqWEbGmGVAM/ejqc97986HkvwYxt3fDf0ZzajLsBWF/qqdR3w==
X-Received: by 2002:a63:cc:: with SMTP id 195mr24247056pga.282.1617653907297;
        Mon, 05 Apr 2021 13:18:27 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:455e:b8cf:5939:67da])
        by smtp.gmail.com with UTF8SMTPSA id x1sm256458pje.40.2021.04.05.13.18.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 13:18:26 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Peter Chen <peter.chen@nxp.com>,
        Michal Simek <michal.simek@xilinx.com>,
        linux-usb@vger.kernel.org,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Bastien Nocera <hadess@hadess.net>, devicetree@vger.kernel.org,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mathias Nyman <mathias.nyman@intel.com>
Subject: [PATCH v6 4/5] usb: host: xhci-plat: Create platform device for onboard hubs in probe()
Date:   Mon,  5 Apr 2021 13:18:16 -0700
Message-Id: <20210405124900.v6.4.I7a3a7d9d2126c34079b1cab87aa0b2ec3030f9b7@changeid>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
In-Reply-To: <20210405201817.3977893-1-mka@chromium.org>
References: <20210405201817.3977893-1-mka@chromium.org>
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
2.31.0.208.g409f899ff0-goog

