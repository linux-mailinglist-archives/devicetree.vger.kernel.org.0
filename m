Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A3BF607ACA
	for <lists+devicetree@lfdr.de>; Fri, 21 Oct 2022 17:32:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229682AbiJUPcv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Oct 2022 11:32:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230125AbiJUPcs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Oct 2022 11:32:48 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EACB924CC1F
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 08:32:37 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 6FA73B82C9F
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 15:32:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A86B2C433B5;
        Fri, 21 Oct 2022 15:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666366355;
        bh=yF73gqcV2FBdIn6VQAksf8/byMWW4phmKjBUoTsXyos=;
        h=From:To:Cc:Subject:Date:From;
        b=GHBCYjRWAazDazjh7fVlVcYmlgxWInXupVZKOIOkA2i6clbJ5DVZziQDFJr3Qng4I
         /AOD6eGpC/GiE3whz2L32nm2/hSe82iBFsohM4Oq8dXKWT2gNwjv+e/eEXkVjzQMNP
         Hc9AfU8/PpKg3z/jm1NvedzmGx4Kj+2S5LSa543IzZMps5iNNPrClFwHXyq7TNwExz
         byZ8BqyL3errNtxOkGABfvSmMkqw7Th2GHWTpnaqPO2/FBpSwIgQdnLNHusVi3pKyc
         k8I/4CPMoukpk6YgW372AbqWphyKliRpwhw2PTlU1w2EsgmcP2VOjM2mirjUnDpi5U
         NNTDSLnz6VvKA==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org
Cc:     dinguyen@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org
Subject: [PATCH] arm: dts: socfpga: align mmc node names with dtschema
Date:   Fri, 21 Oct 2022 10:32:23 -0500
Message-Id: <20221021153223.159030-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dwmmc0@ff704000: $nodename:0: 'dwmmc0@ff704000' does not match '^mmc(@.*)?$'

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga.dtsi                      | 2 +-
 arch/arm/boot/dts/socfpga_arria10.dtsi              | 2 +-
 arch/arm/boot/dts/socfpga_arria5.dtsi               | 2 +-
 arch/arm/boot/dts/socfpga_arria5_socdk.dts          | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5.dtsi             | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts  | 4 ++--
 arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_mcv.dtsi         | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_socdk.dts        | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_sockit.dts       | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_sodia.dts        | 2 +-
 arch/arm/boot/dts/socfpga_vt.dts                    | 2 +-
 12 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index a2419a5c6c26..6eda6fdc101b 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -754,7 +754,7 @@ l3regs@0xff800000 {
 			reg = <0xff800000 0x1000>;
 		};
 
