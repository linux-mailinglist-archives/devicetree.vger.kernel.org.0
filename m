Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A353561979D
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 14:21:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230526AbiKDNU5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 09:20:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231840AbiKDNU4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 09:20:56 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41A162793A
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 06:20:52 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id a67so7536856edf.12
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 06:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dP1/LeWO2rgQAmt/otdfS5SnJhxrOZOiNoIWrCNJXMU=;
        b=lcfa20+igICiX0A0N6G4uK4uT9pri0UHw+ivJcw+xQfdxkD5iMF8YoLTWWMucPsbbD
         CTzeAmWiy3CAR47anj/p7UWjW+hIur/ukMv8lbTGwXjyVY6dUICE5l6qoObAaaP74xIJ
         yk4a9IlTaGLgF4ZL+OljWr6krNtLYlCqVOv+8lFYBCLQ1ENTsEaD6IsOn8c8S+V4oLPD
         ApL3XfLzNMjU0hGeIeDZswEyajpdM5G0a5UbfyUwSGIEUkSsLwTq2kKS41uDQ6+3/Qzn
         +0IiMPyFEQNXsUZ2mUuMroZcIVpPjKX0vsFgwk5On1lURlP1JmiLS5uSQkQByS6giMTZ
         vcjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dP1/LeWO2rgQAmt/otdfS5SnJhxrOZOiNoIWrCNJXMU=;
        b=I5K3R/JotZabMSdEYhVKUFIwAEnhj0sWzXCiOqRGy27cSu14ySEIo0yHWplgVv2jWl
         23SyGuLKkTlNW1IBMQ7EXFUdFq8SrGpGPJ3CqIaoVkh2goVPtEgjown66rfk1UBPzFHb
         BdewvjTTCJQtvKYhzBCAonRs9ZwzCnXazC0pIAjojYH7UTY1N07lRRVJbQ6xcyWkOMpg
         S8S2XT7uup66lY/uon/t83x5RnDj81aK9kBrfE1V4AYMYnFxz71JtMZwKSzkg8UGHs+c
         W3AkjovTmHDpUuN3dZfCNlWl7X9Uxkt0KijKAk1VLKOkX7Ji5RTA8RA7t3RV5gdVbmnH
         OR4w==
X-Gm-Message-State: ACrzQf0GELm5Mba2JMRBZnPf7KrH+0fALgmeyuJ4LIdCxQOB5q6SN6ZR
        oP4G05pooZNlkYeJFWFZ1CdeaOmAgvE=
X-Google-Smtp-Source: AMsMyM54wgBTSU+Qfu+C5bG7uNtf+zJ1pX0BoM7yU+i1L3hL2R9Ag4LuIpMite6RW4j8cMg+o39E3w==
X-Received: by 2002:a05:6402:360d:b0:459:5f40:5b0a with SMTP id el13-20020a056402360d00b004595f405b0amr34831347edb.168.1667568050512;
        Fri, 04 Nov 2022 06:20:50 -0700 (PDT)
