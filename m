Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C6EF398966
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 14:24:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbhFBM0h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 08:26:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229620AbhFBM0g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 08:26:36 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 771D7C06174A
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 05:24:47 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id jt22so3557039ejb.7
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 05:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wMQqmoj3nd3kMgvLGFUrh0di1g3/21uyykstmCG03/k=;
        b=NAFpRO8EU0sFU8JLDKS8uFc/Sx0L1jbkbuP7t1U3t2plfSjNUBgNdk0s9PMiSp59Ka
         C6b5ULTJ+jLzpMUcmhSh9TvUPbXen0La6LJ61Te3UNd285UzFO8/PELKD+TppKJZ+u9y
         bRUD4XjqxeOf2JwgtTE51l0Zy5jU8SXZHFUq98CpJIHFIZY6sc/F1z3nJ6tqMvksgX0P
         zV2+z6sIFmlep8Xz5QRkbUxnsNwo4OuaZOVD6LoJ+vgDZOczoHCxa0Et8hcXEKlY4jwl
         Q0qIYvfpIewK3h/zlVh5FnvkY+KPcAHzHUAfzB8JGPqWyBfNJzoN3dhaN69pbcUxaWaW
         iJwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wMQqmoj3nd3kMgvLGFUrh0di1g3/21uyykstmCG03/k=;
        b=rNUJ9WyB7Rf1YAOb501N1B81rVvnQcrjjFqRT7DFSji+uWU5khGfi8ymMZsW5U5ygj
         LrzLVfizBW9cfKZu29Mv9ZzoSqqVj6fTJ8E8E07GZX5UeGyk71LXZOLY969pGZSnvwfL
         VUjba5t8W6lBpyWoh5W9+83K4U9PR+lAQooxA74aSBGALpnmg1N5BwjUD6+A21R+4YUM
         ys7pZ6trIDZcQsPQeWwnDcgJTfWQTPGU81UpyZslYxVIlf6lWvPG7LE3O5/g9PBo0Z9t
         uXx4Xs3LIso+smfS2H82OAsgrLspDq/jb7llLE6jKp1qAOFlkOc6IOBhJ5TQZBrKQHab
         qtrA==
X-Gm-Message-State: AOAM533fpqCHzM/2BXT2VcPbjk6Iba+VVs9/bEP/LvFa8UxorDoDGMRe
        jANu2oMO5egB11pWWciHA9Urog==
X-Google-Smtp-Source: ABdhPJyhXqHlCP22Ff6XGljlqO/zNDq1mX06640rFNztfLb0dLKAQ9sTqEjYIN+tbLjNW5Ove5Nz2Q==
X-Received: by 2002:a17:906:eb88:: with SMTP id mh8mr16455568ejb.540.1622636686035;
        Wed, 02 Jun 2021 05:24:46 -0700 (PDT)
Received: from localhost.localdomain (dh207-96-250.xnet.hr. [88.207.96.250])
        by smtp.googlemail.com with ESMTPSA id z17sm8539340ejc.69.2021.06.02.05.24.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 05:24:45 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        robh+dt@kernel.org, lee.jones@linaro.org, p.zabel@pengutronix.de,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     luka.perkov@sartura.hr, jmp@epiphyte.org, pmenzel@molgen.mpg.de,
        buczek@molgen.mpg.de, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v4 1/6] mfd: simple-mfd-i2c: Add Delta TN48M CPLD support
Date:   Wed,  2 Jun 2021 14:24:34 +0200
Message-Id: <20210602122439.2084775-1-robert.marko@sartura.hr>
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

