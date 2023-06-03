Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E348E721066
	for <lists+devicetree@lfdr.de>; Sat,  3 Jun 2023 16:17:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230142AbjFCORB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Jun 2023 10:17:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229607AbjFCORA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Jun 2023 10:17:00 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D11A194
        for <devicetree@vger.kernel.org>; Sat,  3 Jun 2023 07:16:53 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9741caaf9d4so456834266b.0
        for <devicetree@vger.kernel.org>; Sat, 03 Jun 2023 07:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685801811; x=1688393811;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wN8gwd6nUNym8bOF4GRy9fU5N1hUADVXnhxOBBUdhGY=;
        b=hDFBK0tGri9HLEG42Qe30NkJotpLV0lgbC2/QYygLsbTp+OSHNvCTo55kYr58xdRO+
         PAf70b//dRtq+GE99HNDfs97lXXHFTlfKRtwHJrSya4Wyn5jVczX7SYPMo/ZYaRc3UKB
         4jyNxslgttLePV3rStcdzH7AN286DiP17xHqQcl9vuNxDqxE+VV/9F/qmL7Vg57Tdm5P
         3yrpcJ67zv5Y3Jncgv0rSMkkJTG5lzkkVF/vZgAOUZMgtOpEEWjhGwpg8myf2DRNEYNW
         CQHPYRqNbNnnmVBUIFCLpzwxzCJJQ7tXonFePvUu5VIH2WRIXPi0ESCLISV5019TSuyb
         EdDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685801811; x=1688393811;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wN8gwd6nUNym8bOF4GRy9fU5N1hUADVXnhxOBBUdhGY=;
        b=Mh2lIRxHGNwyT991flG5M4z++BCcxwVXgVNPPzgekdCee7vQhBaELU6IF/nDoxYqtq
         hc6mYxjlZUY9u64G3bc/G146KCVr5yWYPJcO4BgKbIpNXwJP8QTB34zrppdHkStGU/x6
         Q5i4iOF3Ms9gTMIZKvJEx0GpQqKUSCpxTNvdpCgap8dXo2lY+6hD8Hj5TuS8Qgq4Daif
         zT1Fn3GTotg/kcU/JsswXxbArmsbXTPVHasS4mrkgDpB51CEAhSZ8rJ3F/Nu/Z5cv+rL
         rzcnu5s7rSJ9MECzxiLNo9n/6Rw6bpIiLD/Bth7dBaRDLnBJh/yvfNPXv3HnSoJkHU33
         I4aQ==
X-Gm-Message-State: AC+VfDz2iu02Tki7Pk/USivBDa5GBKYBRZE3tHn5JEef1lBITmuxEvic
        luYYlwwNEJv0+gVvwQ6TU74=
X-Google-Smtp-Source: ACHHUZ4hufg9VQnqNwTvKTMzDRR1yjcHeLHRPccapyRHSG5e2ipm+Bv+12I5Vb/pykU/wgfq9Y5nIw==
X-Received: by 2002:a17:907:36cd:b0:974:4457:b6f with SMTP id bj13-20020a17090736cd00b0097444570b6fmr1842064ejc.23.1685801811549;
        Sat, 03 Jun 2023 07:16:51 -0700 (PDT)
Received: from shift.daheim (p5b0d7f08.dip0.t-ipconnect.de. [91.13.127.8])
        by smtp.gmail.com with ESMTPSA id b13-20020a056402138d00b0050c0b9d31a7sm1829759edv.22.2023.06.03.07.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jun 2023 07:16:51 -0700 (PDT)
Received: from chuck by shift.daheim with local (Exim 4.96)
        (envelope-from <chuck@shift.daheim>)
        id 1q5S3m-001osT-1c;
        Sat, 03 Jun 2023 16:16:50 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v1 1/3] ARM: MR26: MR32: remove bogus nand-ecc-algo property
Date:   Sat,  3 Jun 2023 16:16:48 +0200
Message-Id: <869354dba00f01d4e6bde897a44180ad1658389c.1685801691.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

| bcm53015-meraki-mr26.dtb: nand-controller@18028000:
|   nand@0:nand-ecc-algo:0: 'hw' is not one of ['hamming', 'bch', 'rs']
| From schema: Documentation/[...]/nand-controller.yaml
| bcm53016-meraki-mr32.dtb: nand-controller@18028000:
|   nand@0:nand-ecc-algo:0: 'hw' is not one of ['hamming', 'bch', 'rs']
| From schema: Documentation/[...]/nand-controller.yaml

original ECC values for these old Merakis are sadly not
provided by the vendor. It looks like Meraki just stuck
with what Broadcom's SDK was doing... which left it up
to their proprietary nand driver.

It's clear at least that they used the hardware's ecc
engine, so update the device-tree file accordingly to
specify the nand-controller as the ecc-engine.

this patch also removes the partition index numbers
from the MR32's partition node-names and does some
whitespace removal in order to fit the comment about
the partition oddities into the 100 characters per
limit.

Fixes: 935327a73553 ("ARM: dts: BCM5301X: Add DT for Meraki MR26")
Fixes: ec88a9c344d9 ("ARM: BCM5301X: Add DT for Meraki MR32")
Reported-by: Rafał Miłecki <zajec5@gmail.com> (via mail)
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>