-		mmc: dwmmc0@ff704000 {
+		mmc: mmc@ff704000 {
 			compatible = "altr,socfpga-dw-mshc";
 			reg = <0xff704000 0x1000>;
 			interrupts = <0 139 4>;
diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index eb528c103d70..3b2a2c9c6547 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -655,7 +655,7 @@ L2: cache-controller@fffff000 {
 			arm,shared-override;
 		};
 
-		mmc: dwmmc0@ff808000 {
+		mmc: mmc@ff808000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			compatible = "altr,socfpga-dw-mshc";
diff --git a/arch/arm/boot/dts/socfpga_arria5.dtsi b/arch/arm/boot/dts/socfpga_arria5.dtsi
index b531639ce7dc..c20a1f04f29a 100644
--- a/arch/arm/boot/dts/socfpga_arria5.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria5.dtsi
@@ -18,7 +18,7 @@ osc1 {
 			};
 		};
 
-		mmc0: dwmmc0@ff704000 {
+		mmc: mmc@ff704000 {
 			broken-cd;
 			bus-width = <4>;
 			cap-mmc-highspeed;
diff --git a/arch/arm/boot/dts/socfpga_arria5_socdk.dts b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
index 7f5458d8fccc..40f12232c150 100644
--- a/arch/arm/boot/dts/socfpga_arria5_socdk.dts
+++ b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
@@ -107,7 +107,7 @@ rtc@68 {
 	};
 };
 
-&mmc0 {
+&mmc {
 	vmmc-supply = <&regulator_3_3v>;
 	vqmmc-supply = <&regulator_3_3v>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/socfpga_cyclone5.dtsi b/arch/arm/boot/dts/socfpga_cyclone5.dtsi
index a9d1ba66f1ff..1d08d48559e5 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5.dtsi
+++ b/arch/arm/boot/dts/socfpga_cyclone5.dtsi
@@ -18,7 +18,7 @@ osc1 {
 			};
 		};
 
-		mmc0: dwmmc0@ff704000 {
+		mmc: mmc@ff704000 {
 			broken-cd;
 			bus-width = <4>;
 			cap-mmc-highspeed;
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts b/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts
index 76262f1e5e03..f3e7169bc93a 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts
@@ -43,7 +43,7 @@ user_led1 {
 		user_led2 {
 			label = "green:user2";
 			gpios = <&porta 22 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "mmc0";
+			linux,default-trigger = "mmc";
 		};
 
 		user_led3 {
@@ -91,7 +91,7 @@ &i2c3 {
 	status = "okay";
 };
 
-&mmc0 {
+&mmc {
 	vmmc-supply = <&regulator_3_3v>;
 	vqmmc-supply = <&regulator_3_3v>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts b/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts
index c8f051fb2bf6..77d08b77cc1e 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts
@@ -86,7 +86,7 @@ adxl345: adxl345@53 {
 	};
 };
 
-&mmc0 {
+&mmc {
 	vmmc-supply = <&regulator_3_3v>;
 	vqmmc-supply = <&regulator_3_3v>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_mcv.dtsi b/arch/arm/boot/dts/socfpga_cyclone5_mcv.dtsi
index 3b9daddf91cd..92ff1b257279 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_mcv.dtsi
+++ b/arch/arm/boot/dts/socfpga_cyclone5_mcv.dtsi
@@ -16,7 +16,7 @@ memory@0 {
 	};
 };
 
-&mmc0 {	/* On-SoM eMMC */
+&mmc {	/* On-SoM eMMC */
 	bus-width = <8>;
 	clk-phase-sd-hs = <0>, <135>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts b/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
index b2241205c7a9..c2ed96cfdb0b 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
@@ -111,7 +111,7 @@ rtc@68 {
 	};
 };
 
-&mmc0 {
+&mmc {
 	cd-gpios = <&portb 18 0>;
 	vmmc-supply = <&regulator_3_3v>;
 	vqmmc-supply = <&regulator_3_3v>;
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_sockit.dts b/arch/arm/boot/dts/socfpga_cyclone5_sockit.dts
index 3dd99c7c95e0..1c459d739a1c 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_sockit.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_sockit.dts
@@ -157,7 +157,7 @@ accel1: accelerometer@53 {
 	};
 };
 
-&mmc0 {
+&mmc {
 	vmmc-supply = <&regulator_3_3v>;
 	vqmmc-supply = <&regulator_3_3v>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts b/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts
index 2564671fc1c6..6610b5bfd58d 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts
@@ -99,7 +99,7 @@ rtc@68 {
 	};
 };
 
-&mmc0 {
+&mmc {
 	cd-gpios = <&portb 18 0>;
 	vmmc-supply = <&regulator_3_3v>;
 	vqmmc-supply = <&regulator_3_3v>;
diff --git a/arch/arm/boot/dts/socfpga_vt.dts b/arch/arm/boot/dts/socfpga_vt.dts
index a77846f73b34..3d0d806888b7 100644
--- a/arch/arm/boot/dts/socfpga_vt.dts
+++ b/arch/arm/boot/dts/socfpga_vt.dts
@@ -29,7 +29,7 @@ osc1 {
 			};
 		};
 
-		dwmmc0@ff704000 {
+		mmc@ff704000 {
 			broken-cd;
 			bus-width = <4>;
 			cap-mmc-highspeed;
-- 
2.25.1

