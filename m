Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECE1E3F2011
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 20:42:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234422AbhHSSnY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 14:43:24 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:41473 "EHLO
        mail-ot1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234365AbhHSSnY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 14:43:24 -0400
Received: by mail-ot1-f51.google.com with SMTP id w22-20020a056830411600b0048bcf4c6bd9so9893275ott.8
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 11:42:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WBxIT2XP4cvild9L2wVS8GZQLbMG6OtFcJU7VciJNiw=;
        b=K+gQvrHAMLKzZFJ44DArqEpR+bWQFg5rNZ0cJEaoeWGW28cMe4dZsCZ4vcEdx4q+VS
         +cC6tXMriGX+qyOO8Q1BUkikQdhkwusQjIb6yRfMQwveBdMZn6s9heyiV5p87GMQl8eB
         zVS1xSVVHpZKKhadEczGV4VgMhUFy2TLJvMvkpzKd97tFDCSCXcJjcbB74KksZYW76js
         Ieyyt+bWIXi+8f16Os+q07T0HNY9ehiTFZnQeGxfFX3F35kTRf0sC73//SlYpTYgZjMF
         P2XahTWOn888BEj/IM+ml9Sm+fKepR05mhNIm8o4LbjISxqL+JBnJ9PCU3U4jf+HczT0
         Jr0A==
X-Gm-Message-State: AOAM531sBjqGfgPnZkoYSPWkdmymdWnFk/VjZjjWf3CYjsGifmBXK4xV
        ZsoSp/i9P5Q4kjnnCGr6cw==
X-Google-Smtp-Source: ABdhPJww3STturHnGm+4iIoJU5YCTu5/tEoGv4RnSnQx1fKsZFzwlGfeu5YdAv9ePqp0ReFdfeAdAQ==
X-Received: by 2002:a9d:7044:: with SMTP id x4mr12977429otj.326.1629398567151;
        Thu, 19 Aug 2021 11:42:47 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id v19sm796485oic.31.2021.08.19.11.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 11:42:46 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/5] arm: dts: vexpress: Fix addressing issues with 'motherboard-bus' nodes
