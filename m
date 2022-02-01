Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 963994A6560
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 21:07:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237366AbiBAUHU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 15:07:20 -0500
Received: from dfw.source.kernel.org ([139.178.84.217]:59158 "EHLO
        dfw.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231634AbiBAUHU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 15:07:20 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D150161690
        for <devicetree@vger.kernel.org>; Tue,  1 Feb 2022 20:07:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC247C340EB;
        Tue,  1 Feb 2022 20:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643746039;
        bh=N1Pg+Q6vvy8BcHGjzbFI45J+aAQN9JxSapFcS2Cqtkg=;
        h=From:To:Cc:Subject:Date:From;
        b=NO+yeyMhQtclwtni/pFoWaxQyhJzUO2GWyzx5oUbEKh1jYiXZTwFfph3CdwVmMYP+
         fzE06ObnCN4a8gssmMYaaT3NgIXdiojUyCj+BXDC98ga0wdyoMKH+Z07H+Bsq6KcrL
         sE5Ld4Vh3WbToN1VBMNBlF0UPSVgAr77K4hfV8voCNnXzP36bWCtD5ByD9j13DaZ0O
         MDVqYLiRsuenJ9N9FZWlXXJ+2Gxx11KfxhzkFIFaCMTzC9ytKsF7hwiikO6vxkSEol
         03KfzjCCOr7o4CukdGpcuV7JaJIY8rvqR1/+8gKUONzyLxHZpa3zDI5kZCkKLMqTLD
         +P7Cl6BQ21S7w==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, mark.rutland@arm.com
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] ARM: dts: socfpga: cyclone5: align regulator node with dtschema
Date:   Tue,  1 Feb 2022 14:07:13 -0600
Message-Id: <20220201200713.2396686-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes dtbs_check warnings like:

'3-3-v-regulator' does not match any of the regexes: '.*-names$'

Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>:wq
Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts  | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_socdk.dts        | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_sockit.dts       | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_sodia.dts        | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts b/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts
index f6561766d83f..76262f1e5e03 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts
@@ -24,7 +24,7 @@ memory@0 {
 		reg = <0x0 0x20000000>; /* 512MB */
 	};
 
-	regulator_3_3v: 3-3-v-regulator {
+	regulator_3_3v: regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "3.3V";
 		regulator-min-microvolt = <3300000>;
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts b/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts
index 67076e1b1c7f..c8f051fb2bf6 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts
@@ -24,7 +24,7 @@ aliases {
 		ethernet0 = &gmac1;
 	};
 
-	regulator_3_3v: 3-3-v-regulator {
+	regulator_3_3v: regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "3.3V";
 		regulator-min-microvolt = <3300000>;
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts b/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
index 51bb436784e2..253ef139181d 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
@@ -50,7 +50,7 @@ hps3 {
 		};
 	};
 
-	regulator_3_3v: 3-3-v-regulator {
+	regulator_3_3v: regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "3.3V";
 		regulator-min-microvolt = <3300000>;
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_sockit.dts b/arch/arm/boot/dts/socfpga_cyclone5_sockit.dts
index cae9ddd5ed38..3dd99c7c95e0 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_sockit.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_sockit.dts
@@ -111,7 +111,7 @@ hps_hkey3 {
 		};
 	};
 
-	regulator_3_3v: vcc3p3-regulator {
+	regulator_3_3v: regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "VCC3P3";
 		regulator-min-microvolt = <3300000>;
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts b/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts
index 3f7aa7bf0863..b0003f350e65 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts
@@ -26,7 +26,7 @@ aliases {
 		ethernet0 = &gmac1;
 	};
 
-	regulator_3_3v: 3-3-v-regulator {
+	regulator_3_3v: regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "3.3V";
 		regulator-min-microvolt = <3300000>;
-- 
2.25.1