mr32
---
 arch/arm/boot/dts/bcm53015-meraki-mr26.dts | 68 +++++++++--------
 arch/arm/boot/dts/bcm53016-meraki-mr32.dts | 88 ++++++++++++----------
 2 files changed, 86 insertions(+), 70 deletions(-)

diff --git a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
index a2eee9a1e5a7..9ea4ffc1bb71 100644
--- a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
+++ b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
@@ -9,7 +9,6 @@
 /dts-v1/;
 
 #include "bcm4708.dtsi"
-#include "bcm5301x-nand-cs0-bch8.dtsi"
 #include <dt-bindings/leds/common.h>
 
 / {
@@ -73,41 +72,50 @@ &gmac3 {
 	status = "disabled";
 };
 
-&nandcs {
-	nand-ecc-algo = "hw";
+&nand_controller {
+	nand@0 {
+		compatible = "brcm,nandcs";
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
 
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <0x1>;
-		#size-cells = <0x1>;
+		nand-ecc-engine = <&nand_controller>;
+		nand-ecc-strength = <8>;
+		nand-ecc-step-size = <512>;
 
-		partition@0 {
-			label = "u-boot";
-			reg = <0x0 0x200000>;
-			read-only;
-		};
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <0x1>;
+			#size-cells = <0x1>;
 
-		partition@200000 {
-			label = "u-boot-env";
-			reg = <0x200000 0x200000>;
-			/* empty */
-		};
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x200000>;
+				read-only;
+			};
 
-		partition@400000 {
-			label = "u-boot-backup";
-			reg = <0x400000 0x200000>;
-			/* empty */
-		};
+			partition@200000 {
+				label = "u-boot-env";
+				reg = <0x200000 0x200000>;
+				/* empty */
+			};
 
-		partition@600000 {
-			label = "u-boot-env-backup";
-			reg = <0x600000 0x200000>;
-			/* empty */
-		};
+			partition@400000 {
+				label = "u-boot-backup";
+				reg = <0x400000 0x200000>;
+				/* empty */
+			};
 
-		partition@800000 {
-			label = "ubi";
-			reg = <0x800000 0x7780000>;
+			partition@600000 {
+				label = "u-boot-env-backup";
+				reg = <0x600000 0x200000>;
+				/* empty */
+			};
+
+			partition@800000 {
+				label = "ubi";
+				reg = <0x800000 0x7780000>;
+			};
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
index b6a066f949ad..bca39b30ace8 100644
--- a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
+++ b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
@@ -9,7 +9,6 @@
 /dts-v1/;
 
 #include "bcm4708.dtsi"
-#include "bcm5301x-nand-cs0-bch8.dtsi"
 #include <dt-bindings/leds/common.h>
 
 / {
@@ -124,49 +123,58 @@ &pwm {
 	pinctrl-0 = <&pinmux_pwm>;
 };
 
-&nandcs {
-	nand-ecc-algo = "hw";
-
-	partitions {
-		/*
-		 * The partition autodetection does not work for this device.
-		 * It will only detect the "nvram" partition with an incorrect size.
-		 *	[    1.721667] 1 bcm47xxpart partitions found on MTD device brcmnand.0
-		 *	[    1.727962] Creating 1 MTD partitions on "brcmnand.0":
-		 *	[    1.733117] 0x000000400000-0x000008000000 : "nvram"
-		 */
-
-		compatible = "fixed-partitions";
-		#address-cells = <0x1>;
-		#size-cells = <0x1>;
-
-		partition0@0 {
-			label = "u-boot";
-			reg = <0x0 0x100000>;
-			read-only;
-		};
+&nand_controller {
+	nand@0 {
+		compatible = "brcm,nandcs";
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
 
-		partition1@100000 {
-			label = "bootkernel1";
-			reg = <0x100000 0x300000>;
-			read-only;
-		};
+		nand-ecc-engine = <&nand_controller>;
+		nand-ecc-strength = <8>;
+		nand-ecc-step-size = <512>;
+
+		partitions {
+			/*
+			 * The partition autodetection does not work for this device.
+			 * It will only detect the "nvram" partition with an incorrect size.
+			 *	[ 1.721667] 1 bcm47xxpart partitions found on MTD device brcmnand.0
+			 *	[ 1.727962] Creating 1 MTD partitions on "brcmnand.0":
+			 *	[ 1.733117] 0x000000400000-0x000008000000 : "nvram"
+			 */
+
+			compatible = "fixed-partitions";
+			#address-cells = <0x1>;
+			#size-cells = <0x1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x100000>;
+				read-only;
+			};
 
-		partition2@400000 {
-			label = "nvram";
-			reg = <0x400000 0x100000>;
-			read-only;
-		};
+			partition@100000 {
+				label = "bootkernel1";
+				reg = <0x100000 0x300000>;
+				read-only;
+			};
 
-		partition3@500000 {
-			label = "bootkernel2";
-			reg = <0x500000 0x300000>;
-			read-only;
-		};
+			partition@400000 {
+				label = "nvram";
+				reg = <0x400000 0x100000>;
+				read-only;
+			};
 
-		partition4@800000 {
-			label = "ubi";
-			reg = <0x800000 0x7780000>;
+			partition@500000 {
+				label = "bootkernel2";
+				reg = <0x500000 0x300000>;
+				read-only;
+			};
+
+			partition@800000 {
+				label = "ubi";
+				reg = <0x800000 0x7780000>;
+			};
 		};
 	};
 };
-- 
2.40.1

