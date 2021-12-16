Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 531D94776A6
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 17:05:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238789AbhLPQFw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 11:05:52 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5080 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238796AbhLPQFw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Dec 2021 11:05:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639670752; x=1671206752;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=FZr6u+Xp8JktssxvogNSfYTefAIcEB7LkldXk4m703w=;
  b=QGVmOWEs0ZvaJY4+zEmOIFhNvNtGN3Ex9Wrc8+T/SmhjQdAP9lO+86rZ
   QgWvdz16t2KU3nf4XZeQaef3rHlfYbOyauwN7w7kKI7nOi9KJNlfUCKp7
   XUod4CvLv8oLVoe4Fn/bIImWEo7VC3YSTR5Kzk+Bhvg2VJw6n2O3DG/8D
   HD/EGxj1mXk9FPx33xQBhmwwbSDYvmEOkQRwCXf+O3Ms09mVefMtBIY9b
   bdAKBr9KpOB99hcroSe4JC5lvlm4Ad5kK8VWvvViAA90gzVxS8R4npppJ
   Wc2QO535hU2gDhJaIbGFLnSt1EUBeTuKXf9bOfBquV1EzNBmN/XNlL+wv
   A==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; 
   d="scan'208";a="21103121"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 Dec 2021 17:05:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 16 Dec 2021 17:05:50 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 16 Dec 2021 17:05:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639670750; x=1671206750;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=FZr6u+Xp8JktssxvogNSfYTefAIcEB7LkldXk4m703w=;
  b=QyJQekJHD1AnrNHJIV6GFpYdHjDTE75EzOx1S/q4PW43aDchz/drB5yR
   poqY18ezGtFhMhyA+hZCWfijh1nCFqVt6k9cyKS22UzHFQSLJxJh/O0W4
   n7UV4QM5dL6OFxDoQzfmPPgU8P+ZPp2qUDXJrMZ21Fx/ohnLuapuhH8sw
   VIGJe1FPK+i4r8G4IYbpAHiAA+95DGabW7qJuPZ8oBxagEki0bP2+ClyC
   ZVoQg7t9QP39Eyix+PBsY/zha6VbgPWS0UUVZJFjyfU1KYGaTXxmLMdFE
   lezXIN5oSoIr92oS9kSwH9PMkdR4nW+x/p5FsEZPzOHYzEXnyM2C8l6F+
   w==;
X-IronPort-AV: E=Sophos;i="5.88,211,1635199200"; 
   d="scan'208";a="21103120"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Dec 2021 17:05:50 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0E6A2280065;
        Thu, 16 Dec 2021 17:05:50 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] phy: fsl-imx8mq-usb: Add support for setting fsl specific flags
Date:   Thu, 16 Dec 2021 17:05:40 +0100
Message-Id: <20211216160541.544974-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
References: <20211216160541.544974-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The i.MX8MP glue layer has support for the following flags:
* over-current polarity
* PWR pad polarity
* controlling PPC flag in HCCPARAMS register
* parmanent port attach for usb2 & usb3 port

Allow setting these flags by supporting specific flags in the glue node.
In order to get this to work an additional IORESOURCE_MEM is necessary
actually pointing to the glue layer. For backward compatibility this is
purely optional.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 61 ++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index a29b4a6f7c24..86b61af6a949 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -11,6 +11,18 @@
 #include <linux/platform_device.h>
 #include <linux/regulator/consumer.h>
 
+/* USB glue registers */
+#define USB_CTRL0		0x00
+#define USB_CTRL1		0x04
+
+#define USB_CTRL0_PORTPWR_EN	BIT(12) /* 1 - PPC enabled (default) */
+#define USB_CTRL0_USB3_FIXED	BIT(22) /* 1 - USB3 permanent attached */
+#define USB_CTRL0_USB2_FIXED	BIT(23) /* 1 - USB2 permanent attached */
+
+#define USB_CTRL1_OC_POLARITY	BIT(16) /* 0 - HIGH / 1 - LOW */
+#define USB_CTRL1_PWR_POLARITY	BIT(17) /* 0 - HIGH / 1 - LOW */
+
+/* USB phy registers */
 #define PHY_CTRL0			0x0
 #define PHY_CTRL0_REF_SSP_EN		BIT(2)
 #define PHY_CTRL0_FSEL_MASK		GENMASK(10, 5)
@@ -35,9 +47,46 @@ struct imx8mq_usb_phy {
 	struct phy *phy;
 	struct clk *clk;
 	void __iomem *base;
+	void __iomem *glue_base;
 	struct regulator *vbus;
 };
 
+static void imx8mp_configure_glue(struct imx8mq_usb_phy *dwc3_imx)
+{
+	struct device *dev = &dwc3_imx->phy->dev;
+	u32 value;
+
+	if (!dwc3_imx->glue_base)
+		return;
+
+	value = readl(dwc3_imx->glue_base + USB_CTRL0);
+
+	if (device_property_read_bool(dev, "fsl,permanently-attached"))
+		value |= (USB_CTRL0_USB2_FIXED | USB_CTRL0_USB3_FIXED);
+	else
+		value &= ~(USB_CTRL0_USB2_FIXED | USB_CTRL0_USB3_FIXED);
+
+	if (device_property_read_bool(dev, "fsl,disable-port-power-control"))
+		value &= ~(USB_CTRL0_PORTPWR_EN);
+	else
+		value |= USB_CTRL0_PORTPWR_EN;
+
+	writel(value, dwc3_imx->glue_base + USB_CTRL0);
+
+	value = readl(dwc3_imx->glue_base + USB_CTRL1);
+	if (device_property_read_bool(dev, "fsl,over-current-active-low"))
+		value |= USB_CTRL1_OC_POLARITY;
+	else
+		value &= ~USB_CTRL1_OC_POLARITY;
+
+	if (device_property_read_bool(dev, "fsl,power-active-low"))
+		value |= USB_CTRL1_PWR_POLARITY;
+	else
+		value &= ~USB_CTRL1_PWR_POLARITY;
+
+	writel(value, dwc3_imx->glue_base + USB_CTRL1);
+}
+
 static int imx8mq_usb_phy_init(struct phy *phy)
 {
 	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
@@ -69,6 +118,8 @@ static int imx8mp_usb_phy_init(struct phy *phy)
 	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
 	u32 value;
 
+	imx8mp_configure_glue(imx_phy);
+
 	/* USB3.0 PHY signal fsel for 24M ref */
 	value = readl(imx_phy->base + PHY_CTRL0);
 	value &= ~PHY_CTRL0_FSEL_MASK;
@@ -153,6 +204,7 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct imx8mq_usb_phy *imx_phy;
 	const struct phy_ops *phy_ops;
+	struct resource *res;
 
 	imx_phy = devm_kzalloc(dev, sizeof(*imx_phy), GFP_KERNEL);
 	if (!imx_phy)
@@ -168,6 +220,15 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(imx_phy->base))
 		return PTR_ERR(imx_phy->base);
 
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+	if (!res) {
+		dev_warn(dev, "Base address for glue layer missing. Continuing without, some features are missing though.");
+	} else {
+		imx_phy->glue_base = devm_ioremap_resource(dev, res);
+		if (IS_ERR(imx_phy->glue_base))
+			return PTR_ERR(imx_phy->glue_base);
+	}
+
 	phy_ops = of_device_get_match_data(dev);
 	if (!phy_ops)
 		return -EINVAL;
-- 
2.25.1

