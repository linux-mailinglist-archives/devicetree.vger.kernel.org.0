Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C078C76F77F
	for <lists+devicetree@lfdr.de>; Fri,  4 Aug 2023 04:10:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229792AbjHDCKD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 22:10:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229613AbjHDCKC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 22:10:02 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AF03A3
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 19:10:00 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6bc57401cb9so314315a34.0
        for <devicetree@vger.kernel.org>; Thu, 03 Aug 2023 19:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691115000; x=1691719800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M2XwjxWmiDcy83j1TNsyMw78XYgGBM9T4OVx16aRYU4=;
        b=FNvaubkOvMUhf3Lza0VfzMsURb9rfTAT5ZtPfXp2ciNyJ1W1pvck7TZQ4/NLGlf9zC
         SS0ZFIg60KBe25dSn0v66ZFbKIu+M77p/OTcOF5zn73EXm0aOTbCuPwZsunBZNQUIZNq
         z1JrX5d0HWr4IKnNe2hTECxrVxrWXWxI1QgLp6TqW6hDVAjbNwId0wpNo4WQt8A5a4Rz
         e489/2gBl+HVKxzwYfH2SZneiUhL9EoB2F7VhVX9yBkyUtG0Hu3H4wzmbhSkdMVnxSAU
         1GAX3ImFsI/HZSk82oubqbEyBQ7gJmFrnQAnsoVv3UWFACtv2aTB5CJLXs3ydOzCTai/
         8sVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691115000; x=1691719800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M2XwjxWmiDcy83j1TNsyMw78XYgGBM9T4OVx16aRYU4=;
        b=MskH3YAU18XszVUOWCaYqbVHoqprfpW7HElGZ3qHd6x7xZrFZbSVCaA7y4KgJZFWxj
         2X2lEyKfjfxgi7Yx3NlK5VCIEuppIuiJH7pXgRGOmStMJlOKnLqah8HHCjT8EhtoyoUU
         hKg9rMOuc6SE9b0vOX6SZGzRn9QafWromGzWm0HGRLsuAFxjpbCQyZF/AJ9dGru8rWCJ
         4VMZVWqaJCl/pINVJuEcAA7Wt3cZEX6GQQc0bQmsP3sUE+aHxZr6KriW6gNU+UqiEtCk
         HEReBLien1IZpY6YAAJu2hSznS3RpwtikRhODmL5J95UUkqJcNO2RGsBjbZrsm9xSIWZ
         +p3A==
X-Gm-Message-State: ABy/qLZFKkzAHR+BtO52bLDLv5SPt/8fV9zsbfBGvT7FDFunRBEVt2e1
        wtE2mR7cWONAiczqf8JFhwY=
X-Google-Smtp-Source: APBJJlGWKaV9aeNxJw5gBKZw6qAZi56h2HpyOpKbKZl6fn5y587btr2DZYWjyklcNaUvYz3GzPIUYQ==
X-Received: by 2002:a05:6870:c69b:b0:1bb:fa9c:8ba6 with SMTP id cv27-20020a056870c69b00b001bbfa9c8ba6mr17447941oab.2.1691114999864;
        Thu, 03 Aug 2023 19:09:59 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:48ea:73bf:1876:eaf3])
        by smtp.gmail.com with ESMTPSA id v17-20020a056870955100b001bee99e97a9sm618400oal.43.2023.08.03.19.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 19:09:59 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] arm64: dts: imx8mm-emcon: Fix the regulator names
Date:   Thu,  3 Aug 2023 23:09:47 -0300
Message-Id: <20230804020947.189713-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230804020947.189713-1-festevam@gmail.com>
References: <20230804020947.189713-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Fix the regulator names as per rohm,bd71847-pmic.yaml to fix the
following schema warnings:

imx8mm-emcon-avari.dtb: pmic@4b: regulators:LDO1:regulator-name:0: 'LDO1' does not match '^ldo[1-6]$'

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../boot/dts/freescale/imx8mm-emcon.dtsi      | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi
index 4e9e58acd262..e6a09b955b75 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi
@@ -411,7 +411,7 @@ bd71847: pmic@4b {
 
 		regulators {
 			buck1_reg: BUCK1 {
-				regulator-name = "BUCK1";
+				regulator-name = "buck1";
 				regulator-min-microvolt = <700000>;
 				regulator-max-microvolt = <1300000>;
 				regulator-boot-on;
@@ -420,7 +420,7 @@ buck1_reg: BUCK1 {
 			};
 
 			buck2_reg: BUCK2 {
-				regulator-name = "BUCK2";
+				regulator-name = "buck2";
 				regulator-min-microvolt = <700000>;
 				regulator-max-microvolt = <1300000>;
 				regulator-boot-on;
@@ -432,7 +432,7 @@ buck2_reg: BUCK2 {
 
 			buck3_reg: BUCK3 {
 				// BUCK5 in datasheet
-				regulator-name = "BUCK3";
+				regulator-name = "buck3";
 				regulator-min-microvolt = <700000>;
 				regulator-max-microvolt = <1350000>;
 				regulator-boot-on;
@@ -441,7 +441,7 @@ buck3_reg: BUCK3 {
 
 			buck4_reg: BUCK4 {
 				// BUCK6 in datasheet
-				regulator-name = "BUCK4";
+				regulator-name = "buck4";
 				regulator-min-microvolt = <3000000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
@@ -450,7 +450,7 @@ buck4_reg: BUCK4 {
 
 			buck5_reg: BUCK5 {
 				// BUCK7 in datasheet
-				regulator-name = "BUCK5";
+				regulator-name = "buck5";
 				regulator-min-microvolt = <1605000>;
 				regulator-max-microvolt = <1995000>;
 				regulator-boot-on;
@@ -459,7 +459,7 @@ buck5_reg: BUCK5 {
 
 			buck6_reg: BUCK6 {
 				// BUCK8 in datasheet
-				regulator-name = "BUCK6";
+				regulator-name = "buck6";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1400000>;
 				regulator-boot-on;
@@ -467,7 +467,7 @@ buck6_reg: BUCK6 {
 			};
 
 			ldo1_reg: LDO1 {
-				regulator-name = "LDO1";
+				regulator-name = "ldo1";
 				regulator-min-microvolt = <1600000>;
 				regulator-max-microvolt = <1900000>;
 				regulator-boot-on;
@@ -475,7 +475,7 @@ ldo1_reg: LDO1 {
 			};
 
 			ldo2_reg: LDO2 {
-				regulator-name = "LDO2";
+				regulator-name = "ldo2";
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <900000>;
 				regulator-boot-on;
@@ -483,7 +483,7 @@ ldo2_reg: LDO2 {
 			};
 
 			ldo3_reg: LDO3 {
-				regulator-name = "LDO3";
+				regulator-name = "ldo3";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
@@ -491,7 +491,7 @@ ldo3_reg: LDO3 {
 			};
 
 			ldo4_reg: LDO4 {
-				regulator-name = "LDO4";
+				regulator-name = "ldo4";
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <1800000>;
 				regulator-boot-on;
@@ -499,7 +499,7 @@ ldo4_reg: LDO4 {
 			};
 
 			ldo6_reg: LDO6 {
-				regulator-name = "LDO6";
+				regulator-name = "ldo6";
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <1800000>;
 				regulator-boot-on;
-- 
2.34.1

