Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDEAC611A4B
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 20:41:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230007AbiJ1SlI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 14:41:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230038AbiJ1SlF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 14:41:05 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 533451EA54D
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 11:40:59 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-13ba86b5ac0so7279201fac.1
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 11:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ynt6JT69HA02Oq8WM7F4kqQBK5tLRg6dL8O0dxxMqc=;
        b=Pkxqg5BTmAVShE5+autPmavgdFYq6sH3gqtICfzT0mN6bJR+ty/vuMl3uFmwHMKo9p
         HxesyXUXBX7PAjdTJjoQME0bpqDjP7Nd5aH3U916XVNT4eAwgCPjs7ZShnS9nbuACiuZ
         KAzbXeLo911fjY4jWF9NQqzULD6s73f+P6fB0wUNRKWun+9B+yngWCLqRXI0L0uxwMC/
         L8EaT4F6iPo5S8ySdgbOuUwu+HNKi+fGkpICDRSlGD0CBETdTJK+el4YUjWox7TvIJ/s
         VPOR8rSNjLJbnZYh4UZxFarAv2fPP8K3GETpoAStdDLzEs+jbeuc79rwGCIRQyk0GRJI
         PqUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4ynt6JT69HA02Oq8WM7F4kqQBK5tLRg6dL8O0dxxMqc=;
        b=E96Hg01VfxnIhdk8BNpD9c9y3V+qldiEUHBUHPxki3USI6qY83T9O4MP2qU5utGh4X
         hgKwarw/KEYc1rwxsSF+64eNhrcfkGDBx8ffo9ozyNP51z20RktFQN7jH3eCXzfOKKx7
         /rMI/Cf7Fei+85F2ok7O+GRIfL2nL9WKkvym00mfhqjNoNw4S2uQUabOZ7bur0XGZRk5
         gzkvKEZ8ViaHHOl9dZ90h9SQdxu3oz8G3gSIZRQW22xsmLbNuJAJRuP1k3TaCaFPTuCX
         m+6PD77Nus4yMnknJPJVa14BcDeTGRQqrA13NebGZ+t2exBzMOHOaKYNzoBvkLLlsgON
         qwQw==
X-Gm-Message-State: ACrzQf2hRHnC2XhGyU9BUT5+qsBPxnobH8aLk2LwxKU5Bu8rTNC8KKlM
        znUZexBtK4k/T4wCwoxKQ15tA8Y20rI=
X-Google-Smtp-Source: AMsMyM7F+br2pqNe1GmsfyUORiHlcDIJZu1fQJXHoowqOaPfw/dZ2FJlY96pJhMt2R8m5hOOY3HUZQ==
X-Received: by 2002:a05:6870:a449:b0:13c:7d1c:5116 with SMTP id n9-20020a056870a44900b0013c7d1c5116mr325067oal.27.1666982458410;
        Fri, 28 Oct 2022 11:40:58 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z7-20020a056830290700b0066c34486aa7sm575288otu.73.2022.10.28.11.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 11:40:57 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, michael.riesch@wolfvision.net,
        frattaroli.nicolas@gmail.com, jagan@amarulasolutions.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: add rk817 chg to RG353P and RG503
Date:   Fri, 28 Oct 2022 13:40:44 -0500
Message-Id: <20221028184045.13113-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028184045.13113-1-macroalpha82@gmail.com>
References: <20221028184045.13113-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the internal battery and charger for the Anbernic
RG353P and RG503. Battery values are taken from the BSP Kernel
device tree.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 28 +++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    | 28 +++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
index 80716b2ebd29..63cff402f3a8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -18,6 +18,25 @@ aliases {
 		mmc3 = &sdmmc2;
 	};
 
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3472000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <117000>;
+		voltage-max-design-microvolt = <4172000>;
+		voltage-min-design-microvolt = <3400000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =  <4172000 100>, <4054000 95>, <3984000 90>, <3926000 85>,
+					<3874000 80>, <3826000 75>, <3783000 70>, <3746000 65>,
+					<3714000 60>, <3683000 55>, <3650000 50>, <3628000 45>,
+					<3612000 40>, <3600000 35>, <3587000 30>, <3571000 25>,
+					<3552000 20>, <3525000 15>, <3492000 10>, <3446000 5>,
+					<3400000 0>;
+	};
+
 	/* Channels reversed for both headphones and speakers. */
 	sound {
 		compatible = "simple-audio-card";
@@ -87,6 +106,15 @@ spk_amp_enable_h: spk-amp-enable-h {
 	};
 };
 
+&rk817 {
+	rk817_charger: charger {
+		monitored-battery = <&battery>;
+		rockchip,resistor-sense-micro-ohms = <10000>;
+		rockchip,sleep-enter-current-microamp = <300000>;
+		rockchip,sleep-filter-current-microamp = <100000>;
+	};
+};
+
 &sdhci {
 	pinctrl-0 = <&emmc_bus8>, <&emmc_clk>, <&emmc_cmd>, <&emmc_datastrobe>, <&emmc_rstnout>;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index c56c290f0d87..5dafcc86296b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -17,6 +17,25 @@ aliases {
 		mmc2 = &sdmmc2;
 	};
 
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3472000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <117000>;
+		voltage-max-design-microvolt = <4172000>;
+		voltage-min-design-microvolt = <3400000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =	<4172000 100>, <4054000 95>, <3984000 90>, <3926000 85>,
+					<3874000 80>, <3826000 75>, <3783000 70>, <3746000 65>,
+					<3714000 60>, <3683000 55>, <3650000 50>, <3628000 45>,
+					<3612000 40>, <3600000 35>, <3587000 30>, <3571000 25>,
+					<3552000 20>, <3525000 15>, <3492000 10>, <3446000 5>,
+					<3400000 0>;
+	};
+
 	gpio_spi: spi {
 		compatible = "spi-gpio";
 		pinctrl-names = "default";
@@ -136,3 +155,12 @@ spi_pins: spi-pins {
 		};
 	};
 };
+
+&rk817 {
+	rk817_charger: charger {
+		monitored-battery = <&battery>;
+		rockchip,resistor-sense-micro-ohms = <10000>;
+		rockchip,sleep-enter-current-microamp = <300000>;
+		rockchip,sleep-filter-current-microamp = <100000>;
+	};
+};
-- 
2.25.1

