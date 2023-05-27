Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71679713594
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 18:07:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230288AbjE0QHK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 12:07:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjE0QHJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 12:07:09 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5A7FC3
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 09:07:07 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-19b49093c33so144159fac.1
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 09:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685203626; x=1687795626;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CEBm1wNwRaDl5Lqr6amCvpET/UqIdy1LBifWgcCk60g=;
        b=R6+Fg/dji5cQTAWsF7ICvzSl/+tqF5JAu3DXt/QhNaYOntSmYUHrXUfnA4PjMAz1Rc
         rUb+jQfGLNEvjUpuWPnhVFh/UKhQa0t3iPtzKMwvbTeN+Yxq1d0gXtPFkb494zdK7hZJ
         +oqK60Gn/mce+SKv6Ut4EiyepYCkEeYHE9+qy2URlO2aGKIvFYjsf3p+ALs+lwAgveP+
         BOe6y8I1BhXp28u/4mjAGHtiOYnIm92ZNPyFQbSVHvHg6mWCuyHhjeTxodkkQoapCUWJ
         W5Jbtq1X6lae2JAl9TiJ7I/YeWzoZj4OxBoov2r41N9mGgQe6k8/WBCLN0Pg50Ycvi1K
         VF0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685203626; x=1687795626;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CEBm1wNwRaDl5Lqr6amCvpET/UqIdy1LBifWgcCk60g=;
        b=fl64oAbCFd16T3yUssPfUy9JdcGeW8V2ALCNm5U/Als9rDa3+sz8lIzFO2C2dDSW1s
         8Wselk/UtvQehyGzcxrKLJAGV8zKafnZVTPvlehNfaj5vbut4etagdjFhaX9Asp/0WTT
         jiaPIIi0Fus5vq6idgwUQS6V2CvwSdRVzm0TWuQO4sn2MENrd7910jdnSJHzPd+09YEO
         U9Qz9zkl0IwRcBuBMcROfXDN/vEQJqRSzmJMs0GGt47yl0sXuWPRePu4bV9yPMNQFJbp
         CfI/SgC/eG3bIklcOhZSficgv2b2SHFRCdMpoOlwixluYFehGX/UAWxaRQzhx1tZR40h
         tzNA==
X-Gm-Message-State: AC+VfDwTjMud7QDpP4PhPsDLiLyyD14QTdgRe8KA1c240bPhwcQFCAkg
        CjaLgyQ68yjToQyj23nRnA4=
X-Google-Smtp-Source: ACHHUZ5ds503eUcniIRTzm1Gk+YX4RhhuNgRO+n3pa504XNMeR7hF1loXEquqK7jYTb31KOHW3FzQg==
X-Received: by 2002:a05:6870:a68e:b0:199:cae6:3147 with SMTP id i14-20020a056870a68e00b00199cae63147mr3166879oam.4.1685203625748;
        Sat, 27 May 2023 09:07:05 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:1d6b:5783:aa5c:b83d])
        by smtp.gmail.com with ESMTPSA id q6-20020a9d6646000000b006ab305429e7sm2847461otm.0.2023.05.27.09.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 09:07:05 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>, Ye Li <ye.li@nxp.com>
Subject: [PATCH v2 2/2] ARM: dts: imx7d-sdb: Allow UHS modes
Date:   Sat, 27 May 2023 13:06:34 -0300
Message-Id: <20230527160634.345195-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230527160634.345195-1-festevam@gmail.com>
References: <20230527160634.345195-1-festevam@gmail.com>
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

Describe the SD1_VSELECT pad, which is necessary to allow UHS modes.

Also, to support higher SD card speed modes, describe the 100MHz and
200MHz SD card pinctrl entries.

Suggested-by: Ye Li <ye.li@nxp.com>
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- None

 arch/arm/boot/dts/imx7d-sdb.dts | 40 ++++++++++++++++++++++++++++-----
 1 file changed, 35 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d-sdb.dts b/arch/arm/boot/dts/imx7d-sdb.dts
index 6e45f1154611..98e77fdfc27a 100644
--- a/arch/arm/boot/dts/imx7d-sdb.dts
+++ b/arch/arm/boot/dts/imx7d-sdb.dts
@@ -484,8 +484,10 @@ &usbotg2 {
 };
 
 &usdhc1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc1>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_usdhc1_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>, <&pinctrl_usdhc1_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>, <&pinctrl_usdhc1_gpio>;
 	cd-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
 	wp-gpios = <&gpio5 1 GPIO_ACTIVE_HIGH>;
 	vmmc-supply = <&reg_sd1_vmmc>;
@@ -743,6 +745,15 @@ MX7D_PAD_ECSPI1_MISO__UART6_DCE_RTS	0x79
 			>;
 		};
 
+		pinctrl_usdhc1_gpio: usdhc1_gpiogrp {
+			fsl,pins = <
+				MX7D_PAD_SD1_CD_B__GPIO5_IO0		0x59 /* CD */
+				MX7D_PAD_SD1_WP__GPIO5_IO1		0x59 /* WP */
+				MX7D_PAD_SD1_RESET_B__GPIO5_IO2		0x59 /* vmmc */
+				MX7D_PAD_GPIO1_IO08__SD1_VSELECT	0x59 /* VSELECT */
+			>;
+		};
+
 		pinctrl_usdhc1: usdhc1grp {
 			fsl,pins = <
 				MX7D_PAD_SD1_CMD__SD1_CMD		0x59
@@ -751,9 +762,28 @@ MX7D_PAD_SD1_DATA0__SD1_DATA0		0x59
 				MX7D_PAD_SD1_DATA1__SD1_DATA1		0x59
 				MX7D_PAD_SD1_DATA2__SD1_DATA2		0x59
 				MX7D_PAD_SD1_DATA3__SD1_DATA3		0x59
-				MX7D_PAD_SD1_CD_B__GPIO5_IO0		0x59 /* CD */
-				MX7D_PAD_SD1_WP__GPIO5_IO1		0x59 /* WP */
-				MX7D_PAD_SD1_RESET_B__GPIO5_IO2		0x59 /* vmmc */
+			>;
+		};
+
+		pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
+			fsl,pins = <
+				MX7D_PAD_SD1_CMD__SD1_CMD		0x5a
+				MX7D_PAD_SD1_CLK__SD1_CLK		0x1a
+				MX7D_PAD_SD1_DATA0__SD1_DATA0		0x5a
+				MX7D_PAD_SD1_DATA1__SD1_DATA1		0x5a
+				MX7D_PAD_SD1_DATA2__SD1_DATA2		0x5a
+				MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5a
+			>;
+		};
+
+		pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
+			fsl,pins = <
+				MX7D_PAD_SD1_CMD__SD1_CMD		0x5b
+				MX7D_PAD_SD1_CLK__SD1_CLK		0x1b
+				MX7D_PAD_SD1_DATA0__SD1_DATA0		0x5b
+				MX7D_PAD_SD1_DATA1__SD1_DATA1		0x5b
+				MX7D_PAD_SD1_DATA2__SD1_DATA2		0x5b
+				MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5b
 			>;
 		};
 
-- 
2.34.1

