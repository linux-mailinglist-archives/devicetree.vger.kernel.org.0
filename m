Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7007B2FF2C7
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 19:04:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729335AbhAUSDp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 13:03:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729152AbhAUK2p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 05:28:45 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24DE4C0613ED
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 02:27:12 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id bx12so1797252edb.8
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 02:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XftOrF3pZsYjg7wIL3rdWbwK37uOKDGUWg/X4U2EjrY=;
        b=mX9O08H2hRdIKpnalbY1xKILUPly7ewHKlxmtthed1+gAaX8dU78Eh4VqpSANCk2ZB
         4feghOQ/vWhhi7l0klj2UBLiq50hdPs7sPGIoUdI3YuNdwJStjaSBK79DUcTJDvULNM4
         pfruVtOVg+qtJZEt1qRhCbDE2Km53mdUZTDYfhv7OVnpNr2sMcmG3u0NbDpX56gWx2Tx
         o83ZUGv5Hr+zONv4F9VZ44NEo17nBUdwu4NYCT8i1N024aHZb3Fyyhf9NDSfNuyx+7b0
         mJxEJQcTVU91iMdYJPWgKaD5jzR/3rYmyjkmB16VxmeLpTwn4fOziZwpwV/Ygne7JKZN
         b30g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=XftOrF3pZsYjg7wIL3rdWbwK37uOKDGUWg/X4U2EjrY=;
        b=UFOEvMbVC/cA2nH4Z3rcXgV/cfa2859p/zNcgc5c9yuLH5wghAziOZjNW2OYjTsd4a
         vgGPep1+LjI8e49iwmz+GhRpjRE7JtS5l6oToMSF4gHdR/IAdhrG2K3D6LFtb3zrbKm6
         nXRgUes8VfQmbPlYNU6j5sac5fBm5CEI33cgIjXBspWB37aQpOkXA0UtWjUBhouSky4V
         rQji37HFB8FUNvO0+pE7pR+kLneOWBlT5w4VQF4isS3+a8tWHzMQSm+oh9n+DPGPwf7q
         MWn8Vrt0magr+/D87C8rnrLm5jZ2InocyMuYz12N2U10Inu4e+JV2fE1twSUti4RLHSa
         JTOw==
X-Gm-Message-State: AOAM5307ejKb769KeqDGMiB++HBrmUizehl95QDt+96v+8O60rX2sECj
        o4IfY3SArzE0XM0bK4kB9pAGVw==
X-Google-Smtp-Source: ABdhPJwY5pg2RtH8aQ5Rnp6MIrsjUFDiGOUgrRGRGZBuP9GV7gwas3P3b9m84MSsrwMpwSLTTiuSJA==
X-Received: by 2002:aa7:c384:: with SMTP id k4mr10349733edq.23.1611224830847;
        Thu, 21 Jan 2021 02:27:10 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id a22sm2518005edv.67.2021.01.21.02.27.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Jan 2021 02:27:10 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 03/12] arm64: dts: zynqmp: Enable si5341 driver for zcu102/106/111
Date:   Thu, 21 Jan 2021 11:26:51 +0100
Message-Id: <b93f13297684704a60e8d7274009a20aa98d14f7.1611224800.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <cover.1611224800.git.michal.simek@xilinx.com>
References: <cover.1611224800.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable si5341 driver is the main chip for providing preprogrammed clocks
for the whole platform.

 # cat /sys/kernel/debug/clk/clk_summary
...
 refhdmi                              1        1        0   114285000          0     0  50000
    xtal_0                            0        0        0   114285000          0     0  50000
       pll_0                          0        0        0 40731174000000          0     0  50000
          clk1_0                      0        0        0    27000000          0     0  50000
          clk0_0                      0        0        0    27000000          0     0  50000
 ref48M                               1        2        0    48000000          0     0  50000
    si5341                            0        4        0    14000000          0     0  50000
       clock-generator.N4             0        0        0           0          0     0  50000
       clock-generator.N3             0        1        0   733260000          0     0  50000
          clock-generator.9           0        1        0    33330000          0     0  50000
       clock-generator.N2             0        1        0   104000000          0     0  50000
          clock-generator.2           0        1        0    26000000          0     0  50000
       clock-generator.N1             0        2        0   594000000          0     0  50000
          clock-generator.7           0        1        0    74250000          0     0  50000
          clock-generator.0           0        1        0    27000000          0     0  50000
       clock-generator.N0             0        4        0  1000000000          0     0  50000
          clock-generator.8           0        0        0           0          0     0  50000
          clock-generator.6           0        1        0   125000000          0     0  50000
          clock-generator.5           0        1        0   100000000          0     0  50000
          clock-generator.4           0        1        0   100000000          0     0  50000
          clock-generator.3           0        1        0   125000000          0     0  50000
          clock-generator.1           0        0        0           0          0     0  50000
...

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    | 56 ++++++++++++++++++-
 .../boot/dts/xilinx/zynqmp-zcu106-revA.dts    | 45 +++++++++++++++
 .../boot/dts/xilinx/zynqmp-zcu111-revA.dts    | 46 ++++++++++++++-
 3 files changed, 145 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index 5ff7ab665374..68c2ad30d62d 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -133,6 +133,13 @@ ina226-u75 {
 		io-channels = <&u75 0>, <&u75 1>, <&u75 2>, <&u75 3>;
 	};
 
