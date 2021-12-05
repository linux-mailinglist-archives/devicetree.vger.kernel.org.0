Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30036468E06
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 00:16:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235850AbhLEXTz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Dec 2021 18:19:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240583AbhLEXTy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Dec 2021 18:19:54 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E7E0C0613F8
        for <devicetree@vger.kernel.org>; Sun,  5 Dec 2021 15:16:26 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id q3so18620137wru.5
        for <devicetree@vger.kernel.org>; Sun, 05 Dec 2021 15:16:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8SDUVe0WxBDs+x5sc5VSRWK56FrB6jL4WHqSjP3zaxg=;
        b=cFxn+LobBn91bijKgZt4wvkEUlRGNJXoHSktLeYNUXT4t9jx/rtJPZNldDLus0razj
         tZgAOLiS+Z5Tb8DdLRtm16Oz2mcI2Y/yoswW+T++FTm57zRXmJieHSGSiW5oh5DZ8YMu
         +qTRIz6a8AjbHVWxcSGm4v6kFwEa+lr3puIuIXphGqYMFCTF7IWmDiRAfutGki64qmMI
         S2/rdQnomZlWQtbApsZPoXSqqwGVF8sY2qdGmGqoSj7XMOr2DicKQzX81Hw2/moENz8A
         LTvkuPKpql4ZWJDbPHXk1kdMSY1SIxO74p20I7TSse6l5pZt2PvJ+IU21Dqapj6GXNuP
         B+Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8SDUVe0WxBDs+x5sc5VSRWK56FrB6jL4WHqSjP3zaxg=;
        b=AGlXZc8aNen8x8eofv0MO5nLnlWQuycb3iObCgHU11moeJGMgHy3GvbnXRCPfytXB3
         RCRaINx9YtqbrqdvaA/6qIco/dHOI3NCGEwwv+Sw9wfdlDtEPQgsgJDWAjjcd6I6SGlQ
         EuPQ4jhHHIcaLWTxS+BcX0prOd16HyE/0aQjLouVMUkBrP94kR1ZCTgIZpX/wYbOV8hN
         7UNyW4E34y1v09VSTulFoacGP6vs2iPQC1SX2j97MQG7LVn/yD8OzIxsvuk8pqfbKCma
         YoZ/5WTND7rWOVhT0iXZTB/Sjt2jGj+vuH+tQTi3iP5AROpArLy9c9g3LyvkorWJ5yjn
         DitA==
X-Gm-Message-State: AOAM531YG2tBahcDA6pjQ2UsnR66a69lW728r7k55BWGRzlzurEqcFsV
        aEDmIEE1VpL/TqphSlGJGCiccQ==
X-Google-Smtp-Source: ABdhPJwW/WzVl4850fY0QcNuzEze9AMto83BQfOb4lnMqjG4ZtCnCG4vkv9DnLBn5gb4pwj4Nr/HUg==
X-Received: by 2002:adf:fe8e:: with SMTP id l14mr39797739wrr.177.1638746184732;
        Sun, 05 Dec 2021 15:16:24 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ed2f:f020:1cec:4235:bb04:b944])
        by smtp.gmail.com with ESMTPSA id c10sm10715312wrb.81.2021.12.05.15.16.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Dec 2021 15:16:24 -0800 (PST)
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
To:     daniel.lezcano@linaro.org, robh@kernel.org
Cc:     arnd@linaro.org, heiko@sntech.de, ulf.hansson@linaro.org,
        rjw@rjwysocki.net, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        lukasz.luba@arm.com, Robin Murphy <robin.murphy@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Johan Jonker <jbx6244@gmail.com>,
        Helen Koike <helen.koike@collabora.com>,
        Brian Norris <briannorris@chromium.org>,
        Elaine Zhang <zhangqing@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC
        support),
        linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v4 2/5] arm64: dts: rockchip: Add powerzones definition for rock960
Date:   Mon,  6 Dec 2021 00:15:54 +0100
Message-Id: <20211205231558.779698-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211205231558.779698-1-daniel.lezcano@linaro.org>
References: <20211205231558.779698-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the powerzones description. This first step introduces the big,
the little as powerzone places.

Cc: Robin Murphy <robin.murphy@arm.com>
Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
   V4:
     - Added missing powerzone-cells
     - Changed powerzone name to comply with the pattern property
   V3:
     - Remove GPU section as no power is available (yet)
     - Remove '#powerzone-cells' conforming to the bindings change
   V2:
     - Move description in the SoC dtsi specific file
   V1: Initial post
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index d3cdf6f42a30..901515898b5e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -76,6 +76,7 @@ cpu_l0: cpu@0 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_l1: cpu@1 {
@@ -88,6 +89,7 @@ cpu_l1: cpu@1 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_l2: cpu@2 {
@@ -100,6 +102,7 @@ cpu_l2: cpu@2 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_l3: cpu@3 {
@@ -112,6 +115,7 @@ cpu_l3: cpu@3 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 		};
 
 		cpu_b0: cpu@100 {
@@ -124,6 +128,7 @@ cpu_b0: cpu@100 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 
 			thermal-idle {
 				#cooling-cells = <2>;
@@ -142,6 +147,7 @@ cpu_b1: cpu@101 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			powerzone = <&PKG_PZ>;
 
 			thermal-idle {
 				#cooling-cells = <2>;
@@ -791,6 +797,18 @@ spi5: spi@ff200000 {
 		status = "disabled";
 	};
 
+	powerzones {
+
+		PKG_PZ: powerzone-pkg {
+			#powerzone-cells = <0>;
+                        powerzone = <&SOC_PZ>;
+		};
+
+		SOC_PZ: powerzone-soc {
+			#powerzone-cells = <0>;
+		};
+	};
+
 	thermal_zones: thermal-zones {
 		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <100>;
-- 
2.25.1

