Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6A4577B6BD
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 12:33:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229796AbjHNKdG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Aug 2023 06:33:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229623AbjHNKdA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Aug 2023 06:33:00 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C48AE5
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 03:32:59 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9EAEA61E71
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 10:32:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54BCAC433C8;
        Mon, 14 Aug 2023 10:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692009178;
        bh=oohdHkL+WftKwO60qi/+PZYBrYgwpKGXOf97WJ5f2NI=;
        h=From:To:Cc:Subject:Date:From;
        b=g9QtmqjTutnkPaMaPOpdAh4D/pN5LEpiiJ3xNnK+klBCAvrRcd7wba8Ld8ZozJpEI
         xjbm8GmkIqUj3QFKf4o8HvgU9XqqvEPqSmvVTsIrnSsbzePxqQ0/lMN+ZTZbJ0czqo
         anSuBuLij+U7g9v31esUBfzJbdtErWgAJNesCm3zsHQaj5oXWYM1HK8WYyZeS2iOxY
         tWeMu8m2rPbqpvsArCtGmPrCqyowQ9noLgF2xij8Z2LdgUxivQqJk6qphMWZhjupRJ
         4ukrGG8lnX8QsjDkfhhob1t7HnBo3sdXVUK+Jmm1JieVUDw1bwGLjwzah7KaLQv5Y6
         BHr2qb8gjB7ug==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowskii+dt@linaro.org, conor+dt@kernel.org
Subject: [PATCH] arm64: dts: socfpga: fix dtbs_check warnings for clocks
Date:   Mon, 14 Aug 2023 05:32:40 -0500
Message-Id: <20230814103240.807616-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix dtbs_check warning: 'clock-frequency' is a required property.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 4 ++++
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi     | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 439497ab967d..cd8123ada2bc 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -101,21 +101,25 @@ clocks {
 		cb_intosc_hs_div2_clk: cb-intosc-hs-div2-clk {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <0>;
 		};
 
 		cb_intosc_ls_clk: cb-intosc-ls-clk {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <0>;
 		};
 
 		f2s_free_clk: f2s-free-clk {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <0>;
 		};
 
 		osc1: osc1 {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <0>;
 		};
 
 		qspi_clk: qspi-clk {
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index d3adb6a130ae..6726f88822f9 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -92,21 +92,25 @@ clocks {
 		cb_intosc_hs_div2_clk: cb-intosc-hs-div2-clk {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <0>;
 		};
 
 		cb_intosc_ls_clk: cb-intosc-ls-clk {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <0>;
 		};
 
 		f2s_free_clk: f2s-free-clk {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <0>;
 		};
 
 		osc1: osc1 {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <0>;
 		};
 
 		qspi_clk: qspi-clk {
-- 
2.25.1

