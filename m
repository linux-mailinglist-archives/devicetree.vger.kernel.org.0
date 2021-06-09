Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8185A3A1FBC
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 00:04:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230155AbhFIWGN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 18:06:13 -0400
Received: from mail-pf1-f181.google.com ([209.85.210.181]:42572 "EHLO
        mail-pf1-f181.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230285AbhFIWGJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 18:06:09 -0400
Received: by mail-pf1-f181.google.com with SMTP id s14so18806252pfd.9
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 15:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tBXaa96gkEcrez3XfbWTRkN94qRcOqCNrg/xPXrSfJQ=;
        b=j9YLeloJtZ+oepsi7GOIyR9WupUSSk6gofMBtI8fh//b1alo2TWTE3GOP8Mb7VdHdU
         2VQ74iux1WawF6/+SfERl5TUK1BE14YPe2Q42hvFUk+NIqjiBfbbuGLbTe30ZJ0/Phji
         uACAf1+sasWJrV1r4TE2Lw+Belq/IYjZMyORc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tBXaa96gkEcrez3XfbWTRkN94qRcOqCNrg/xPXrSfJQ=;
        b=Sktr7KMmhY9qy2mu+OMzWbchoa8GbQG8VWoNz4a0hVpUw2h4T/2Vv47vR5ZQHw+/pY
         /mPFAYWQgV+LD9DsVg8V4Yfit7xPUZmPxZu2Cl+ZGTwp8RBMa+1VO+lWyGGnN+R/JinR
         BtDOLP3TthfQIcO9kcdJvuQMsShjytBqUsobHFAB7KzfXMjYuQNHGXokbKlzAGt9seTj
         tlWqpbWN/pQFozWmROjZx953wk7BQ3bFEOm5pG5o47FGxjpEdwA1MD+3T0458IXnv45E
         6mLRqlexGk+XCVNX3Nv8CdW276Ulw79CQ5wmzgWBZNkR+qI3c9fd60QBLJAwbgx1QJek
         OMYA==
X-Gm-Message-State: AOAM533aL2IxdAEjf5edZqCYCuJ1du2nH8xADOBTanzwmx6KCfYHRsRr
        9fXZkPJN5vdD7JIE1TXg7ZVnJg==
X-Google-Smtp-Source: ABdhPJyChSG4rElteqFEVFYEJRB93kZRZik3O+xaGyYNE5hbAl/TemNQFZtHaPrtALcboE8ULpFfWg==
X-Received: by 2002:a62:6d07:0:b029:2e9:1e3c:ad54 with SMTP id i7-20020a626d070000b02902e91e3cad54mr1581684pfc.46.1623276178844;
        Wed, 09 Jun 2021 15:02:58 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:cedb:c2b5:f22c:760])
        by smtp.gmail.com with UTF8SMTPSA id w125sm422342pfw.214.2021.06.09.15.02.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 15:02:58 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>
Cc:     Peter Chen <peter.chen@kernel.org>,
        Bastien Nocera <hadess@hadess.net>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        linux-kernel@vger.kernel.org,
        Michal Simek <michal.simek@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Colin Ian King <colin.king@canonical.com>,
        Dmitry Osipenko <digetx@gmail.com>,
        Fabio Estevam <festevam@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v12 4/5] usb: host: xhci-plat: Create platform device for onboard hubs in probe()
Date:   Wed,  9 Jun 2021 15:02:48 -0700
Message-Id: <20210609150159.v12.4.I7a3a7d9d2126c34079b1cab87aa0b2ec3030f9b7@changeid>
X-Mailer: git-send-email 2.32.0.rc1.229.g3e70b5a671-goog
In-Reply-To: <20210609220249.86061-1-mka@chromium.org>
References: <20210609220249.86061-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Call onboard_hub_create/destroy_pdevs() from  _probe()/_remove()
to create/destroy platform devices for onboard USB hubs that may
be connected to the root hub of the controller. These functions
are a NOP unless CONFIG_USB_ONBOARD_HUB=y/m.

Also add a field to struct xhci_hcd to keep track of the onboard hub
platform devices that are owned by the xHCI.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

Changes in v12:
- none

Changes in v11:
- use onboard_hub_create/destroy_pdevs() to support multiple onboard
  hubs that are connected to the same root hub
- moved field/list to keep track of platform devices from struct
  usb_hcd to struct xhci_hcd
- updated commit message

Changes in v10:
- none

Changes in v9:
- added dependency on USB_ONBOARD_HUB (or !!USB_ONBOARD_HUB) to
  USB_XHCI_PLATFORM

Changes in v8:
- none

Changes in v7:
- none

Changes in v6:
- none

Changes in v5:
- patch added to the series

 drivers/usb/host/Kconfig     | 1 +
 drivers/usb/host/xhci-plat.c | 6 ++++++
 drivers/usb/host/xhci.h      | 2 ++
 3 files changed, 9 insertions(+)

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index df9428f1dc5e..46818b232204 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -54,6 +54,7 @@ config USB_XHCI_PCI_RENESAS
 config USB_XHCI_PLATFORM
 	tristate "Generic xHCI driver for a platform device"
 	select USB_XHCI_RCAR if ARCH_RENESAS
+	depends on USB_ONBOARD_HUB || !USB_ONBOARD_HUB
 	help
 	  Adds an xHCI host driver for a generic platform device, which
 	  provides a memory space and an irq.
diff --git a/drivers/usb/host/xhci-plat.c b/drivers/usb/host/xhci-plat.c
index c1edcc9b13ce..ee98a3671619 100644
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
@@ -374,6 +375,9 @@ static int xhci_plat_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(&pdev->dev);
 
+	INIT_LIST_HEAD(&xhci->onboard_hub_devs);
+	onboard_hub_create_pdevs(hcd->self.root_hub, &xhci->onboard_hub_devs);
+
 	return 0;
 
 
@@ -420,6 +424,8 @@ static int xhci_plat_remove(struct platform_device *dev)
 	usb_remove_hcd(hcd);
 	usb_put_hcd(shared_hcd);
 
+	onboard_hub_destroy_pdevs(&xhci->onboard_hub_devs);
+
 	clk_disable_unprepare(clk);
 	clk_disable_unprepare(reg_clk);
 	usb_put_hcd(hcd);
diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index 2595a8f057c4..52d9b28745de 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -1919,6 +1919,8 @@ struct xhci_hcd {
 	struct dentry		*debugfs_slots;
 	struct list_head	regset_list;
 
+	struct list_head	onboard_hub_devs;
+
 	void			*dbc;
 	/* platform-specific data -- must come last */
 	unsigned long		priv[] __aligned(sizeof(s64));
-- 
2.32.0.rc1.229.g3e70b5a671-goog

