Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A60A473295C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 09:59:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230420AbjFPH7W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 03:59:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230149AbjFPH7T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 03:59:19 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A81FF2733
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 00:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686902357; x=1718438357;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=3hYbSiVKeoEht0JnaksXH3v8S4W8sPhUYfzRq9a95r0=;
  b=oq0J6fFeBML/+fb+B2vNVqfJvNqjkQe8R6tJGC7SALsBXKKqFJHRpu1W
   zSFNnXNbwl3slcnG3f5cAi/s4xLr/KXNmHLPqgEMefRBfWqPR4JIwaKg+
   lSpE+tTf43oHAsR+prWJkJXmuuJ0aD9OVYQ0zCtRNjoKN03m1iIB0CQM3
   rbOWTevt7STaB7VUvwUVr7tik6UPUDfL3qjQyd3Z0+XW49B8F79pKoNpU
   4b8oUpKV+ObSgjpX/HVQvpcHgD8Bnow4os1AY/qWifKePaDk/6YL1HKSC
   xjxSrno/Y41Znn28bc6Suhuov+FwRWn4Paob80E1wIW0I9wvk6rBT/dce
   g==;
X-IronPort-AV: E=Sophos;i="6.00,247,1681164000"; 
   d="scan'208";a="31460794"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Jun 2023 09:59:15 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B2CEB280082;
        Fri, 16 Jun 2023 09:59:15 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Frank Li <Frank.Li@nxp.com>
Subject: [PATCH 1/1] arm64: dts: imx8mq: Add coresight trace components
Date:   Fri, 16 Jun 2023 09:59:14 +0200
Message-Id: <20230616075914.2315189-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add coresight trace components (ETM, ETF, ETB and Funnel).

┌───────┐  ┌───────┐  ┌───────┐
│ CPU0  ├─►│ ETM0  ├─►│       │
└───────┘  └───────┘  │       │
                      │       │
┌───────┐  ┌───────┐  │  ATP  │
│ CPU1  ├─►│ ETM1  ├─►│       │
└───────┘  └───────┘  │       │
                      │ FUNNEL│
┌───────┐  ┌───────┐  │       │
│ CPU2  ├─►│ ETM2  ├─►│       │
└───────┘  └───────┘  │       │   ┌─────┐
                      │       │   │     │
