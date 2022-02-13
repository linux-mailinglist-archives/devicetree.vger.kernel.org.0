Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A301C4B3E3C
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238691AbiBMW6Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:16 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238712AbiBMW6O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:14 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF55154BE3
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:07 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id qk11so13532038ejb.2
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gH8fsrRlg3C6SSTb3qLzsD14CS9me/GxO3/rmRt1Yy4=;
        b=ps4J/eHO+enBkq9qoHdjxixoy6iK+cwVsFnT/rqf6Hd2oEdirw3vOj21XoUfYBYp06
         7qDZE8DAoVTdBUcxk5KVFkHnRI7FCaBFJVvwtxFwuwyJlUaPCizlcxaJNNSMS0MyxzOx
         efK+tPYUPeC5VDgJWYYKA61I2cwpWdyVEw2nJUQLILM+weurWsHmTxiv0+5+Wv2XY29u
         jH7T8KPW0uHueWPEP2cf8249U1lroBqUugq/vdkPUH6CEs3B+kSfzXL1nqWZoqbKgrv4
         rnWCgpwxQFRUDhVQ+Ibp5/ZOn9hJcc1Lk9HScUZ3yHsb4SjzeR+yEaT04nPoQWvKizks
         OyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gH8fsrRlg3C6SSTb3qLzsD14CS9me/GxO3/rmRt1Yy4=;
        b=Hax6x1Cn7WJb0/39Jk5FXy+ra+N8pkAtKSPRKzAnfK66g0JULSFoVbPrG4qWhjd2JY
         /KlXQK39h3vkfRTRujRpCZ2R8bTllKK0IJF5wFiQ5cjMD2nllEvJ05RtiwYxirjZkoYW
         Vyw2a4yNSs9RWPXhXIlPIsSWZDMlo6K1IvGSUHMFFNl7TlPz1YLjKeHcjfLcvzFZik2k
         2TBdZmtX/dYwDu1LXKHwpBpKSHlnc1SzV0Ll++qebkaiWQ80rI/iGwnibdDbnHGMtzFM
         E475Wa8Z67b08OMdGX0BpTFLmduheVoUIffmxAwRXX1NJU2t3MWOQGSE1O4NjpfidYd2
         3Npw==
X-Gm-Message-State: AOAM531d2sgVn5dEzuz2zklJtmLL7MJT15YR/WxWbgoHeahU+A60OJBI
        kSneV0YfII6i0i/E2emezOQ=
X-Google-Smtp-Source: ABdhPJxFnysaGfjAPQJ745Q6+KqLdQRZe6OfpJuU9XJWEdFNQYylEnVAQpnKRTUxZkRhcWmb2eMhfw==
X-Received: by 2002:a17:907:3d8f:: with SMTP id he15mr9290907ejc.623.1644793086517;
        Sun, 13 Feb 2022 14:58:06 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:06 -0800 (PST)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 07/15] mfd: bcm2835-pm: Add support for BCM2711
Date:   Sun, 13 Feb 2022 22:56:39 +0000
Message-Id: <20220213225646.67761-8-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220213225646.67761-1-pbrobinson@gmail.com>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
with the ISP and H264 bits, and V3D is in the same place in the new ASB
as the old one.

As per the devicetree bindings, BCM2711 will provide both the old and
new ASB resources, so get both of them and pass them into
'bcm2835-power,' which will take care of selecting which one to use
accordingly.

Since the RPiVid ASB's resources were being provided prior to formalizing
the bindings[1], also support the old firmwares that didn't use
'reg-names.'

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>

[1] See: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi 4 support")

---
Changes since v2: 
 - Correct names again!
                        
Changes since v1:
 - Use reg-names
 - Correct ASB names

 drivers/mfd/bcm2835-pm.c       | 25 +++++++++++++++++++++++--
 include/linux/mfd/bcm2835-pm.h |  1 +
 2 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
index 36fede92775c..a06e9cf19b64 100644
--- a/drivers/mfd/bcm2835-pm.c
+++ b/drivers/mfd/bcm2835-pm.c
@@ -6,6 +6,7 @@
  * the WDT and power drivers.
  */
 
+#include <linux/bits.h>
 #include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/mfd/bcm2835-pm.h>
@@ -17,6 +18,9 @@
 #include <linux/types.h>
 #include <linux/watchdog.h>
 
+#define BCM2835		BIT(1)
+#define BCM2711		BIT(2)
+
 static const struct mfd_cell bcm2835_pm_devs[] = {
 	{ .name = "bcm2835-wdt" },
 };
@@ -28,6 +32,8 @@ static const struct mfd_cell bcm2835_power_devs[] = {
 static int bcm2835_pm_get_pdata(struct platform_device *pdev,
 				struct bcm2835_pm *pm)
 {
+	bool is_bcm2711 = (uintptr_t)device_get_match_data(pm->dev) & BCM2711;
+
 	/* If no 'reg-names' property is found we can assume we're using old
 	 * firmware.
 	 */
@@ -41,6 +47,10 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
 		pm->asb = devm_platform_ioremap_resource(pdev, 1);
 		if (IS_ERR(pm->asb))
 			pm->asb = NULL;
+
+		pm->rpivid_asb = devm_platform_ioremap_resource(pdev, 2);
+		if (IS_ERR(pm->rpivid_asb))
+			pm->rpivid_asb = NULL;
 	} else {
 		pm->base = devm_platform_ioremap_resource_byname(pdev, "pm");
 		if (IS_ERR(pm->base))
@@ -49,6 +59,16 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
 		pm->asb = devm_platform_ioremap_resource_byname(pdev, "asb");
 		if (IS_ERR(pm->base))
 			pm->asb = NULL;
+
+		pm->rpivid_asb = devm_platform_ioremap_resource_byname(pdev,
+								      "rpivid_asb");
+		if (IS_ERR(pm->base))
+			pm->rpivid_asb = NULL;
+
+		if (pm->rpivid_asb && !is_bcm2711) {
+			dev_err(pm->dev, "RPiVid ASB support only present in BCM2711\n");
+			return -EINVAL;
+		}
 	}
 
 	return 0;
@@ -89,8 +109,9 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id bcm2835_pm_of_match[] = {
-	{ .compatible = "brcm,bcm2835-pm-wdt", },
-	{ .compatible = "brcm,bcm2835-pm", },
+	{ .compatible = "brcm,bcm2835-pm-wdt", .data = (void *)BCM2835},
+	{ .compatible = "brcm,bcm2835-pm", .data = (void *)BCM2835},
+	{ .compatible = "brcm,bcm2711-pm", .data = (void *)BCM2711},
 	{},
 };
 MODULE_DEVICE_TABLE(of, bcm2835_pm_of_match);
diff --git a/include/linux/mfd/bcm2835-pm.h b/include/linux/mfd/bcm2835-pm.h
index ed37dc40e82a..f70a810c55f7 100644
--- a/include/linux/mfd/bcm2835-pm.h
+++ b/include/linux/mfd/bcm2835-pm.h
@@ -9,6 +9,7 @@ struct bcm2835_pm {
 	struct device *dev;
 	void __iomem *base;
 	void __iomem *asb;
+	void __iomem *rpivid_asb;
 };
 
 #endif /* BCM2835_MFD_PM_H */
-- 
2.35.1

