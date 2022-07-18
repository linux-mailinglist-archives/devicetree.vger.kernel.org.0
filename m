Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38BE0577955
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 03:42:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229976AbiGRBm1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jul 2022 21:42:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232375AbiGRBm0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jul 2022 21:42:26 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05B2613F3A
        for <devicetree@vger.kernel.org>; Sun, 17 Jul 2022 18:42:25 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id r14so15047938wrg.1
        for <devicetree@vger.kernel.org>; Sun, 17 Jul 2022 18:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DHwIdjXDFOQsQnb1NbtoIUGvABQc1w7C+cvxti/glVo=;
        b=pMZbtXCUkmTE4KFyjTar6kMh3v0j/aQDdXFZwbqbm9z3RCSIgI7jyU76BJQWje0ksE
         oAzUoB0D82B9SAZPn8FnUVzdlaRH7RZ943FteB7l8htllmdP4ugqNKZsmAuqybY+HPi1
         DCkUXnr+rr1CAZCwFYajE9Iby7wFGGyZIU9ldaGVwsAhKxnbEUnYYqD4MXuPYfoI0Ngq
         G5S3m+9tlM/w/bz5S3LDVFHqBIV1gVt/7ZoNRlqyDO/+0UduUUDVlXGR5SXf87U9utqq
         yaFwOLoRvlqbVCvuB6Vm425V4fq3KJYcHb4lds6yeqceXDTVsWwAXeOX2jA41xm/DOlt
         oowg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DHwIdjXDFOQsQnb1NbtoIUGvABQc1w7C+cvxti/glVo=;
        b=WIrDNwS9wWrDGikPRMFJtGKUf01qNPMT3A9jbz1fZMyLRNW/Gv7iSoEgrgM3By3YOE
         IapHjHiyaeA9Xs45mt4Ypcs2iHW1cUwCBojDOi54RUAq3kmh725GKWCglwc78Sho/tvF
         VRAw3A+B9NrR6JQgNn8Kubhf6/ImChUBapf/1fF8Ig8lxKG2rc5YL53oJOZ19NNOWpWT
         G+s3vgk0gz8NFQr+iPNSZ0CTHM8uM02qTL/ogjwasKIH7s9iLn/xnyHD+2i2NOE5sqtQ
         w+71v+cQmbuc2qkCkg2hEctp450pUaK6m4hI2w2zZyH/sNaFsBaDHu8YezIZb/y+yn35
         +Jyg==
X-Gm-Message-State: AJIora9ZMpxDkJVJf1Ut7l+0E3O5XgiA9t4tdZ34SAIt/n5FRSp+o3GJ
        BqLw0I5DGLP3qJ7lMGO+duuslg==
X-Google-Smtp-Source: AGRyM1sbOD4yJONbDuqKHHrrVqYdHH7vLwyz1uNKIvugtCvbEr8lXiHbadPWZRk3VlfgfqOW1/M0uw==
X-Received: by 2002:adf:9d92:0:b0:21d:66c4:e311 with SMTP id p18-20020adf9d92000000b0021d66c4e311mr21880111wre.575.1658108543579;
        Sun, 17 Jul 2022 18:42:23 -0700 (PDT)
Received: from planet9.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id v10-20020adfebca000000b0021d76a1b0e3sm1685139wrn.6.2022.07.17.18.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Jul 2022 18:42:23 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     sakari.ailus@iki.fi, jacopo@jmondi.org, paul.j.murphy@intel.com,
        daniele.alessandrelli@intel.com, mchehab@kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     dmitry.baryshkov@linaro.org, konrad.dybcio@somainline.org,
        andrey.konovalov@linaro.org, bryan.odonoghue@linaro.org
Subject: [PATCH v2 1/3] media: dt-bindings: media: Rename imx412 to imx577
Date:   Mon, 18 Jul 2022 02:42:13 +0100
Message-Id: <20220718014215.1240114-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220718014215.1240114-1-bryan.odonoghue@linaro.org>
References: <20220718014215.1240114-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The yaml and driver we have right now misidentifies the imx577 as the
imx412.

Looking at similar IMX chips which give their chip identifier via register
0x0016 we can see:

