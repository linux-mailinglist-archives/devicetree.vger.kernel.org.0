Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCF3D60B78B
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 21:25:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232611AbiJXTZz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 15:25:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233387AbiJXTYQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 15:24:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08E8B925AF
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 10:58:25 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DD1C961388
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 15:21:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE73BC433D6;
        Mon, 24 Oct 2022 15:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666624875;
        bh=lMDA2nvcodrVIV8L6evZKKIVkD2ejVLHbYogBvo4RuU=;
        h=From:To:Cc:Subject:Date:From;
        b=LsP8QelusXGW8PldjLxMd0PyCvoFA+OOJEkObAEQpFIWDDXiJSGjlmqHZVGdw2+tq
         WxWCIofCj8soGcdbyjreP0OS+C7h5vc+AK/juu91le12+4IBefqV3ZPFSs7NSjr9ag
         byatZNuOcy95CWUr7G3cTu8MTNKgXazL2Ftm2QDE1ZZIh+NUVgOzjMRn99DGGnRTi3
         3ZhrNHFEc2DLiUOavTBX9s+FlidP3YzuXAO+n9fjHDuJpgpCQ0vgAj1R2DasAaeqI/
         xYTQbhcXKkd6ExQy+NDozGeT9d3d4J0tFNHJ7hgXnW+mRwKDKE32yAWx6ufurp55No
         3FIYLdp17eu2A==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org
Cc:     dinguyen@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org
Subject: [PATCHv2] arm: dts: socfpga: align mmc node names with dtschema
Date:   Mon, 24 Oct 2022 10:21:10 -0500
Message-Id: <20221024152110.197041-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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
v2: put back mmc0 for "linux,default-trigger"
---
 arch/arm/boot/dts/socfpga.dtsi                      | 2 +-
 arch/arm/boot/dts/socfpga_arria10.dtsi              | 2 +-
 arch/arm/boot/dts/socfpga_arria5.dtsi               | 2 +-
 arch/arm/boot/dts/socfpga_arria5_socdk.dts          | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5.dtsi             | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts  | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_mcv.dtsi         | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_socdk.dts        | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_sockit.dts       | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_sodia.dts        | 2 +-
 arch/arm/boot/dts/socfpga_vt.dts                    | 2 +-
 12 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index 2459f3cd7dd9..57a5d6c924b1 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -755,7 +755,7 @@ l3regs@0xff800000 {
 			reg = <0xff800000 0x1000>;
 		};
 
-		mmc: dwmmc0@ff704000 {
+		mmc: mmc@ff704000 {
 			compatible = "altr,socfpga-dw-mshc";
 			reg = <0xff704000 0x1000>;
 			interrupts = <0 139 4>;
diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index 4370e3cbbb4b..a06211fcb5c3 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -656,7 +656,7 @@ L2: cache-controller@fffff000 {
 			arm,shared-override;
 		};
 
-		mmc: dwmmc0@ff808000 {
+		mmc: mmc@ff808000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			compatible = "altr,socfpga-dw-mshc";
diff --git a/arch/arm/boot/dts/socfpga_arria5.dtsi b/arch/arm/boot/dts/socfpga_arria5.dtsi
index 22dbf07afcff..9ce4b4979ecb 100644
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
index 319a71e41ea4..34422616f545 100644
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
index 76262f1e5e03..a746a8a2b6f5 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts
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
index bd92806ffc12..4c7a0d908e27 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_mcv.dtsi
+++ b/arch/arm/boot/dts/socfpga_cyclone5_mcv.dtsi
@@ -16,7 +16,7 @@ memory@0 {
 	};
 };
 
-&mmc0 {	/* On-SoM eMMC */
+&mmc {	/* On-SoM eMMC */
 	bus-width = <8>;
 	status = "okay";
 };
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

