Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F0F260B632
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 20:50:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230015AbiJXSuj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 14:50:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232741AbiJXSuQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 14:50:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6CCA18BE37
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 10:31:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AC626614F7
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 17:13:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FA78C433D6;
        Mon, 24 Oct 2022 17:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666631596;
        bh=k70K0WhjsJhx0ILuah4jeCvZa19SXVaqlTyHXmp3HMk=;
        h=From:To:Cc:Subject:Date:From;
        b=U5MohbB0zl10k01JG+KQWVaUtT9XV+Gsh51L6lxDpHeOEgDiTXX9jBwCD9v5zJ7a+
         fdRllR3tegzQ8HxDqcoPeb8IlvnN0Hc/5q8/p+11etlZ9ERbnetvyfiLKPaG3RtIoD
         MQ5dwncyxunfQ1qy/U/FXMB6rTheVFAYesKedRfS4y3X3eakpCzahtJqb+Knu+8UAZ
         r11x7HkROVB/G2kKa61GI2zXAuZIR5QYS8jRydNoZIYTJRmWLBAUA6JJDdb0KcCM8M
         U4K9BifN/YervsyCKiCGuaFOblbZB7qmxQWlpBcyv1K5jWlZ31twklHNyAKgkeZ5rX
         ZLiBNkRJ9wssw==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org
Cc:     dinguyen@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org
Subject: [PATCHv3] arm: dts: socfpga: align mmc node names with dtschema
Date:   Mon, 24 Oct 2022 12:13:09 -0500
Message-Id: <20221024171309.203821-1-dinguyen@kernel.org>
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
v3: remove unneccesary rename mmc0 to mmc
v2: put back mmc0 for "linux,default-trigger"
---
 arch/arm/boot/dts/socfpga.dtsi          | 2 +-
 arch/arm/boot/dts/socfpga_arria10.dtsi  | 2 +-
 arch/arm/boot/dts/socfpga_arria5.dtsi   | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5.dtsi | 2 +-
 arch/arm/boot/dts/socfpga_vt.dts        | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

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
index 22dbf07afcff..d27e94a1f61f 100644
--- a/arch/arm/boot/dts/socfpga_arria5.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria5.dtsi
@@ -18,7 +18,7 @@ osc1 {
 			};
 		};
 
-		mmc0: dwmmc0@ff704000 {
+		mmc0: mmc@ff704000 {
 			broken-cd;
 			bus-width = <4>;
 			cap-mmc-highspeed;
diff --git a/arch/arm/boot/dts/socfpga_cyclone5.dtsi b/arch/arm/boot/dts/socfpga_cyclone5.dtsi
index 319a71e41ea4..20f114445f48 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5.dtsi
+++ b/arch/arm/boot/dts/socfpga_cyclone5.dtsi
@@ -18,7 +18,7 @@ osc1 {
 			};
 		};
 
-		mmc0: dwmmc0@ff704000 {
+		mmc0: mmc@ff704000 {
 			broken-cd;
 			bus-width = <4>;
 			cap-mmc-highspeed;
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

