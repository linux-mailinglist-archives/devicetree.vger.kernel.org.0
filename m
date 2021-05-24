Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE58138E631
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 14:05:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232662AbhEXMHP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 08:07:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232656AbhEXMHO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 08:07:14 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1196C061756
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 05:05:46 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id t206so14792053wmf.0
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 05:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vupoXXFVGGxP68p+rVk16msOI4FEaKWl6TGrTzM+/sE=;
        b=Ag1pM4LStX8QGVFfznn4U8xkqj3W9vY0n9DY5CJuxtlFT2yt/cHYP9vzAhrE3co0zR
         x1Iwhz6CF8CSQbJeZpse2cm+ha+HEeQY1E31tovMcsmnZcIbhXRWHL4L6SO2qSP0uaGj
         xAsiH3GXZPz3MN1iDjjcPv6f3o1ffIPcmyXFFlyZgRSR9GGiKzBSZmHUcB8Tk//bCOzD
         A45Y5WLUUsYO67zsvmxgaiLRxXeAJO2jwR3E0uIK1zqPKh4GbJJWyi/a0QyytL0Q8VPL
         e37z956H4a4qwtRP6KsP87w6PG/qHhfdza9TlLUak8je5WZikdWuX7wn1ZW/pPQ4A0lf
         5jbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vupoXXFVGGxP68p+rVk16msOI4FEaKWl6TGrTzM+/sE=;
        b=hSaH351Ks6U4KEdf5L66lX2bcVSCunU6xvoX6kKtgRlRS6kJttVrwwoq3JJ922SMTZ
         DsHh5Y7slAnC1GtZNh/dmnPTrSErSqEcTtoDbYI6icpFUaK4GfywASGwRdscsteSOktk
         r6VeFhNvD4RtEgv6ogGCkrdEalKmWn9Bdq5Ij2AAGranMrLdgBPfkRTD35PL4pd14QD3
         D9Zv+POHG9QAh+aBmGMmg+dPRD9N9NdNtYZ1xqAP4YW+u1C9u90N43gzAtt5JdrI3qQB
         PRksQq76/WGb1mOs1Q2zTZejQNKnjx15mb3yxEJ2CQkbwbOa3StrcJSHFKSuhYhlTURC
         e5/w==
X-Gm-Message-State: AOAM533Il2+MRGeW6BPx6ecmd9ibOGXSPwIj/NQHKBeGys7mqj4Qijse
        hTpwaPhcdhUPbkt3tffPFOMetA==
X-Google-Smtp-Source: ABdhPJy0FdiN1uxAQlj8gKVgakH2g+fVy09MLmYddnv3AT9gmfel4PWdCbeqJ6fp87avQbWglhPTdQ==
X-Received: by 2002:a1c:f303:: with SMTP id q3mr19903841wmq.9.1621857945250;
        Mon, 24 May 2021 05:05:45 -0700 (PDT)
Received: from localhost.localdomain ([188.252.220.224])
        by smtp.googlemail.com with ESMTPSA id b10sm14342856wrr.27.2021.05.24.05.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 05:05:44 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        robh+dt@kernel.org, lee.jones@linaro.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     luka.perkov@sartura.hr, jmp@epiphyte.org, pmenzel@molgen.mpg.de,
        buczek@molgen.mpg.de, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 1/4] mfd: simple-mfd-i2c: Add Delta TN48M CPLD support
Date:   Mon, 24 May 2021 14:05:36 +0200
Message-Id: <20210524120539.3267145-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Delta TN48M switches have a Lattice CPLD that serves
multiple purposes including being a GPIO expander.

So, lets use the simple I2C MFD driver to provide the MFD core.

Also add a virtual symbol which pulls in the simple-mfd-i2c driver and
provide a common symbol on which the subdevice drivers can depend on.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v2:
* Drop the custom MFD driver and header
* Use simple I2C MFD driver

 drivers/mfd/Kconfig          | 10 ++++++++++
 drivers/mfd/simple-mfd-i2c.c |  1 +
 2 files changed, 11 insertions(+)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 5c7f2b100191..1042424c5678 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -297,6 +297,16 @@ config MFD_ASIC3
 	  This driver supports the ASIC3 multifunction chip found on many
 	  PDAs (mainly iPAQ and HTC based ones)
 
+config MFD_TN48M_CPLD
+	tristate "Delta Networks TN48M switch CPLD driver"
+	depends on I2C
+	select MFD_SIMPLE_MFD_I2C
+	help
+	  Select this option to enable support for Delta Networks TN48M switch
+	  CPLD. It consists of MFD and GPIO drivers. CPLD provides GPIOS-s
+	  for the SFP slots as well as power supply related information.
+	  SFP support depends on the GPIO driver being selected.
+
 config PMIC_DA903X
 	bool "Dialog Semiconductor DA9030/DA9034 PMIC Support"
 	depends on I2C=y
diff --git a/drivers/mfd/simple-mfd-i2c.c b/drivers/mfd/simple-mfd-i2c.c
index 87f684cff9a1..af8e91781417 100644
--- a/drivers/mfd/simple-mfd-i2c.c
+++ b/drivers/mfd/simple-mfd-i2c.c
@@ -39,6 +39,7 @@ static int simple_mfd_i2c_probe(struct i2c_client *i2c)
 
 static const struct of_device_id simple_mfd_i2c_of_match[] = {
 	{ .compatible = "kontron,sl28cpld" },
+	{ .compatible = "delta,tn48m-cpld" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, simple_mfd_i2c_of_match);
-- 
2.31.1

