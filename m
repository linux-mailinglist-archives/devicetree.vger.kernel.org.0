Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A301373E1F8
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 16:21:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231494AbjFZOVU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 10:21:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231487AbjFZOUx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 10:20:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9EAB19F
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 07:19:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 400B960E17
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 14:18:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18274C433C8;
        Mon, 26 Jun 2023 14:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687789123;
        bh=vDF3ZAqT+o2uNsTkPnE3P96PmaEh7IxF0FyUMi6tv5k=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=crwJGS2ROdtq238jrz+3429K1JjLo79FVYXejEvBbMnN2yz772zwZsrFLd4M40AbK
         ACXEj1FH2YSa1dp5kIt0lzQGppiB0COgnmpJlBBbjToEz+yJ8BWnPyDy4+kuTn06wC
         q1BcDUjO2Ktz0Cw1OquRUVyUjpvDlov9GeJtOkbZx2q6C2r5/PyV2elVk82D6AWII7
         DSbBLd8FQO57LQ0VMkk2mAo32TW25D5sdcuyreaj4LxgPw+EoQe1WJHmkiXhg0s5za
         jbRIPm20j56F8HMfZ37Ep/eFEpsGi2WKfi3V4KoYUdjvAjLURULaNMGIneVfNtkx2A
         8lSqAEaNPbi1Q==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowskii+dt@linaro.org, conor+dt@kernel.org
Subject: [PATCH 4/5] arm64: dts: stratix10/agilex/n5x: fix dtbs_check warning for memory node
Date:   Mon, 26 Jun 2023 09:18:25 -0500
Message-Id: <20230626141826.414777-5-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230626141826.414777-1-dinguyen@kernel.org>
References: <20230626141826.414777-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Although, we expect the bootloader to full memory details but passing empty
values can give warning, so add a default value.

memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 0, 0, 0]]}

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts      | 4 ++--
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts | 4 ++--
 arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts       | 2 +-
 arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts          | 4 ++--
 arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts          | 4 ++--
 arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts     | 4 ++--
 arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts             | 4 ++--
 7 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index c66da5a94691..92cd968cb798 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -38,10 +38,10 @@ led-hps2 {
 		};
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		/* We expect the bootloader to fill in the reg */
-		reg = <0 0 0 0>;
+		reg = <0 0x80000000 0 0>;
 	};
 
 	ref_033v: regulator-v-ref {
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
index a9ea9e6ec6b3..bd6f78e0fe2f 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
@@ -38,10 +38,10 @@ led-hps2 {
 		};
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		/* We expect the bootloader to fill in the reg */
-		reg = <0 0 0 0>;
+		reg = <0 0x80000000 0 0>;
 	};
 
 	ref_033v: regulator-v-ref {
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
index a8db58573954..ff413f8e3b07 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
@@ -29,7 +29,7 @@ chosen {
 		linux,initrd-end = <0x125c8324>;
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts
index 6231a69204b1..1a32840c74e0 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts
@@ -20,10 +20,10 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory@0 {
+	memory@80000000 {
 		device_type = "memory";
 		/* We expect the bootloader to fill in the reg */
-		reg = <0 0 0 0>;
+		reg = <0 0x80000000 0 0>;
 	};
 
 	soc {
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
index b6e5e69fd8e5..4e50d3d10806 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
@@ -37,10 +37,10 @@ led2 {
 		};
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		/* We expect the bootloader to fill in the reg */
-		reg = <0 0 0 0>;
+		reg = <0 0x80000000 0 0>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts
index 51f83f96ec65..0f9020bd0c52 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts
@@ -37,10 +37,10 @@ led2 {
 		};
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		/* We expect the bootloader to fill in the reg */
-		reg = <0 0 0 0>;
+		reg = <0 0x80000000 0 0>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
index 7b1ced8e1d12..755129e5b546 100644
--- a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
@@ -19,10 +19,10 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		/* We expect the bootloader to fill in the reg */
-		reg = <0 0 0 0>;
+		reg = <0 0x80000000 0 0>;
 	};
 
 	soc {
-- 
2.25.1

