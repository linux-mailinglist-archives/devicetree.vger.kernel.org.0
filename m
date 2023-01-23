Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2A36678644
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 20:27:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232448AbjAWT1d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 14:27:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232245AbjAWT1d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 14:27:33 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74A7F2113
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 11:27:32 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0DA5E6101C
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 19:27:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3A6AC433EF;
        Mon, 23 Jan 2023 19:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674502051;
        bh=gN7dGTSGQ84b3lMvbLQkJHVM/lyRHLz0LB7y7N9w5nI=;
        h=From:To:Cc:Subject:Date:From;
        b=l4zcAqjnoY51f08wiAEUnRjkxxxR2Y+FxXauJ6GOxDSlxBskqGKdl4BVE6etH6xSD
         +4JTca8ESu/AHzsu9JwVCTD8Uk12vazLt6eFXxJToMX4zkl43PVFUbaDI0bR1xi+Eh
         lDBx0GSm4VlJzV7GA57IPpUnZhWZ2U5pafDyl7Sus3sfyu8tc6ualetwx3H5o0IXc9
         Zzml3Hau/1jTbwq2TiSJuInvK7Xv9ZPZ517ZmCmG8u6EnHsyFzEggzF2N5uq0cKWFk
         6/r1AKckzpXYGmLjmYLCI7Bblt0WYtPpyIdMf8wFBHSd0cH3eS1j/65qZgXJ3CXAJe
         uPACb8hGkxgGw==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org, mark.rutland@arm.com,
        krzysztof.kozlowski@linaro.org
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: dts: add pinctrl-single property for Stratix10/Agilex
Date:   Mon, 23 Jan 2023 13:27:11 -0600
Message-Id: <20230123192712.84537-1-dinguyen@kernel.org>
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

