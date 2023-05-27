Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 256AF713593
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 18:07:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230090AbjE0QHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 12:07:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjE0QHE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 12:07:04 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93732C3
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 09:07:03 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3945786504cso208471b6e.0
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 09:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685203623; x=1687795623;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R3b4d6zb+fzHSCJwyIG4CucfmH+1XsmXWXyvKR7Uzmw=;
        b=AfUg4fg0d9rpymTa4rWNCsHXz+YG/cnefWJye/a/m+GpucO0IRCkToVy8m0xCvy832
         uTyLdYE9Zh4LNdBNOkUh7pQdrrmIiPhlq/ZnX1lSMNg0YETv11nGIKIwziH+J1/Mywd3
         8sAqI54Cp/fw/dCIbcP+1yOSNoyMWRdvx0SzRwibX9g0vfqU6tmR8TBhFvmedNtp7F+3
         ramIlNTOU4ouTTKxJ1lHCVa6bKJqRjqy5D03GMsNyXHBFMWaWksn2X+Mkna+BUVeSSZU
         pnRWx31tu44D7X+9xx2JISHKdXlv4oiAdcx6/jMqlzLWsVGoDOiiLloGnSHFcJ5FN7FZ
         8Uvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685203623; x=1687795623;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R3b4d6zb+fzHSCJwyIG4CucfmH+1XsmXWXyvKR7Uzmw=;
        b=He1ijAEgzjaS/MrlXP64gffO3uNCqngEuvgB1Q33Kf4SRw8uKQImln2gM+AtZz/Xeg
         haFUDxVb4jpK6rbbIWcQTsMpQLhekm7uV2AFK01EPOkGgcGCUN6hakxizc/lcHcvb+7A
         N0neyklS1B0dn5ihpjOz5pcbrTXZuXYIuJzCUyrwdl1gGjvkwiFtR6phuO+Bi74sCAi5
         uroMR5ZtVNuPK709LRQd+uCOYi9BUcAPdSxNPB4sReHZ4xXsIHwgrOrzsl2Q+rCwZEjM
         WeI2fZ470t6mD0LsjnG5Lk9yJlUcOhr6+dCRTdh8uOn1uXP33xkP6SaxQDkh1UEjg16r
         4xpQ==
X-Gm-Message-State: AC+VfDwSNoEMUNPHqln5Gx+MipxxysdhUMayOBDnzBUInIJ2frrvBpdc
        +kCWDFnAiEMaasPjc6arISJnx2joTic=
X-Google-Smtp-Source: ACHHUZ5m9VaGA51v5LIXCYn003DjHDtgDSI2o95e66iC0cDi4NJBfPjAicXssGzYfMeGkMow8Za06w==
X-Received: by 2002:a05:6830:6012:b0:6af:8e08:e061 with SMTP id bx18-20020a056830601200b006af8e08e061mr2795647otb.2.1685203622703;
        Sat, 27 May 2023 09:07:02 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:1d6b:5783:aa5c:b83d])
        by smtp.gmail.com with ESMTPSA id q6-20020a9d6646000000b006ab305429e7sm2847461otm.0.2023.05.27.09.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 09:07:01 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/2] ARM: dts: imx7d-sdb: Describe the SD card regulator
Date:   Sat, 27 May 2023 13:06:33 -0300
Message-Id: <20230527160634.345195-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
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

From: Fabio Estevam <festevam@denx.de>

Improve the devicetree description by adding the SD card regulator
that is controlled via GPIO5_2.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Put 'enable-active-high' right after 'gpio'. (Shawn)

 arch/arm/boot/dts/imx7d-sdb.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/imx7d-sdb.dts b/arch/arm/boot/dts/imx7d-sdb.dts
index 25681c430393..c898d66e27ad 100644
--- a/arch/arm/boot/dts/imx7d-sdb.dts
+++ b/arch/arm/boot/dts/imx7d-sdb.dts
@@ -60,6 +60,17 @@ extended_io: gpio-expander@0 {
 		};
 	};
 
+	reg_sd1_vmmc: regulator-sd1-vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD_SD1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio5 2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		startup-delay-us = <200000>;
+		off-on-delay-us = <20000>;
+	};
+
 	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "usb_otg1_vbus";
@@ -477,6 +488,7 @@ &usdhc1 {
 	pinctrl-0 = <&pinctrl_usdhc1>;
 	cd-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
 	wp-gpios = <&gpio5 1 GPIO_ACTIVE_HIGH>;
+	vmmc-supply = <&reg_sd1_vmmc>;
 	wakeup-source;
 	keep-power-in-suspend;
 	status = "okay";
-- 
2.34.1