Date:   Thu, 19 Aug 2021 13:42:39 -0500
Message-Id: <20210819184239.1192395-6-robh@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819184239.1192395-1-robh@kernel.org>
References: <20210819184239.1192395-1-robh@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 'motherboard-bus' node in Arm Ltd boards fails schema checks as
'simple-bus' child nodes must have a unit-address. The 'ranges' handling is
also wrong (or at least strange) as the mapping of SMC chip selects should
be in the 'arm,vexpress,v2m-p1' node rather than a generic 'simple-bus'
node. Either there's 1 too many levels of 'simple-bus' nodes or 'ranges'
should be moved down a level. The latter change is more simple, so let's do
that. As the 'ranges' value doesn't vary for a given motherboard instance,
we can move 'ranges' into the motherboard dtsi files.

Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi            | 14 ++++++++++++--
 arch/arm/boot/dts/vexpress-v2m.dtsi                | 14 ++++++++++++--
 arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts        | 11 -----------
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts         | 11 -----------
 arch/arm/boot/dts/vexpress-v2p-ca5s.dts            | 11 -----------
 arch/arm/boot/dts/vexpress-v2p-ca9.dts             | 10 ----------
 arch/arm64/boot/dts/arm/fvp-base-revc.dts          | 11 -----------
 arch/arm64/boot/dts/arm/juno-base.dtsi             | 10 ----------
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi      | 14 ++++++++++++--
 arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts         | 11 -----------
 .../boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi      |  2 +-
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi   | 14 ++++++++++++--
 .../boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts      | 11 -----------
 13 files changed, 49 insertions(+), 95 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index f61251b3c74f..19b300532b37 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -101,13 +101,23 @@ led-8 {
 	};
 
 	bus@8000000 {
-		motherboard-bus {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <1>;
+		ranges = <0 0x8000000 0 0x8000000 0x18000000>;
+
+		motherboard-bus@8000000 {
 			arm,hbi = <0x190>;
 			arm,vexpress,site = <0>;
 			compatible = "arm,vexpress,v2m-p1", "simple-bus";
 			#address-cells = <2>; /* SMB chipselect number and offset */
 			#size-cells = <1>;
-			ranges;
+			ranges = <0 0 0 0x08000000 0x04000000>,
+				 <1 0 0 0x14000000 0x04000000>,
+				 <2 0 0 0x18000000 0x04000000>,
+				 <3 0 0 0x1c000000 0x04000000>,
+				 <4 0 0 0x0c000000 0x04000000>,
+				 <5 0 0 0x10000000 0x04000000>;
 
 			nor_flash: flash@0 {
 				compatible = "arm,vexpress-flash", "cfi-flash";
diff --git a/arch/arm/boot/dts/vexpress-v2m.dtsi b/arch/arm/boot/dts/vexpress-v2m.dtsi
index 0819d112de12..0547f633764f 100644
--- a/arch/arm/boot/dts/vexpress-v2m.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m.dtsi
@@ -20,13 +20,23 @@
 
 / {
 	bus@40000000 {
-		motherboard {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x40000000 0x40000000 0x10000000>,
+			 <0x10000000 0x10000000 0x00020000>;
+
+		motherboard-bus@40000000 {
 			arm,hbi = <0x190>;
 			arm,vexpress,site = <0>;
 			compatible = "arm,vexpress,v2m-p1", "simple-bus";
 			#address-cells = <2>; /* SMB chipselect number and offset */
 			#size-cells = <1>;
-			ranges;
+			ranges = <0 0 0x40000000 0x04000000>,
+				 <1 0 0x44000000 0x04000000>,
+				 <2 0 0x48000000 0x04000000>,
+				 <3 0 0x4c000000 0x04000000>,
+				 <7 0 0x10000000 0x00020000>;
 
 			flash@0,00000000 {
 				compatible = "arm,vexpress-flash", "cfi-flash";
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts b/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
index e63c5c0bfb43..26b6862e519f 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts
@@ -237,17 +237,6 @@ energy {
 	};
 
 	bus@8000000 {
-		compatible = "simple-bus";
-
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0 0 0 0x08000000 0x04000000>,
-			 <1 0 0 0x14000000 0x04000000>,
-			 <2 0 0 0x18000000 0x04000000>,
-			 <3 0 0 0x1c000000 0x04000000>,
-			 <4 0 0 0x0c000000 0x04000000>,
-			 <5 0 0 0x10000000 0x04000000>;
-
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 63>;
 		interrupt-map = <0 0  0 &gic 0  0 4>,
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
index 012d40a7228c..5ec25eebbd77 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
@@ -609,17 +609,6 @@ etm2_out_port: endpoint {
 	};
 
 	smb: bus@8000000 {
-		compatible = "simple-bus";
-
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0 0 0 0x08000000 0x04000000>,
-			 <1 0 0 0x14000000 0x04000000>,
-			 <2 0 0 0x18000000 0x04000000>,
-			 <3 0 0 0x1c000000 0x04000000>,
-			 <4 0 0 0x0c000000 0x04000000>,
-			 <5 0 0 0x10000000 0x04000000>;
-
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 63>;
 		interrupt-map = <0 0  0 &gic 0  0 4>,
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca5s.dts b/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
index 7aa64ae25779..f1485ee3ce83 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca5s.dts
@@ -207,17 +207,6 @@ temp-dcc {
 	};
 
 	smb: bus@8000000 {
-		compatible = "simple-bus";
-
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0 0 0x08000000 0x04000000>,
-			 <1 0 0x14000000 0x04000000>,
-			 <2 0 0x18000000 0x04000000>,
-			 <3 0 0x1c000000 0x04000000>,
-			 <4 0 0x0c000000 0x04000000>,
-			 <5 0 0x10000000 0x04000000>;
-
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 63>;
 		interrupt-map = <0 0  0 &gic 0  0 4>,
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca9.dts b/arch/arm/boot/dts/vexpress-v2p-ca9.dts
index 1317f0f58d53..99b2f339cc04 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca9.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca9.dts
@@ -296,16 +296,6 @@ power-vd10-s3 {
 	};
 
 	smb: bus@40000000 {
-		compatible = "simple-bus";
-
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0 0 0x40000000 0x04000000>,
-			 <1 0 0x44000000 0x04000000>,
-			 <2 0 0x48000000 0x04000000>,
-			 <3 0 0x4c000000 0x04000000>,
-			 <7 0 0x10000000 0x00020000>;
-
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 63>;
 		interrupt-map = <0 0  0 &gic 0  0 4>,
diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index b8a21092db4d..5f519affe728 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -207,17 +207,6 @@ panel-timing {
 	};
 
 	bus@8000000 {
-		compatible = "simple-bus";
-
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0 0 0 0x08000000 0x04000000>,
-			 <1 0 0 0x14000000 0x04000000>,
-			 <2 0 0 0x18000000 0x04000000>,
-			 <3 0 0 0x1c000000 0x04000000>,
-			 <4 0 0 0x0c000000 0x04000000>,
-			 <5 0 0 0x10000000 0x04000000>;
-
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 63>;
 		interrupt-map = <0 0  0 &gic 0 0 GIC_SPI  0 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 8e7a66943b01..fd1e9708bdaf 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -804,16 +804,6 @@ memory@80000000 {
 	};
 
 	bus@8000000 {
-		compatible = "simple-bus";
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0 0 0 0x08000000 0x04000000>,
-			 <1 0 0 0x14000000 0x04000000>,
-			 <2 0 0 0x18000000 0x04000000>,
-			 <3 0 0 0x1c000000 0x04000000>,
-			 <4 0 0 0x0c000000 0x04000000>,
-			 <5 0 0 0x10000000 0x04000000>;
-
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 15>;
 		interrupt-map = <0 0  0 &gic 0 GIC_SPI  68 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
index 4203f0a6ddf6..1578ffb07e03 100644
--- a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
@@ -92,11 +92,21 @@ nmi-button {
 	};
 
 	bus@8000000 {
-		motherboard-bus {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <1>;
+		ranges = <0 0x8000000 0 0x8000000 0x18000000>;
+
+		motherboard-bus@8000000 {
 			compatible = "arm,vexpress,v2p-p1", "simple-bus";
 			#address-cells = <2>;  /* SMB chipselect number and offset */
 			#size-cells = <1>;
-			ranges;
+			ranges = <0 0 0 0x08000000 0x04000000>,
+				 <1 0 0 0x14000000 0x04000000>,
+				 <2 0 0 0x18000000 0x04000000>,
+				 <3 0 0 0x1c000000 0x04000000>,
+				 <4 0 0 0x0c000000 0x04000000>,
+				 <5 0 0 0x10000000 0x04000000>;
 			arm,hbi = <0x252>;
 			arm,vexpress,site = <0>;
 
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
index 3050f45bade4..258991ad7cc0 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
@@ -133,17 +133,6 @@ panel_in: endpoint {
 	};
 
 	bus@8000000 {
-		compatible = "simple-bus";
-
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0 0 0 0x08000000 0x04000000>,
-			 <1 0 0 0x14000000 0x04000000>,
-			 <2 0 0 0x18000000 0x04000000>,
-			 <3 0 0 0x1c000000 0x04000000>,
-			 <4 0 0 0x0c000000 0x04000000>,
-			 <5 0 0 0x10000000 0x04000000>;
-
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 63>;
 		interrupt-map = <0 0  0 &gic GIC_SPI  0 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
index b917d9d3f1c4..33182d9e5826 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi
@@ -6,7 +6,7 @@
  */
 / {
 	bus@8000000 {
-		motherboard-bus {
+		motherboard-bus@8000000 {
 			arm,v2m-memory-map = "rs2";
 
 			iofpga-bus@300000000 {
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index 0459aff22f27..a13e71ed524a 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -77,11 +77,21 @@ dvimode {
 	};
 
 	bus@8000000 {
-		motherboard-bus {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <1>;
+		ranges = <0 0x8000000 0 0x8000000 0x18000000>;
+
+		motherboard-bus@8000000 {
 			compatible = "arm,vexpress,v2m-p1", "simple-bus";
 			#address-cells = <2>; /* SMB chipselect number and offset */
 			#size-cells = <1>;
-			ranges;
+			ranges = <0 0 0 0x08000000 0x04000000>,
+				 <1 0 0 0x14000000 0x04000000>,
+				 <2 0 0 0x18000000 0x04000000>,
+				 <3 0 0 0x1c000000 0x04000000>,
+				 <4 0 0 0x0c000000 0x04000000>,
+				 <5 0 0 0x10000000 0x04000000>;
 
 			flash@0 {
 				compatible = "arm,vexpress-flash", "cfi-flash";
diff --git a/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts b/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts
index d859914500a7..6958469bceaa 100644
--- a/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts
+++ b/arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts
@@ -145,17 +145,6 @@ temp-fpga {
 	};
 
 	smb: bus@8000000 {
-		compatible = "simple-bus";
-
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges = <0 0 0 0x08000000 0x04000000>,
-			 <1 0 0 0x14000000 0x04000000>,
-			 <2 0 0 0x18000000 0x04000000>,
-			 <3 0 0 0x1c000000 0x04000000>,
-			 <4 0 0 0x0c000000 0x04000000>,
-			 <5 0 0 0x10000000 0x04000000>;
-
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 63>;
 		interrupt-map = <0 0  0 &gic GIC_SPI  0 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.30.2

