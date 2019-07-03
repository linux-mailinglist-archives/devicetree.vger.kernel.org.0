Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C44C25ECE6
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 21:38:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726736AbfGCTiB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 15:38:01 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:43592 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727151AbfGCThh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 15:37:37 -0400
Received: by mail-pg1-f196.google.com with SMTP id f25so1720413pgv.10
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 12:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AQ2DnnYXuz1+t62yXQ+am7fQibhEF2lnri8GDeMqBdI=;
        b=QTx4h0rowxsH2J7uWRUpDUO7bn0UVJFqPGEMrvwL3+NwXcQBnxA98jV+1yug7JpwWD
         QCIvwKh+RBjdWaRLW6bHrggTnHD3rZBIBn+WB6lfDacilaYRbNA3EuRagweoLr0BxAJT
         PLCrB8HtV0a2lsaxG8WtZ0bNypXhstvTbWu8U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AQ2DnnYXuz1+t62yXQ+am7fQibhEF2lnri8GDeMqBdI=;
        b=bKHlO4U/1iCzkiNu3wsdnV6QGW9sC1whkzDOnM7jCPH1yQOtUk8MHm6WvcBeIRI0dR
         HO8oplVlrSb1zcb5yyxjykXaaD9vHY8dcysH9Kb+lHA4RKpqm1qXshT2h4iWorkfrLbO
         ypKaB6mOx8VQl9lNyRaymffgaIoCthufGwaUdVXWQFd+XxzpFJKkWWtGcSS05o7xGmfN
         dARmNIWYv4C267OaFqfonV2NSD1GZdcQMFTZUi9nfLRmvSF9K8rw3eoAhmfJxLTGNZBF
         P/FaqtCgQX/zxpBM+gaFUT8aGbQc7iqtR48qVsCF0PTAsA+xQYVGexP27PNXmhR+FCXD
         avAw==
X-Gm-Message-State: APjAAAV82Cc6kqdrczPMYepQyEk/NzJHay+fSmTILk/dzyggaEVSv/m9
        JXcFf9JHUCgt1jqfManh9nMxlg==
X-Google-Smtp-Source: APXvYqwHHWyJl7M6XJmaT+aZ5aaRSdCdfdEX5hdZ3un04D9Cb2SlUAUkFeo5Fc4i5cVPcG9QbYNS3g==
X-Received: by 2002:a63:510a:: with SMTP id f10mr18072609pgb.435.1562182656681;
        Wed, 03 Jul 2019 12:37:36 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id p65sm3129404pfp.58.2019.07.03.12.37.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jul 2019 12:37:36 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v2 5/7] net: phy: realtek: Support SSC for the RTL8211E
Date:   Wed,  3 Jul 2019 12:37:22 -0700
Message-Id: <20190703193724.246854-5-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190703193724.246854-1-mka@chromium.org>
References: <20190703193724.246854-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

By default Spread-Spectrum Clocking (SSC) is disabled on the RTL8211E.
Enable it if the device tree property 'realtek,enable-ssc' exists.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- enable SSC in config_init() instead of probe()
- fixed error check after enabling SSC
---
 drivers/net/phy/realtek.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/realtek.c b/drivers/net/phy/realtek.c
index 9cd6241e2a6d..45fee4612031 100644
--- a/drivers/net/phy/realtek.c
+++ b/drivers/net/phy/realtek.c
@@ -9,6 +9,7 @@
  * Copyright (c) 2004 Freescale Semiconductor, Inc.
  */
 #include <linux/bitops.h>
+#include <linux/device.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/phy.h>
@@ -34,6 +35,10 @@
 #define RTL8211E_EEE_LED_MODE1			0x05
 #define RTL8211E_EEE_LED_MODE2			0x06
 
+/* RTL8211E extension page 160 */
+#define RTL8211E_SCR				0x1a
+#define RTL8211E_SCR_DISABLE_RXC_SSC		BIT(2)
+
 #define RTL8211F_INSR				0x1d
 
 #define RTL8211F_TX_DELAY			BIT(8)
@@ -76,8 +81,8 @@ static int rtl8211e_select_ext_page(struct phy_device *phydev, int page)
 	return 0;
 }
 
-static int __maybe_unused rtl8211e_modify_ext_paged(struct phy_device *phydev,
-				    int page, u32 regnum, u16 mask, u16 set)
+static int rtl8211e_modify_ext_paged(struct phy_device *phydev, int page,
+				     u32 regnum, u16 mask, u16 set)
 {
 	int ret = 0;
 	int oldpage;
@@ -122,6 +127,15 @@ static int rtl8211e_disable_eee_led_mode(struct phy_device *phydev)
 static int rtl8211e_config_init(struct phy_device *phydev)
 {
 	struct device *dev = &phydev->mdio.dev;
+	int ret;
+
+	if (of_property_read_bool(dev->of_node, "realtek,enable-ssc")) {
+		ret = rtl8211e_modify_ext_paged(phydev, 0xa0, RTL8211E_SCR,
+						RTL8211E_SCR_DISABLE_RXC_SSC,
+						0);
+		if (ret < 0)
+			dev_err(dev, "failed to enable SSC on RXC: %d\n", ret);
+	}
 
 	if (of_property_read_bool(dev->of_node, "realtek,eee-led-mode-disable"))
 		rtl8211e_disable_eee_led_mode(phydev);
-- 
2.22.0.410.gd8fdbe21b5-goog