+	/* 48MHz reference crystal */
+	ref48: ref48M {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <48000000>;
+	};
+
 	refhdmi: refhdmi {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -489,9 +496,56 @@ i2c@1 {
 			#size-cells = <0>;
 			reg = <1>;
 			si5341: clock-generator@36 { /* SI5341 - u69 */
+				compatible = "silabs,si5341";
 				reg = <0x36>;
-			};
+				#clock-cells = <2>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				clocks = <&ref48>;
+				clock-names = "xtal";
+				clock-output-names = "si5341";
 
+				si5341_0: out@0 {
+					/* refclk0 for PS-GT, used for DP */
+					reg = <0>;
+					always-on;
+				};
+				si5341_2: out@2 {
+					/* refclk2 for PS-GT, used for USB3 */
+					reg = <2>;
+					always-on;
+				};
+				si5341_3: out@3 {
+					/* refclk3 for PS-GT, used for SATA */
+					reg = <3>;
+					always-on;
+				};
+				si5341_4: out@4 {
+					/* refclk4 for PS-GT, used for PCIE slot */
+					reg = <4>;
+					always-on;
+				};
+				si5341_5: out@5 {
+					/* refclk5 for PS-GT, used for PCIE */
+					reg = <5>;
+					always-on;
+				};
+				si5341_6: out@6 {
+					/* refclk6 PL CLK125 */
+					reg = <6>;
+					always-on;
+				};
+				si5341_7: out@7 {
+					/* refclk7 PL CLK74 */
+					reg = <7>;
+					always-on;
+				};
+				si5341_9: out@9 {
+					/* refclk9 used for PS_REF_CLK 33.3 MHz */
+					reg = <9>;
+					always-on;
+				};
+			};
 		};
 		i2c@2 {
 			#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index 7910ac125101..a29ff20090ce 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -133,6 +133,13 @@ ina226-u75 {
 		io-channels = <&u75 0>, <&u75 1>, <&u75 2>, <&u75 3>;
 	};
 
+	/* 48MHz reference crystal */
+	ref48: ref48M {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <48000000>;
+	};
+
 	refhdmi: refhdmi {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -488,7 +495,45 @@ i2c@1 {
 			#size-cells = <0>;
 			reg = <1>;
 			si5341: clock-generator@36 { /* SI5341 - u69 */
+				compatible = "silabs,si5341";
 				reg = <0x36>;
+				#clock-cells = <2>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				clocks = <&ref48>;
+				clock-names = "xtal";
+				clock-output-names = "si5341";
+
+				si5341_0: out@0 {
+					/* refclk0 for PS-GT, used for DP */
+					reg = <0>;
+					always-on;
+				};
+				si5341_2: out@2 {
+					/* refclk2 for PS-GT, used for USB3 */
+					reg = <2>;
+					always-on;
+				};
+				si5341_3: out@3 {
+					/* refclk3 for PS-GT, used for SATA */
+					reg = <3>;
+					always-on;
+				};
+				si5341_6: out@6 {
+					/* refclk6 PL CLK125 */
+					reg = <6>;
+					always-on;
+				};
+				si5341_7: out@7 {
+					/* refclk7 PL CLK74 */
+					reg = <7>;
+					always-on;
+				};
+				si5341_9: out@9 {
+					/* refclk9 used for PS_REF_CLK 33.3 MHz */
+					reg = <9>;
+					always-on;
+				};
 			};
 
 		};
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index d9a8fdbbcae8..92b3cee62d11 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -116,6 +116,13 @@ ina226-u79 {
 		compatible = "iio-hwmon";
 		io-channels = <&u79 0>, <&u79 1>, <&u79 2>, <&u79 3>;
 	};
+
+	/* 48MHz reference crystal */
+	ref48: ref48M {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <48000000>;
+	};
 };
 
 &dcc {
@@ -374,9 +381,46 @@ i2c@1 {
 			#size-cells = <0>;
 			reg = <1>;
 			si5341: clock-generator@36 { /* SI5341 - u46 */
+				compatible = "silabs,si5341";
 				reg = <0x36>;
+				#clock-cells = <2>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				clocks = <&ref48>;
+				clock-names = "xtal";
+				clock-output-names = "si5341";
+
+				si5341_0: out@0 {
+					/* refclk0 for PS-GT, used for DP */
+					reg = <0>;
+					always-on;
+				};
+				si5341_2: out@2 {
+					/* refclk2 for PS-GT, used for USB3 */
+					reg = <2>;
+					always-on;
+				};
+				si5341_3: out@3 {
+					/* refclk3 for PS-GT, used for SATA */
+					reg = <3>;
+					always-on;
+				};
+				si5341_5: out@5 {
+					/* refclk5 PL CLK100 */
+					reg = <5>;
+					always-on;
+				};
+				si5341_6: out@6 {
+					/* refclk6 PL CLK125 */
+					reg = <6>;
+					always-on;
+				};
+				si5341_9: out@9 {
+					/* refclk9 used for PS_REF_CLK 33.3 MHz */
+					reg = <9>;
+					always-on;
+				};
 			};
-
 		};
 		i2c@2 {
 			#address-cells = <1>;
-- 
2.30.0

