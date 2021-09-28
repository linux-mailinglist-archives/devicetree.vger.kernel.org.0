Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0965341AB2B
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 10:51:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239884AbhI1Iwf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 04:52:35 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:53620
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239892AbhI1IwM (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Sep 2021 04:52:12 -0400
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3BD84402FF
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 08:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632819015;
        bh=7tIJ+clHqy+CZwai/Om4gGD+ttDWFFGGGFnCE/+PWi8=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Ylw+AmD52xczMiCRjg/mn8n6q9DrdICLM3zVDbRsQ6aD1fbRsMffdX7YALK9pr1gM
         hbqbt9U0M5gkSiwRrdqwz7cSc94K8IGkRc+knIozlJe8MBOXoa/5M9PkxV8FwuUDv9
         fEWpGFvG0ecER2ePNo6y44y97bhmWyKnUCfTEggwEcpe2OEQDGCV0dvR80J+JmCvta
         /A0FoAnq+cPIvzFjfRTgg8vn992aliaL7RKPRov4Y8mOq4QqKiKXW6eVulaCB4ZCQO
         IwxJeJV6V3FWyLsuwh8GcpQejFc5RiNSlRnQqppknnsgAQtto0JMrPAutDBmO8PQiz
         RO8snMjrUjUVw==
Received: by mail-lf1-f69.google.com with SMTP id x33-20020a0565123fa100b003fcfd99073dso1127169lfa.6
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 01:50:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7tIJ+clHqy+CZwai/Om4gGD+ttDWFFGGGFnCE/+PWi8=;
        b=x9IB8kHH4pgBAxdZZIzxsdnX6+mEb3RULsZ/ZtLmp5aDLrA7rSD7u3/PgQk6Em8eEq
         9PAS+GpI4CpkkbNEoUOkHEniebaVxNMuj0KdPg5j1HsQnNMw/98m1BVyVGPznPTOotSC
         YP/zugc2OuRgVb34o9fFUjR8rtXt+Uc1GZsNKMaom9t9RTMe0EeE2HamZXURSREYNClU
         23zN1wOOOvlHZZ+sRuOfDS+UTKsFfFVcgjzqGjz5zUXDVD8FHORobwsTLe4zvfQ31D/n
         zvDOcdp3as/6JnqWsjG7ssYagH3TAAwzHtdI/zOv5F+Vcl0rMeWzBGcfpgE4xvxThedw
         wPWA==
X-Gm-Message-State: AOAM531wBhuFOZ3isvBEkqARp+z5vgTKF9FXdbmzJun+4Sb/6zDBP4RD
        0dRIBDIwN0gUszVLGZVOUJ5fDg0KirdPUkzIuWOVMtwCAl8h0eEE9lmvWvdcodrIvcLxb+39Ofu
        A2aM5OR4r7zLHAR6WXhn9tEkt5GS35fX7/0W90B8=
X-Received: by 2002:a2e:bba0:: with SMTP id y32mr4729602lje.135.1632819013556;
        Tue, 28 Sep 2021 01:50:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwXNIsIC74EHEhcaaIOoTj5Amse61yM2/pmnchBnUI0iS1c3lanOpAQelzFzUvbyrrH5gtK6Q==
X-Received: by 2002:a2e:bba0:: with SMTP id y32mr4729585lje.135.1632819013368;
        Tue, 28 Sep 2021 01:50:13 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h13sm1848419lfl.205.2021.09.28.01.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 01:50:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>
Subject: [PATCH 12/12] ARM: dts: exynos: use spaces instead of tabs around '='
Date:   Tue, 28 Sep 2021 10:49:49 +0200
Message-Id: <20210928084949.27939-13-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210928084949.27939-1-krzysztof.kozlowski@canonical.com>
References: <20210928084949.27939-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use spaces in Origen boards instead of tabs around '=' for simple
property assignments, to match coding style.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos4210-origen.dts | 24 ++++++++++++------------
 arch/arm/boot/dts/exynos4412-origen.dts | 14 +++++++-------
 2 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boot/dts/exynos4210-origen.dts b/arch/arm/boot/dts/exynos4210-origen.dts
index 1c5394152561..435fda60e86d 100644
--- a/arch/arm/boot/dts/exynos4210-origen.dts
+++ b/arch/arm/boot/dts/exynos4210-origen.dts
@@ -206,74 +206,74 @@ ldo3_reg: LDO3 {
 			ldo4_reg: LDO4 {
 				regulator-name = "VDD_RTC_1.8V";
 				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt	= <1800000>;
+				regulator-max-microvolt = <1800000>;
 				regulator-always-on;
 			};
 
 			ldo6_reg: LDO6 {
 				regulator-name = "VMIPI_1.8V";
 				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt	= <1800000>;
+				regulator-max-microvolt = <1800000>;
 				regulator-always-on;
 			};
 
 			ldo7_reg: LDO7 {
 				regulator-name = "VDD_AUD_1.8V";
 				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt	= <1800000>;
+				regulator-max-microvolt = <1800000>;
 			};
 
 			ldo8_reg: LDO8 {
 				regulator-name = "VADC_3.3V";
 				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt	= <3300000>;
+				regulator-max-microvolt = <3300000>;
 			};
 
 			ldo9_reg: LDO9 {
 				regulator-name = "DVDD_SWB_2.8V";
 				regulator-min-microvolt = <2800000>;
-				regulator-max-microvolt	= <2800000>;
+				regulator-max-microvolt = <2800000>;
 				regulator-always-on;
 			};
 
 			ldo10_reg: LDO10 {
 				regulator-name = "VDD_PLL_1.1V";
 				regulator-min-microvolt = <1100000>;
-				regulator-max-microvolt	= <1100000>;
+				regulator-max-microvolt = <1100000>;
 				regulator-always-on;
 			};
 
 			ldo11_reg: LDO11 {
 				regulator-name = "VDD_AUD_3V";
 				regulator-min-microvolt = <3000000>;
-				regulator-max-microvolt	= <3000000>;
+				regulator-max-microvolt = <3000000>;
 			};
 
 			ldo14_reg: LDO14 {
 				regulator-name = "AVDD18_SWB_1.8V";
 				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt	= <1800000>;
+				regulator-max-microvolt = <1800000>;
 				regulator-always-on;
 			};
 
 			ldo17_reg: LDO17 {
 				regulator-name = "VDD_SWB_3.3V";
 				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt	= <3300000>;
+				regulator-max-microvolt = <3300000>;
 				regulator-always-on;
 			};
 
 			ldo21_reg: LDO21 {
 				regulator-name = "VDD_MIF_1.2V";
 				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt	= <1200000>;
+				regulator-max-microvolt = <1200000>;
 				regulator-always-on;
 			};
 
 			buck1_reg: BUCK1 {
 				regulator-name = "VDD_ARM_1.2V";
 				regulator-min-microvolt = <950000>;
-				regulator-max-microvolt	= <1350000>;
+				regulator-max-microvolt = <1350000>;
 				regulator-always-on;
 				regulator-boot-on;
 			};
@@ -281,7 +281,7 @@ buck1_reg: BUCK1 {
 			buck2_reg: BUCK2 {
 				regulator-name = "VDD_INT_1.1V";
 				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt	= <1100000>;
+				regulator-max-microvolt = <1100000>;
 				regulator-always-on;
 				regulator-boot-on;
 			};
diff --git a/arch/arm/boot/dts/exynos4412-origen.dts b/arch/arm/boot/dts/exynos4412-origen.dts
index 5479ef09f9f3..e6aec5facabf 100644
--- a/arch/arm/boot/dts/exynos4412-origen.dts
+++ b/arch/arm/boot/dts/exynos4412-origen.dts
@@ -382,7 +382,7 @@ ldo28_reg: LDO28 {
 			buck1_reg: BUCK1 {
 				regulator-name = "VDD_MIF";
 				regulator-min-microvolt = <950000>;
-				regulator-max-microvolt	= <1100000>;
+				regulator-max-microvolt = <1100000>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>; /* Normal Mode */
@@ -391,7 +391,7 @@ buck1_reg: BUCK1 {
 			buck2_reg: BUCK2 {
 				regulator-name = "VDD_ARM";
 				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt	= <1350000>;
+				regulator-max-microvolt = <1350000>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>; /* Normal Mode */
@@ -400,7 +400,7 @@ buck2_reg: BUCK2 {
 			buck3_reg: BUCK3 {
 				regulator-name = "VDD_INT";
 				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt	= <1200000>;
+				regulator-max-microvolt = <1200000>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>; /* Normal Mode */
@@ -409,7 +409,7 @@ buck3_reg: BUCK3 {
 			buck4_reg: BUCK4 {
 				regulator-name = "VDD_G3D";
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt	= <1500000>;
+				regulator-max-microvolt = <1500000>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>; /* Normal Mode */
@@ -418,7 +418,7 @@ buck4_reg: BUCK4 {
 			buck5_reg: BUCK5 {
 				regulator-name = "VDD_M12";
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt	= <1500000>;
+				regulator-max-microvolt = <1500000>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>; /* Normal Mode */
@@ -427,7 +427,7 @@ buck5_reg: BUCK5 {
 			buck6_reg: BUCK6 {
 				regulator-name = "VDD12_5M";
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt	= <1500000>;
+				regulator-max-microvolt = <1500000>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>; /* Normal Mode */
@@ -436,7 +436,7 @@ buck6_reg: BUCK6 {
 			buck9_reg: BUCK9 {
 				regulator-name = "VDDF28_EMMC";
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt	= <3000000>;
+				regulator-max-microvolt = <3000000>;
 				regulator-always-on;
 				regulator-boot-on;
 				op_mode = <1>; /* Normal Mode */
-- 
2.30.2

