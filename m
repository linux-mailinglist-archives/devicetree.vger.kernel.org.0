Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EB7145D867
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 11:45:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354588AbhKYKsb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 05:48:31 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:16735 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1354691AbhKYKqa (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 25 Nov 2021 05:46:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637836997; x=1669372997;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=L0nqttDteHJvl4andTbKyX8dJHJhMtjIdjqk4reSbmk=;
  b=KB2XJI/Kz6TZaGqyfyEUippXNUeMJyv63XX6DENVToa9aidq60YqnmTT
   NRs8fqF0mmixALb+yW5ReT9vnmhAJ3pOLvjz67wnDtCvpObFC8vmv/onp
   jCheP+NIa/8uw/WrhbKoT3uI16JolvHvS2+k/uT8QMsvttzjh2Cdw+ixL
   LvJID8JdGLCvPn95SPvGNu/DuGW1G7PUwx2fKryBhMG95aBCEJ53XhYQW
   xQpFVHTiZ4Vt8GBGbMCVoz6ZMJRCybCYlQo0wvOGs68ytNIez0aqbCnlS
   HJd3Ng7wW2aO43tc9cU0lL5ERU7qRrotQUkpdZhcXXx1Q7oi+1pbfUAXH
   w==;
X-IronPort-AV: E=Sophos;i="5.87,263,1631570400"; 
   d="scan'208";a="20673122"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 25 Nov 2021 11:41:14 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 25 Nov 2021 11:41:14 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 25 Nov 2021 11:41:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637836874; x=1669372874;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=L0nqttDteHJvl4andTbKyX8dJHJhMtjIdjqk4reSbmk=;
  b=KFisRx1FJTpvEqxdca9z/2mGYGZF6bLUv14sz3bMqgStc+gJfASwTgpG
   tshhm72bZ6WvF5vnZYmwXZ9mMOb/Zym+Y2CH9w+aQ3Eidl9mDIOsZqlh4
   6h4H+jN5WXKgjg3pTrrZfCRzbjrlLlX6sroPxvgBv4ENlG1qVt6sXIe3F
   pxGpjgltj1OIcW8R6xc2gWdetCA17zI0vhFjyq7L0d9MeqTqR2BkAJuVP
   I1U+aRSma3FG3TyqYYGeuFivCuXFwFEWVgseln5heUqjO1sBWQ7Dn5/Jy
   vKWJxVPyMSjmaJVq3PE6RWcZCXNFy6eLrHx4EkGwrG5jd86JfYv6JX0+b
   A==;
X-IronPort-AV: E=Sophos;i="5.87,263,1631570400"; 
   d="scan'208";a="20673121"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Nov 2021 11:41:13 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id D4854280075;
        Thu, 25 Nov 2021 11:41:13 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [RFC PATCH 1/2] phy: fsl-imx8mq-usb: Add support for setting fsl specific flags
Date:   Thu, 25 Nov 2021 11:41:03 +0100
Message-Id: <20211125104104.1416523-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211125104104.1416523-1-alexander.stein@ew.tq-group.com>
References: <20211125104104.1416523-1-alexander.stein@ew.tq-group.com>
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
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 60 ++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index a29b4a6f7c24..2e9297951132 100644
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
+	if (device_property_read_bool(dev, "fsl,permanent_attached"))
+		value |= (USB_CTRL0_USB2_FIXED | USB_CTRL0_USB3_FIXED);
+	else
+		value &= ~(USB_CTRL0_USB2_FIXED | USB_CTRL0_USB3_FIXED);
+
+	if (device_property_read_bool(dev, "fsl,disable-ppc"))
+		value &= ~(USB_CTRL0_PORTPWR_EN);
+	else
+		value |= USB_CTRL0_PORTPWR_EN;
+
+	writel(value, dwc3_imx->glue_base + USB_CTRL0);
+
+	value = readl(dwc3_imx->glue_base + USB_CTRL1);
+	if (device_property_read_bool(dev, "fsl,oc_low_active"))
+		value |= USB_CTRL1_OC_POLARITY;
+	else
+		value &= ~USB_CTRL1_OC_POLARITY;
+
+	if (device_property_read_bool(dev, "fsl,pwr_low_active"))
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
@@ -168,6 +219,15 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
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

