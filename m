Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 267306786AB
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 20:44:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232784AbjAWTog (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 14:44:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232299AbjAWTof (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 14:44:35 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACF3126589
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 11:44:34 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 236F6CE16D8
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 19:44:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0EC0C433EF;
        Mon, 23 Jan 2023 19:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674503071;
        bh=A3F2Us4U9A9SphSNyF7g028y1yOEU3fnZ7QEfYvsrjI=;
        h=From:To:Cc:Subject:Date:From;
        b=YmZahcQ7YATmtCpVikAqDlzvB+0Jv1DUKMWzEiHCecflNDNSDVpCE8MnKKHDEv6V6
         xMkWxU7J4auwQetkGo383oQ1bUWg+nfT1aF3+fs7yuJVY2V2+TgHMccxbfrsJ/QVQL
         EpKC+3KezRhA9hOlL6d+cpBBsgV2ty/qLPPD8LBJkmsDua+hH8LRjcr5IN2rulrbMG
         kZKsnbaE7O9EXUIBcDKQ7yBjuD64ob1Mai/wgVZozWwGLzMBPlbO9FpLXQksgYXB/p
         xDgiioaGdc+MfpgfLsyr2FaXif6ClRmFUPcRWY9eqCoVov769PHnHwK0l+PnNAgvlK
         Hl0Fi5FSmYxKQ==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, mark.rutland@arm.com,
        krzysztof.kozlowski@linaro.org
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 1/2] arm64: dts: add pinctrl-single property for Stratix10/Agilex
Date:   Mon, 23 Jan 2023 13:44:20 -0600
Message-Id: <20230123194421.95315-1-dinguyen@kernel.org>
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

The Stratix10/Agilex has a pin control IP that can make use of the
pinctrl-single driver.

Add the pinctrl-single dts property for the Stratix10/Agilex
platforms.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v2: no changes
---
 .../arm64/boot/dts/altera/socfpga_stratix10.dtsi | 16 ++++++++++++++++
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi    | 15 +++++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 55c5e1fdddc7..b488e8d185f3 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -353,6 +353,22 @@ pdma: dma-controller@ffda0000 {
 			reset-names = "dma", "dma-ocp";
 		};
 
+		pinctrl0: pinctrl@ffd13000 {
+			compatible = "pinctrl-single";
+			reg = <0xffd13000 0xA0>;
+			#pinctrl-cells = <1>;
+			pinctrl-single,register-width = <32>;
+			pinctrl-single,function-mask = <0x0000000f>;
+		};
+
+		pinctrl1: pinctrl@ffd13100 {
+			compatible = "pinctrl-single";
+			reg = <0xffd13100 0x20>;
+			#pinctrl-cells = <1>;
+			pinctrl-single,register-width = <32>;
+			pinctrl-single,function-mask = <0x0000000f>;
+		};
+
 		rst: rstmgr@ffd11000 {
 			#reset-cells = <1>;
 			compatible = "altr,stratix10-rst-mgr";
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 849b46dd8098..f22302a19796 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -357,6 +357,21 @@ pdma: dma-controller@ffda0000 {
 			clock-names = "apb_pclk";
 		};
 
+		pinctrl0: pinctrl@ffd13000 {
+			compatible = "pinctrl-single";
+			#pinctrl-cells = <1>;
+			reg = <0xffd13000 0xa0>;
+			pinctrl-single,register-width = <32>;
+			pinctrl-single,function-mask = <0x0000000f>;
+		};
+
+		pinctrl1: pinconf@ffd13100 {
+			compatible = "pinctrl-single";
+			#pinctrl-cells = <1>;
+			reg = <0xffd13100 0x20>;
+			pinctrl-single,register-width = <32>;
+		};
+
 		rst: rstmgr@ffd11000 {
 			#reset-cells = <1>;
 			compatible = "altr,stratix10-rst-mgr";
-- 
2.25.1

