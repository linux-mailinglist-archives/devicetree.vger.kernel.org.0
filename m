Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AA07707378
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 23:02:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbjEQVCe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 17:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229650AbjEQVCd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 17:02:33 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68FF040EB
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 14:02:32 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-394185f8bd1so84635b6e.1
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 14:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684357351; x=1686949351;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ynoFbDotOwNc5NOOWmuPszhqxJhhIHV/BdWNDimLRPk=;
        b=bPPcQcGhu7yir08zG3RKv9uGrGgH2eyRxwYiDwfTnCrwmv/GeHfH/EMkl8QY1xMCm2
         ktSkoKisajol7h4VWEvJnNHrYjQa5cJjg/EwliVr3ukZXGrwkqn4MmSe4bvtfk60l3xi
         WNYcPEUql9Pa887jRF4g0jPYNOUJZJ8a/AeQlt9pT38zC8+I9HkJMBHG1kalejISbMv7
         3Wc4th0B52wWE1ohx3O6nZqAZUdbqWe0Vr+OkMBI/XhuvMfowG1idzIbITiKUUeHrUtu
         nbPTbZYqfFB1Wu7gNTdbp0Y2UXz7+/ElRgluqj5ua5ZGpIXFPe5kNotosVg6464Vz24G
         a7yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684357351; x=1686949351;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ynoFbDotOwNc5NOOWmuPszhqxJhhIHV/BdWNDimLRPk=;
        b=VW93AlYBx52pO1AQcZWeMHVLuQYNHf86z8+UvUlnulRTuBOyZ72ujf1FETjLMFM9Eb
         xWLApdErvwyroO+Pfv6TrvNgGjcI4pK9x+bnHSTnaOQxpnyBTxZWCkoiYcAksLKFhHac
         POLX987BGlddPz72IMRUyrZzA8nuYZAF7pwZevCf7pJrMXI2y/fPfi1IY/UK/vWzEeN7
         FDIwcXvQ/uHWopFXx+DeVAlkwqtcmzd6p6FlDW7Wi9MQJZ/u9E4XIlsmPBmEBDksRyyB
         be15HB7yMCcrWSJgYMA0AoGbFSQFzzlxwwF2aPhHIMzmwU7NrTNni1WrNdw5JgJi0vml
         dAwg==
X-Gm-Message-State: AC+VfDyVPSMQu6qPyx+elHbEN8jTlR1dTcdiA9ghPwEaaCFd4jAn+4ah
        lHVqej4kdABnWdqh04GMHCI=
X-Google-Smtp-Source: ACHHUZ46F539Bb2OQ+51xRcbhrPlyusCS6jOB0QiFxA2r4UoJvQd2p69fOsyemHcGo/e1O9AVJGpeQ==
X-Received: by 2002:a05:6830:6619:b0:6aa:f618:8103 with SMTP id cp25-20020a056830661900b006aaf6188103mr2349139otb.3.1684357351576;
        Wed, 17 May 2023 14:02:31 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:2afa:8763:461b:f011])
        by smtp.gmail.com with ESMTPSA id l17-20020a05683016d100b006a4244d2a7asm33838otr.9.2023.05.17.14.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 14:02:30 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx6sx: Add LDB support
Date:   Wed, 17 May 2023 18:02:10 -0300
Message-Id: <20230517210210.12183-1-festevam@gmail.com>
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

i.MX6SX has an LVDS controller that is connected to the eLCDIF.

Add support for it.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx6sx.dtsi | 41 ++++++++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 4233943a1cca..7a8a00d81666 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -843,8 +843,39 @@ iomuxc: pinctrl@20e0000 {
 
 			gpr: iomuxc-gpr@20e4000 {
 				compatible = "fsl,imx6sx-iomuxc-gpr",
-					     "fsl,imx6q-iomuxc-gpr", "syscon";
+					     "fsl,imx6q-iomuxc-gpr", "simple-bus", "syscon";
+				#address-cells = <1>;
+				#size-cells = <1>;
 				reg = <0x020e4000 0x4000>;
+
+				lvds_bridge: bridge@18 {
+					compatible = "fsl,imx6sx-ldb";
+					clocks = <&clks IMX6SX_CLK_LDB_DI0>;
+					clock-names = "ldb";
+					reg = <0x18 0x4>;
+					reg-names = "ldb";
+					status = "disabled";
+
+					ports {
+						#address-cells = <1>;
+						#size-cells = <0>;
+
+						port@0 {
+							reg = <0>;
+
+							ldb_from_lcdif1: endpoint {
+								remote-endpoint = <&lcdif1_to_ldb>;
+							};
+						};
+
+						port@1 {
+							reg = <1>;
+
+							ldb_lvds_ch0: endpoint {
+							};
+						};
+					};
+				};
 			};
 
 			sdma: dma-controller@20ec000 {
@@ -1278,6 +1309,14 @@ lcdif1: lcdif@2220000 {
 					clock-names = "pix", "axi", "disp_axi";
 					power-domains = <&pd_disp>;
 					status = "disabled";
+
+					ports {
+						port {
+							lcdif1_to_ldb: endpoint {
+								remote-endpoint = <&ldb_from_lcdif1>;
+							};
+						};
+					};
 				};
 
 				lcdif2: lcdif@2224000 {
-- 
2.34.1

