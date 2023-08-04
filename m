Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8047476F77E
	for <lists+devicetree@lfdr.de>; Fri,  4 Aug 2023 04:10:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230236AbjHDCKA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 22:10:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbjHDCJ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 22:09:59 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20C27448B
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 19:09:58 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6bc57401cb9so314308a34.0
        for <devicetree@vger.kernel.org>; Thu, 03 Aug 2023 19:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691114997; x=1691719797;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=faTlowj/hkbZyLWnlsqJy6jErJUbKNF0vNTWMz/QkMw=;
        b=nkcE9lwkxHQvlNXNvp1TE5+Kyg6SHOe9Pbxe+M1eKdxKSErX89yUVhoLl9/UGV4MiN
         BXZWemxXDnG/YYxgZt/a20pGs7G5XpjF4GilY50C7ilYEM1wNtxi0m0zVnOxlLBL50QC
         dP31VPYghdULuAmRFrIHHF5mLelOiwalMamWfL/Wy+KF6KGG/kibeoHRIXbopO9tTcaO
         QlzpNGwNFW/GFATJl4j4l3d4LrQtg/hl3oN5hT8b7gKWpjIYqOFYxI4ChvhPuizjLt38
         JyDNwC103vtPkVSvNhOlE2trltnN2zmIuDIn+Z+qB1g/H/oqN6FPwhTd2ymXpJvj0/JR
         EGMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691114997; x=1691719797;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=faTlowj/hkbZyLWnlsqJy6jErJUbKNF0vNTWMz/QkMw=;
        b=QBqL9O6kMwGdHWJtx6OIi5Of8Mlv7SE0AabXVgVWdKDvswuZRCiACZHC0iVqmvx6zv
         Rs0ZYQrWbKORtSe/kybrbvhlgAcHNQy7x7mXhFrdAlcldsTGf5jMEuaao0/mz6qFhtGf
         jMgqUBftyma+TI2rk/ia2Z0Kuf3dNpJKBUedk9xQ0Ng49a5FXuHsOreb8REpmAHNdzkm
         hLRnbZcTYOGc04Tpdjv4Mf9iGu4/YdwkLJD9akeBmSOS64qXA9mLgTnSrMH/2xlOZLh2
         c1zfEtMhQlI+k8xXCcFwhf2V/X1Sx4aez9feFipKEBK9pUqmDAuoFujmDwv7T248iRX1
         6kyQ==
X-Gm-Message-State: ABy/qLZ09HJOdW+Oyw2whatGZ1TSVrpecxl3MPOU+6bBogFgKixN8EwJ
        7YcoWkcLFNtCvP/jkUGWFMc=
X-Google-Smtp-Source: APBJJlGQYn8wT6qZveI5TzssOgBEmaNaiLIliw99A/c+9GGwYW1ef5Gt5ad7wCafDT+isbySbAm/sA==
X-Received: by 2002:a05:6870:f70e:b0:1b4:4941:3096 with SMTP id ej14-20020a056870f70e00b001b449413096mr15701859oab.5.1691114997342;
        Thu, 03 Aug 2023 19:09:57 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:48ea:73bf:1876:eaf3])
        by smtp.gmail.com with ESMTPSA id v17-20020a056870955100b001bee99e97a9sm618400oal.43.2023.08.03.19.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 19:09:56 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] arm64: dts: imx: Pass a single BD71847 clock entry
Date:   Thu,  3 Aug 2023 23:09:46 -0300
Message-Id: <20230804020947.189713-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Pass a single BD71847 clock entry to fix the following schema
warning:

imx8mm-var-som-symphony.dtb: pmic@4b: clocks: [[22], [0]] is too long
	from schema $id: http://devicetree.org/schemas/mfd/rohm,bd71847-pmic.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi        | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi           | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts      | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts      | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts      | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dts      | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi        | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts           | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts      | 2 +-
 10 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
index 201325f566cb..f264102bdb27 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
@@ -112,7 +112,7 @@ pmic@4b {
 		rohm,reset-snvs-powered;
 
 		#clock-cells = <0>;
-		clocks = <&osc_32k 0>;
+		clocks = <&osc_32k>;
 		clock-output-names = "clk-32k-out";
 
 		regulators {
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index 2b83a5258ec6..d7830df5b6f9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -142,7 +142,7 @@ pmic@4b {
 		rohm,reset-snvs-powered;
 
 		#clock-cells = <0>;
-		clocks = <&osc_32k 0>;
+		clocks = <&osc_32k>;
 		clock-output-names = "clk-32k-out";
 
 		regulators {
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
index 21d7b16d6f84..9c998c695bce 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
@@ -512,7 +512,7 @@ pmic@4b {
 		interrupts = <20 IRQ_TYPE_LEVEL_LOW>;
 		rohm,reset-snvs-powered;
 		#clock-cells = <0>;
-		clocks = <&osc_32k 0>;
+		clocks = <&osc_32k>;
 		clock-output-names = "clk-32k-out";
 
 		regulators {
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
index 964cc4fc2ddf..506512b6abf5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
@@ -431,7 +431,7 @@ pmic@4b {
 		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
 		rohm,reset-snvs-powered;
 		#clock-cells = <0>;
-		clocks = <&osc_32k 0>;
+		clocks = <&osc_32k>;
 		clock-output-names = "clk-32k-out";
 
 		regulators {
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
index 07b07dc954fd..0e102a12bca4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
@@ -416,7 +416,7 @@ pmic@4b {
 		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
 		rohm,reset-snvs-powered;
 		#clock-cells = <0>;
-		clocks = <&osc_32k 0>;
+		clocks = <&osc_32k>;
 		clock-output-names = "clk-32k-out";
 
 		regulators {
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dts
index 6ca52a14a5ab..6afbabc89c02 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7904.dts
@@ -460,7 +460,7 @@ pmic@4b {
 		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
 		rohm,reset-snvs-powered;
 		#clock-cells = <0>;
-		clocks = <&osc_32k 0>;
+		clocks = <&osc_32k>;
 		clock-output-names = "clk-32k-out";
 
 		regulators {
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi
index 8a4369d38903..90073b16536f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi
@@ -121,7 +121,7 @@ pmic@4b {
 		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
 		rohm,reset-snvs-powered;
 		#clock-cells = <0>;
-		clocks = <&osc_32k 0>;
+		clocks = <&osc_32k>;
 		clock-output-names = "clk-32k-out";
 
 		regulators {
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
index 8e100e71b8d2..22a754d438f1 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
@@ -92,7 +92,7 @@ bd71847: pmic@4b {
 		rohm,reset-snvs-powered;
 
 		#clock-cells = <0>;
-		clocks = <&osc_32k 0>;
+		clocks = <&osc_32k>;
 		clock-output-names = "clk-32k-out";
 
 		regulators {
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
index 5110d59b719f..cc2ff59ac53b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
@@ -60,7 +60,7 @@ pmic@4b {
 		rohm,reset-snvs-powered;
 
 		#clock-cells = <0>;
-		clocks = <&osc_32k 0>;
+		clocks = <&osc_32k>;
 		clock-output-names = "clk-32k-out";
 
 		regulators {
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
index 3ac011bbc025..caf0ddfddd01 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
@@ -429,7 +429,7 @@ pmic@4b {
 		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
 		rohm,reset-snvs-powered;
 		#clock-cells = <0>;
-		clocks = <&osc_32k 0>;
+		clocks = <&osc_32k>;
 		clock-output-names = "clk-32k-out";
 
 		regulators {
-- 
2.34.1