┌───────┐  ┌───────┐  │       │   │ M4  │
│ CPU3  ├─►│ ETM3  ├─►│       │   │     │
└───────┘  └───────┘  └───┬───┘   └──┬──┘                        AXI
                          │          │                            ▲
                          ▼          ▼                            │
                      ┌───────────────────────────┐   ┌─────┐   ┌─┴──┐
                      │          ATP FUNNEL       ├──►│ ETF ├─► │ETR │
                      └───────────────────────────┘   └─────┘   └────┘

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This is a 1:1 copy from commit 71c2ac9a2a3da ("arm64: dts: imx8mp: Add
coresight trace components") with the following changes:
* Adjust clock names
* Replace (Cortex-)M7 with M4 in comment
* Remove Audio DSP funnel port

This is untested, but the base addresses for the components are
identical in the reference manuals.

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 196 ++++++++++++++++++++++
 1 file changed, 196 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 33c6bb66d2d69..8ea8c7c7974cc 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -330,6 +330,202 @@ soc: soc@0 {
 		nvmem-cells = <&imx8mq_uid>;
 		nvmem-cell-names = "soc_unique_id";
 
+		etm0: etm@28440000 {
+			compatible = "arm,coresight-etm4x", "arm,primecell";
+			reg = <0x28440000 0x10000>;
+			arm,primecell-periphid = <0xbb95d>;
+			cpu = <&A53_0>;
+			clocks = <&clk IMX8MQ_CLK_MAIN_AXI>;
+			clock-names = "apb_pclk";
+
+			out-ports {
+				port {
+					etm0_out_port: endpoint {
+						remote-endpoint = <&ca_funnel_in_port0>;
+					};
+				};
+			};
+		};
+
+		etm1: etm@28540000 {
+			compatible = "arm,coresight-etm4x", "arm,primecell";
+			reg = <0x28540000 0x10000>;
+			arm,primecell-periphid = <0xbb95d>;
+			cpu = <&A53_1>;
+			clocks = <&clk IMX8MQ_CLK_MAIN_AXI>;
+			clock-names = "apb_pclk";
+
+			out-ports {
+				port {
+					etm1_out_port: endpoint {
+						remote-endpoint = <&ca_funnel_in_port1>;
+					};
+				};
+			};
+		};
+
+		etm2: etm@28640000 {
+			compatible = "arm,coresight-etm4x", "arm,primecell";
+			reg = <0x28640000 0x10000>;
+			arm,primecell-periphid = <0xbb95d>;
+			cpu = <&A53_2>;
+			clocks = <&clk IMX8MQ_CLK_MAIN_AXI>;
+			clock-names = "apb_pclk";
+
+			out-ports {
+				port {
+					etm2_out_port: endpoint {
+						remote-endpoint = <&ca_funnel_in_port2>;
+					};
+				};
+			};
+		};
+
+		etm3: etm@28740000 {
+			compatible = "arm,coresight-etm4x", "arm,primecell";
+			reg = <0x28740000 0x10000>;
+			arm,primecell-periphid = <0xbb95d>;
+			cpu = <&A53_3>;
+			clocks = <&clk IMX8MQ_CLK_MAIN_AXI>;
+			clock-names = "apb_pclk";
+
+			out-ports {
+				port {
+					etm3_out_port: endpoint {
+						remote-endpoint = <&ca_funnel_in_port3>;
+					};
+				};
+			};
+		};
+
+		funnel {
+			/*
+			 * non-configurable funnel don't show up on the AMBA
+			 * bus.  As such no need to add "arm,primecell".
+			 */
+			compatible = "arm,coresight-static-funnel";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					ca_funnel_in_port0: endpoint {
+						remote-endpoint = <&etm0_out_port>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					ca_funnel_in_port1: endpoint {
+						remote-endpoint = <&etm1_out_port>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					ca_funnel_in_port2: endpoint {
+						remote-endpoint = <&etm2_out_port>;
+					};
+				};
+
+				port@3 {
+					reg = <3>;
+
+					ca_funnel_in_port3: endpoint {
+						remote-endpoint = <&etm3_out_port>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					ca_funnel_out_port0: endpoint {
+						remote-endpoint = <&hugo_funnel_in_port0>;
+					};
+				};
+			};
+		};
+
+		funnel@28c03000 {
+			compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
+			reg = <0x28c03000 0x1000>;
+			clocks = <&clk IMX8MQ_CLK_MAIN_AXI>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					hugo_funnel_in_port0: endpoint {
+						remote-endpoint = <&ca_funnel_out_port0>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					hugo_funnel_in_port1: endpoint {
+					/* M4 input */
+					};
+				};
+				/* the other input ports are not connect to anything */
+			};
+
+			out-ports {
+				port {
+					hugo_funnel_out_port0: endpoint {
+						remote-endpoint = <&etf_in_port>;
+					};
+				};
+			};
+		};
+
+		etf@28c04000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x28c04000 0x1000>;
+			clocks = <&clk IMX8MQ_CLK_MAIN_AXI>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					etf_in_port: endpoint {
+						remote-endpoint = <&hugo_funnel_out_port0>;
+					};
+				};
+			};
+
+			out-ports {
+				port {
+					etf_out_port: endpoint {
+						remote-endpoint = <&etr_in_port>;
+					};
+				};
+			};
+		};
+
+		etr@28c06000 {
+			compatible = "arm,coresight-tmc", "arm,primecell";
+			reg = <0x28c06000 0x1000>;
+			clocks = <&clk IMX8MQ_CLK_MAIN_AXI>;
+			clock-names = "apb_pclk";
+
+			in-ports {
+				port {
+					etr_in_port: endpoint {
+						remote-endpoint = <&etf_out_port>;
+					};
+				};
+			};
+		};
+
 		aips1: bus@30000000 { /* AIPS1 */
 			compatible = "fsl,aips-bus", "simple-bus";
 			reg = <0x30000000 0x400000>;
-- 
2.34.1