Received: from localhost (p200300e41f201d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f20:1d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id gg33-20020a17090689a100b00731582babcasm1820082ejc.71.2022.11.04.06.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 06:20:49 -0700 (PDT)
From:   Thierry Reding <thierry.reding@gmail.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: rockchip: Remove unknown regulator-init-microvolt property
Date:   Fri,  4 Nov 2022 14:20:46 +0100
Message-Id: <20221104132046.1555932-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.38.1
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

From: Thierry Reding <treding@nvidia.com>

The regulator-init-microvolt is not defined anywhere and not used by any
driver, so remove it from existing device trees.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts          | 1 -
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts       | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi        | 1 -
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 3 ---
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi       | 2 --
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts      | 2 --
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts      | 2 --
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts          | 2 --
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi       | 3 ---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts      | 3 ---
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts        | 3 ---
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts       | 3 ---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts         | 3 ---
 13 files changed, 29 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index 7ea48167747c..9232357f4fec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -106,7 +106,6 @@ vdd_core: vdd-core {
 		regulator-name = "vdd_core";
 		regulator-min-microvolt = <827000>;
 		regulator-max-microvolt = <1340000>;
-		regulator-init-microvolt = <1015000>;
 		regulator-settling-time-up-us = <250>;
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index a71f249ed384..e9810d2f0407 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -105,7 +105,6 @@ vdd_core: vdd-core {
 		regulator-name = "vdd_core";
 		regulator-min-microvolt = <827000>;
 		regulator-max-microvolt = <1340000>;
-		regulator-init-microvolt = <1015000>;
 		regulator-settling-time-up-us = <250>;
 		regulator-always-on;
 		regulator-boot-on;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index b6e082f1f6d9..7c5f441a2219 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -375,7 +375,6 @@ regulator-state-mem {
 			vcc_sdio: LDO_REG4 {
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-init-microvolt = <3000000>;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-name = "vcc_sdio";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 41262a69d33e..a71973b16075 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -356,7 +356,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 				regulator-name = "vdd_logic";
@@ -371,7 +370,6 @@ vdd_gpu: DCDC_REG2 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 				regulator-name = "vdd_gpu";
@@ -533,7 +531,6 @@ vdd_cpu: regulator@40 {
 		regulator-boot-on;
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1390000>;
-		regulator-init-microvolt = <900000>;
 		regulator-name = "vdd_cpu";
 		regulator-ramp-delay = <2300>;
 		vin-supply = <&vcc_sys>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 8d61f824c12d..d899087bf0b5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -264,7 +264,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-always-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 
@@ -278,7 +277,6 @@ vdd_gpu_npu: DCDC_REG2 {
 				regulator-name = "vdd_gpu_npu";
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 25a8c781f4e7..854d02b46e6f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -366,7 +366,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 				regulator-name = "vdd_logic";
@@ -381,7 +380,6 @@ vdd_gpu: DCDC_REG2 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 				regulator-name = "vdd_gpu";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index 77b179cd20e7..fc38b30d3722 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -277,7 +277,6 @@ vdd_log: DCDC_REG1 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 
 				regulator-state-mem {
@@ -292,7 +291,6 @@ vdd_gpu: DCDC_REG2 {
 				regulator-boot-on;
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 
 				regulator-state-mem {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index 61c7a3ad7387..45807d7e22eb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -250,7 +250,6 @@ vdd_log: DCDC_REG1 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 
 				regulator-state-mem {
@@ -263,7 +262,6 @@ vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 
 				regulator-state-mem {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index 5bcd4be32964..e23e2293d10a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -192,7 +192,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 				regulator-state-mem {
@@ -207,7 +206,6 @@ vdd_gpu: DCDC_REG2 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-ramp-delay = <6001>;
 				regulator-initial-mode = <0x2>;
 					regulator-state-mem {
@@ -230,7 +228,6 @@ vdd_npu: DCDC_REG4 {
 				regulator-boot-on;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-name = "vdd_npu";
 				regulator-state-mem {
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 26d7fda275ed..a70b89e39dd6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -301,7 +301,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-name = "vdd_logic";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -315,7 +314,6 @@ regulator-state-mem {
 			vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
 				regulator-always-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -339,7 +337,6 @@ regulator-state-mem {
 
 			vdd_npu: DCDC_REG4 {
 				regulator-name = "vdd_npu";
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index 674792567fa6..19f8fc369b13 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -293,7 +293,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-name = "vdd_logic";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -307,7 +306,6 @@ regulator-state-mem {
 			vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
 				regulator-always-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -331,7 +329,6 @@ regulator-state-mem {
 
 			vdd_npu: DCDC_REG4 {
 				regulator-name = "vdd_npu";
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 59ecf868dbd0..a337f547caf5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -291,7 +291,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-name = "vdd_logic";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -305,7 +304,6 @@ regulator-state-mem {
 			vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
 				regulator-always-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -329,7 +327,6 @@ regulator-state-mem {
 
 			vdd_npu: DCDC_REG4 {
 				regulator-name = "vdd_npu";
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index ea74ba32fbbd..482c892567de 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -340,7 +340,6 @@ vdd_logic: DCDC_REG1 {
 				regulator-name = "vdd_logic";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -354,7 +353,6 @@ regulator-state-mem {
 			vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
 				regulator-always-on;
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
@@ -378,7 +376,6 @@ regulator-state-mem {
 
 			vdd_npu: DCDC_REG4 {
 				regulator-name = "vdd_npu";
-				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <1350000>;
-- 
2.38.1