drivers/media/i2c/imx258.c:#define IMX258_REG_CHIP_ID    0x0016
drivers/media/i2c/imx258.c:#define IMX258_CHIP_ID        0x0258

drivers/media/i2c/imx319.c:#define IMX319_REG_CHIP_ID    0x0016
drivers/media/i2c/imx319.c:#define IMX319_CHIP_ID        0x0319

drivers/media/i2c/imx355.c:#define IMX355_REG_CHIP_ID    0x0016
drivers/media/i2c/imx355.c:#define IMX355_CHIP_ID        0x0355

Right now imx412.c does:

drivers/media/i2c/imx412.c:#define IMX412_REG_ID         0x0016
drivers/media/i2c/imx412.c:#define IMX412_ID             0x577

As a first step to fixing this problem rename the supporting yaml file and
containing text from imx412 to imx577.

Fixes: 333b3125d130 ("media: dt-bindings: media: Add bindings for imx412")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../i2c/{sony,imx412.yaml => sony,imx577.yaml} | 18 +++++++++---------
 MAINTAINERS                                    |  6 +++---
 2 files changed, 12 insertions(+), 12 deletions(-)
 rename Documentation/devicetree/bindings/media/i2c/{sony,imx412.yaml => sony,imx577.yaml} (83%)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx577.yaml
similarity index 83%
rename from Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
rename to Documentation/devicetree/bindings/media/i2c/sony,imx577.yaml
index 26d1807d0bb6..e201048490e9 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx577.yaml
@@ -2,24 +2,24 @@
 # Copyright (C) 2021 Intel Corporation
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/media/i2c/sony,imx412.yaml#
+$id: http://devicetree.org/schemas/media/i2c/sony,imx577.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Sony IMX412 Sensor
+title: Sony IMX577 Sensor
 
 maintainers:
   - Paul J. Murphy <paul.j.murphy@intel.com>
   - Daniele Alessandrelli <daniele.alessandrelli@intel.com>
 
 description:
-  IMX412 sensor is a Sony CMOS active pixel digital image sensor with an active
+  IMX577 sensor is a Sony CMOS active pixel digital image sensor with an active
   array size of 4072H x 3176V. It is programmable through I2C interface. The
   I2C client address is fixed to 0x1a as per sensor data sheet. Image data is
   sent through MIPI CSI-2.
 
 properties:
   compatible:
-    const: sony,imx412
+    const: sony,imx577
   reg:
     description: I2C address
     maxItems: 1
@@ -80,16 +80,16 @@ examples:
         #size-cells = <0>;
 
         camera@1a {
-            compatible = "sony,imx412";
+            compatible = "sony,imx577";
             reg = <0x1a>;
-            clocks = <&imx412_clk>;
+            clocks = <&imx577_clk>;
 
-            assigned-clocks = <&imx412_clk>;
-            assigned-clock-parents = <&imx412_clk_parent>;
+            assigned-clocks = <&imx577_clk>;
+            assigned-clock-parents = <&imx577_clk_parent>;
             assigned-clock-rates = <24000000>;
 
             port {
-                imx412: endpoint {
+                imx577: endpoint {
                     remote-endpoint = <&cam>;
                     data-lanes = <1 2 3 4>;
                     link-frequencies = /bits/ 64 <600000000>;
diff --git a/MAINTAINERS b/MAINTAINERS
index 08b9ef368709..6a257af8178f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18725,14 +18725,14 @@ S:	Maintained
 T:	git git://linuxtv.org/media_tree.git
 F:	drivers/media/i2c/imx355.c
 
-SONY IMX412 SENSOR DRIVER
+SONY IMX577 SENSOR DRIVER
 M:	Paul J. Murphy <paul.j.murphy@intel.com>
 M:	Daniele Alessandrelli <daniele.alessandrelli@intel.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 T:	git git://linuxtv.org/media_tree.git
-F:	Documentation/devicetree/bindings/media/i2c/sony,imx412.yaml
-F:	drivers/media/i2c/imx412.c
+F:	Documentation/devicetree/bindings/media/i2c/sony,imx577.yaml
+F:	drivers/media/i2c/imx577.c
 
 SONY MEMORYSTICK SUBSYSTEM
 M:	Maxim Levitsky <maximlevitsky@gmail.com>
-- 
2.34.1

