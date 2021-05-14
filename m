Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08CED380EBB
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 19:20:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235095AbhENRVM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 13:21:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235092AbhENRVL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 13:21:11 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C30EC061756
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 10:20:00 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id d21so125484oic.11
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 10:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XImWdEYC3gDQdFM+D/yVM45WqAeLrw/TsyXb3e1uXWE=;
        b=pYqHTTuxdGSEP9E4YGxU1o/AuIx8kIVyQcdFUPBpnp6pp4ZEObg2iQfOEHjGyzfTVX
         x9sjsK6uX8ry7n6s3RB/sgqbXx83W3owc4VpWBTepSMNkQ5RmaCIfIZ4/WL+RoDfK9vl
         DlrroWVzEZjDNIzXdaIMu1AY3gO3HRTPSyDlsWBnJmhIcEL2XTV2/+oBYn8Ndl40e+xB
         zmysYtZBOJNR4cnX8g7JuhUs74LimbklGkRDTx782cPSPtoEKwVlIY6WUiyneiKqkyWd
         Ki4YW/NtmQNWpMEBEhOIEOgTWmhSIgfjsP5OvGAc63IMq386UCZe16SrUwCZ1OXflC/C
         a8Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XImWdEYC3gDQdFM+D/yVM45WqAeLrw/TsyXb3e1uXWE=;
        b=ATVxQvkKS1aCSS327IjP55ibJ15kIYmjioWnEy/L9D81zpEA1yJywObjiwjEdjhGFO
         KOVLC6Tr2/OO3Ft59yG7meHIYhFKxx+aiBgPBN1DT/hZen1PsIcG9to+rbBYwz0Yk/JL
         I6NIFyvt/dDy2u0HfIU9xgUOj2/Cjru9XBPxQ8hg5okhPPIsYGiVoJ6jAU6u+WzBVMor
         1s9V77EAguk5oGAmPB+YxNe4NitpRTvNZ0+ZouM39GCmCKZQ/lIk4YUPYJjsy/UreCLb
         vrzr2xZKXUIhBEL2LQYYIRLmBS5T0rEKeNEX1ZutVIoTEn9X0L51v8xSmLTfPZIFPnwV
         V/aQ==
X-Gm-Message-State: AOAM533A+wmFAcZX+2rfAHngaEr+rZSersHT+60yXC7IQE9VYeYfFr8c
        WG0+3SK80uAfL41VUlKtS50o1e/Ar5Q=
X-Google-Smtp-Source: ABdhPJyVvlmz5ONd0vvjUhfdgkH8DXQm7uJ/noA95b1cQMV54bqY4SzZCdeOWf0Pbx5Q67mHUW/SQQ==
X-Received: by 2002:aca:6505:: with SMTP id m5mr33381113oim.93.1621012799713;
        Fri, 14 May 2021 10:19:59 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id x14sm1302547oic.3.2021.05.14.10.19.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 10:19:59 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v10 3/4] dt-bindings: Add Rockchip rk817 audio CODEC support
Date:   Fri, 14 May 2021 12:19:39 -0500
Message-Id: <20210514171940.20831-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210514171940.20831-1-macroalpha82@gmail.com>
References: <20210514171940.20831-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Create dt-binding documentation to document rk817 codec.
New property name of rockchip,mic-in-differential added to control if
the microphone is in differential mode or not.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/mfd/rk808.txt         | 186 ++++++++++++++++++
 1 file changed, 186 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
index 04df07f6f793..56121039154f 100644
--- a/Documentation/devicetree/bindings/mfd/rk808.txt
+++ b/Documentation/devicetree/bindings/mfd/rk808.txt
@@ -23,6 +23,7 @@ Optional properties:
   default output clock name
 - rockchip,system-power-controller: Telling whether or not this pmic is controlling
   the system power.
+- wakeup-source: Device can be used as a wakeup source.
 
 Optional RK805 properties:
 - vcc1-supply:  The input supply for DCDC_REG1
@@ -63,8 +64,16 @@ Optional RK809 properties:
 - vcc9-supply:  The input supply for DCDC_REG5, SWITCH_REG2
 
 Optional RK817 properties:
+- clocks:	The input clock for the audio codec
+- clock-names:	The clock name for the codec clock. Should be "mclk".
+- #sound-dai-cells: Needed for the interpretation of sound dais. Should be 0.
+
 - vcc8-supply:  The input supply for BOOST
 - vcc9-supply:  The input supply for OTG_SWITCH
+- codec:	The child node for the codec to hold additional properties.
+
+- rockchip,mic-in-differential: Telling if the microphone uses differential
+				mode. Should be under the codec child node.
 
 Optional RK818 properties:
 - vcc1-supply:  The input supply for DCDC_REG1
@@ -275,3 +284,180 @@ Example:
 			};
 		};
 	};
+
+	rk817: pmic@20 {
+		compatible = "rockchip,rk817";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+		clock-output-names = "rk808-clkout1", "xin32k";
+		clock-names = "mclk";
+		clocks = <&cru SCLK_I2S1_OUT>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
+		wakeup-source;
+		#clock-cells = <1>;
+		#sound-dai-cells = <0>;
+
+		vcc1-supply = <&vccsys>;
+		vcc2-supply = <&vccsys>;
+		vcc3-supply = <&vccsys>;
+		vcc4-supply = <&vccsys>;
+		vcc5-supply = <&vccsys>;
+		vcc6-supply = <&vccsys>;
+		vcc7-supply = <&vccsys>;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <1150000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vdd_arm: DCDC_REG2 {
+				regulator-name = "vdd_arm";
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc_3v3: DCDC_REG4 {
+				regulator-name = "vcc_3v3";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_1v8: LDO_REG2 {
+				regulator-name = "vcc_1v8";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vdd_1v0: LDO_REG3 {
+				regulator-name = "vdd_1v0";
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG4 {
+				regulator-name = "vcc3v3_pmu";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_sd: LDO_REG6 {
+				regulator-name = "vcc_sd";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_bl: LDO_REG7 {
+				regulator-name = "vcc_bl";
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc_lcd: LDO_REG8 {
+				regulator-name = "vcc_lcd";
+				regulator-min-microvolt = <2800000>;
+				regulator-max-microvolt = <2800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <2800000>;
+				};
+			};
+
+			vcc_cam: LDO_REG9 {
+				regulator-name = "vcc_cam";
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <3000000>;
+				};
+			};
+		};
+
+		rk817_codec: codec {
+			rockchip,mic-in-differential;
+		};
+	};
-- 
2.25.1

