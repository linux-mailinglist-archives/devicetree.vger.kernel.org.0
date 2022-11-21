Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33C7963296A
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 17:29:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229936AbiKUQ33 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 11:29:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229797AbiKUQ32 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 11:29:28 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 090D0C6BE1
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:29:28 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id q83so13015883oib.10
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x32sPKsWvanprVFR2WPtmmOreEKhUf3Cenlzpqjst6E=;
        b=XHnMMiWVPQzj8qrvexJ4u8PKLQY2Yw0xeiSVdMabCbP6BTfhluyftWJLVC4AIcH3TG
         +Ow/QuvXaAh6AsV4w3LTBre5fyln78LuP0NkxDm8/2pL5IJKKDsoOYml+kGaeZHNPpm+
         D6yF1xp+AAziOhvGucW11POOips3njShB93tc0ID0/vlgSOXulch4j47Y/A4rY52RjCY
         0SkF0jD9zBsbKgYZaO6Z3pPUfjJQQYx8q/m9uMF65noq+ANp7r9qoCwREhQ+iHgP9OjF
         gAxIKGHLTmiRrPz6KZPC3V7LS/23V7X72lgN1HhiZfL8dQhdgmRokqwDhKnyh3K4GRlH
         THJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x32sPKsWvanprVFR2WPtmmOreEKhUf3Cenlzpqjst6E=;
        b=yC/z0tZdOOu2P95IR1ywvYbe5SFHj4Zwpu/MiSvUIggwl4shKYMQaRtRQr+ayurG5Z
         x8NxmYyEBREbsQYTdr5o1efWIa8wtSNV1h7HdPWf0pi0r3KvMKSAaeK5BtqgtT38CL32
         NlsKb3Rpvw8fNzMoUQG74cF8iGHZ67PX/VGvr8tv+7WQ9gMwJTFWdiT8zUA7cDtewl9q
         ZzlE8bjQw4RwjOXWpr1V2Njm/7wJ7aRKjuCmDDr0TaXat8+f235kL86MhuPSxaMIjVok
         zBPbXSJOUMI7KT0leQF4HOF6Qfuph5lVn2AXmvBfZ7GcQZq6sVjSa5Z/47NsivAX1AMo
         oUcQ==
X-Gm-Message-State: ANoB5png50ntOek3b+NndkTXxg7B2MhLK4rLsL8zhRdJc+KVQbeGu3A+
        RVZjlTaSY+xqcRuRTGf4j9M=
X-Google-Smtp-Source: AA0mqf40e8Lj+5QB1r+j/ZiU8nyBNCjSikeKFp8Nd8xFOxlNMIEH8vgjCQyr8bS2ttH5cXXTB3XNFw==
X-Received: by 2002:aca:3b45:0:b0:35a:4d42:befe with SMTP id i66-20020aca3b45000000b0035a4d42befemr9340716oia.140.1669048167169;
        Mon, 21 Nov 2022 08:29:27 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:5204:9130:9b29:a926])
        by smtp.gmail.com with ESMTPSA id 44-20020a9d04af000000b0066101e9dccdsm5126017otm.45.2022.11.21.08.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 08:29:26 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Teresa Remmet <t.remmet@phytec.de>
Subject: [PATCH] arm64: dts: imx8mp-phycore-som: Remove invalid PMIC property
Date:   Mon, 21 Nov 2022 13:29:11 -0300
Message-Id: <20221121162911.2377556-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

'regulator-compatible' is not a valid property according to
nxp,pca9450-regulator.yaml and causes the following warning:

  DTC_CHK arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dtb
...
pmic@25: regulators:LDO1: Unevaluated properties are not allowed ('regulator-compatible' was unexpected)

Remove the invalid 'regulator-compatible' property.

Cc: Teresa Remmet <t.remmet@phytec.de>
Fixes: 88f7f6bcca37 ("arm64: dts: freescale: Add support for phyBOARD-Pollux-i.MX8MP")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
index 79b290a002c1..ecc4bce6db97 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
@@ -99,7 +99,6 @@ pmic: pmic@25 {
 
 		regulators {
 			buck1: BUCK1 {
-				regulator-compatible = "BUCK1";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <2187500>;
 				regulator-boot-on;
@@ -108,7 +107,6 @@ buck1: BUCK1 {
 			};
 
 			buck2: BUCK2 {
-				regulator-compatible = "BUCK2";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <2187500>;
 				regulator-boot-on;
@@ -119,7 +117,6 @@ buck2: BUCK2 {
 			};
 
 			buck4: BUCK4 {
-				regulator-compatible = "BUCK4";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <3400000>;
 				regulator-boot-on;
@@ -127,7 +124,6 @@ buck4: BUCK4 {
 			};
 
 			buck5: BUCK5 {
-				regulator-compatible = "BUCK5";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <3400000>;
 				regulator-boot-on;
@@ -135,7 +131,6 @@ buck5: BUCK5 {
 			};
 
 			buck6: BUCK6 {
-				regulator-compatible = "BUCK6";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <3400000>;
 				regulator-boot-on;
@@ -143,7 +138,6 @@ buck6: BUCK6 {
 			};
 
 			ldo1: LDO1 {
-				regulator-compatible = "LDO1";
 				regulator-min-microvolt = <1600000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
@@ -151,7 +145,6 @@ ldo1: LDO1 {
 			};
 
 			ldo2: LDO2 {
-				regulator-compatible = "LDO2";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1150000>;
 				regulator-boot-on;
@@ -159,7 +152,6 @@ ldo2: LDO2 {
 			};
 
 			ldo3: LDO3 {
-				regulator-compatible = "LDO3";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
@@ -167,13 +159,11 @@ ldo3: LDO3 {
 			};
 
 			ldo4: LDO4 {
-				regulator-compatible = "LDO4";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <3300000>;
 			};
 
 			ldo5: LDO5 {
-				regulator-compatible = "LDO5";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
-- 
2.25.1

