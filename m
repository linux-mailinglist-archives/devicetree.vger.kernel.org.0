Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C338939DC89
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 14:34:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230329AbhFGMgV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 08:36:21 -0400
Received: from mail-ej1-f41.google.com ([209.85.218.41]:43865 "EHLO
        mail-ej1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230288AbhFGMgQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 08:36:16 -0400
Received: by mail-ej1-f41.google.com with SMTP id ci15so26345434ejc.10
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 05:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s1McyNikPeBkyMCxJJKhjGXbmzHmFRGVfiDXNrONCTw=;
        b=Tlmrp/Lx1rETQeuEkLjcveKpE8NsDZh8QzPT4p3h4hUhxqjaccqSnzx+/PHSH5esO5
         XINlc86HFGLDMTtYWAJARJYsvJ7T9lfbWKIOHIvKhyysmPSymmI1cBqMbj56XfWB+VDe
         mtI2oq30yKsRxr7Cm134ccAzHlKvAA4RKezpbId4VLWTG4dMr+NRJ/Tdw7yheXYtOJAd
         BHop/MGWI454lK9IeTas5NM/skSNcRIyyV8FL2YH8+TAKgJCpDmf+GvkCmHlhIZn3ylp
         LdAmtMvQbDV+qTT1TTvc/KuGCa3qCpvtfQmY6jQqugLPOUjAHj9PIcemDforVBeLbzI5
         dRmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s1McyNikPeBkyMCxJJKhjGXbmzHmFRGVfiDXNrONCTw=;
        b=RJW3WJ3ik0e0it+uHbpj7HsChdcnEOAIfgPd1xVykMN0os0wy2ODytRgRXP0MkAOrz
         sBwbwtIMXXwtwFOeTmU2oi9XV2Kx39YmKuJAYHCYuehARWBuUQMHUeVCAW7/z5ChYmUZ
         anvKa+y6BiR+oddv0nurTFgScsCsaRHz3mVCFWkvau520zfiKRRU2/SVZYIkoHsnXFGr
         5GfvA+Z6eP6rFckTqq6qfvY9uar3vMfLkpIQCJVdv6/ysV16SKMzgF6ZEaHpMep9E8YW
         9wH+WNoRVICf4q0lHRZp8KdqXIjfobRnmWfej3MvpbvtBcvmEXM+SXgEMS2eae9yy6Li
         8rGA==
X-Gm-Message-State: AOAM530OUd272BVGPDagVV1tlTj9qxoxS/1hi1dhctlKA3hHExKeKQdz
        4rL3Q72TGzgVmMlGsEQeJj9Ynw==
X-Google-Smtp-Source: ABdhPJyx9+fVGPQO13neftlKAK7lNRGKMnjjOGyvp7SqnC0fIqlkQaJhv43Ypu8J0r8Ze57YVS7hVA==
X-Received: by 2002:a17:906:3485:: with SMTP id g5mr17369204ejb.174.1623069204108;
        Mon, 07 Jun 2021 05:33:24 -0700 (PDT)
Received: from localhost.localdomain (dh207-96-76.xnet.hr. [88.207.96.76])
        by smtp.googlemail.com with ESMTPSA id f18sm6471000ejz.119.2021.06.07.05.33.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 05:33:23 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        robh+dt@kernel.org, lee.jones@linaro.org, p.zabel@pengutronix.de,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     luka.perkov@sartura.hr, jmp@epiphyte.org, pmenzel@molgen.mpg.de,
        buczek@molgen.mpg.de, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v6 1/6] mfd: simple-mfd-i2c: Add Delta TN48M CPLD support
Date:   Mon,  7 Jun 2021 14:33:12 +0200
Message-Id: <20210607123317.3242031-1-robert.marko@sartura.hr>
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
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
---
Changes in v2:
* Drop the custom MFD driver and header
* Use simple I2C MFD driver

 drivers/mfd/Kconfig          | 10 ++++++++++
 drivers/mfd/simple-mfd-i2c.c |  1 +
 2 files changed, 11 insertions(+)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index b74efa469e90..733c2f9adb15 100644
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
+	  CPLD. It consists of reset and GPIO drivers. CPLD provides GPIOS-s
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

