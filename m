Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A0CD708ACE
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 23:55:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230245AbjERVzG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 17:55:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbjERVzF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 17:55:05 -0400
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E567B197
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 14:55:02 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-19a0f511155so302027fac.1
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 14:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684446902; x=1687038902;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BswmFc5DiNNOMqTToSSSSvY6B2Ot3WmlwboXKMs4in4=;
        b=qBcPWtRUT1A0N4bJFxTreNSs7btOKtzRDI+xdfIgEW4nqWuncN158gGGNRbYKSr1da
         JmQw1KXbcUUm/SbA24mQkonVSIOR5A7BgyEt4Fqc5CRwF+PGNtWNF7MsgNO7gjaNJ0SC
         QPROCnrkGGvc8i+D8xODbEN0iqf0w8rD666kygAEHni0QcuSgSMgq5GWlomXYFWpmGNI
         jORLO7S0sxe3kd2SewES5JcOaPrt+VZ+z43W8LlFQflzxV1mfGNw97FBwEO7Cxmn7VsF
         UKmipZme7udGdU9ZYkboNhoBUlBZB88H9/h7YSXEOEBu3Zo9zzBKilo3FD9OiK1YpM+1
         nsyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684446902; x=1687038902;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BswmFc5DiNNOMqTToSSSSvY6B2Ot3WmlwboXKMs4in4=;
        b=aOT1jFcpWhYrorqBpvU24+Shv4plpNeKjtclidNYyLIRJrQ0JSjvP0P7GmbMjt6WFS
         HunHCLdEfNclaBTiBwIMl5TYm8q2hB0p28sIjm0HGW8/nS2UsnPjAklP2mmo6mAkUkXw
         jDrWUlTAiIGjiXiKNDLGOGUW3PtO091SAMprNjbmfnR5fF8zWhdthzLYQh5FibbjhFAt
         C0TDq9YXTmJsd5TLBsXUFjXOn417mw9MpZe/rdU14bAWndw3lleiZatzoLyR8/whwIEp
         oOcQSimOHs65c5stgBFyv7taJbyCtmLhL44keJykMkWSoRaVJnMV7C++4a5xpmGYH9U+
         nnYw==
X-Gm-Message-State: AC+VfDx5X3CDFOhfEgTuevSgw4QV9AHTcW8j+rweLgTPDu6/VV7x9E61
        aUQzcR/WTaona0MP8/7OpIA=
X-Google-Smtp-Source: ACHHUZ7MgcX/kziBeStMNu3BBzIlgGyurKsczKodQs4ait1A2U6rN1pUubvKybI0Q6Oakolj6EWKzg==
X-Received: by 2002:a05:6870:6128:b0:195:e6f8:5592 with SMTP id s40-20020a056870612800b00195e6f85592mr194422oae.0.1684446902128;
        Thu, 18 May 2023 14:55:02 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:e366:77e8:4ae8:a240])
        by smtp.gmail.com with ESMTPSA id dx11-20020a056870768b00b0017b21991355sm1264460oab.20.2023.05.18.14.54.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 May 2023 14:55:01 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-imx@nxp.com, ye.li@nxp.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] ARM: dts: imx7d-sdb: Describe the SD card regulator
Date:   Thu, 18 May 2023 18:54:46 -0300
Message-Id: <20230518215447.180298-1-festevam@gmail.com>
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
 arch/arm/boot/dts/imx7d-sdb.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/imx7d-sdb.dts b/arch/arm/boot/dts/imx7d-sdb.dts
index 25681c430393..6e45f1154611 100644
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
+		startup-delay-us = <200000>;
+		off-on-delay-us = <20000>;
+		enable-active-high;
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

