Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A12E759128
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 11:07:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229589AbjGSJH2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 05:07:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbjGSJH1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 05:07:27 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28D9726AC
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 02:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1689757623; x=1721293623;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=T78bXECmhntB8lsvYSYNqEA9hhTCZr6tbiYRactmk3U=;
  b=pa1PCa2zy+GP8t0zTuHDNzmmrKB2Q1ZfT+tz4qy0i//xHdNiI9y06LVz
   HxwycWlzUMdJKigF2mii7LBzPpf0qX5cn0W+NJUqb4+ghnCFeR/qK1Ri8
   iwPwgJqXPoiMeSwL1yrlnLwMTxQByawTcA7rZboRe31xaqTUzozYJ9VVN
   zZuVLfHZSVuzU9m3FGdxtbgBUBuam665NOhxu1i40nzooI4m1jhj2htwO
   s1vySUB68Qew9LmOm5aykyOooZ09T1lzBEXd7cKmp91h8cXTazSFl47Ns
   Kz5zQpaQU8uLQ1ISss2hdovk7bBP7w45rAUShcR5xq0zcoEb7xDw9MqKQ
   Q==;
X-IronPort-AV: E=Sophos;i="6.01,216,1684792800"; 
   d="scan'208";a="32005249"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Jul 2023 11:06:20 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C97C3280078;
        Wed, 19 Jul 2023 11:06:19 +0200 (CEST)
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
Subject: [PATCH v2 1/1] arm64: dts: imx8mq: Add coresight trace components
Date:   Wed, 19 Jul 2023 11:06:16 +0200
Message-Id: <20230719090616.1954001-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
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
Changes in v2:
* Adjust reg size
* Remove arm,primecell-periphid

This is a 1:1 copy from commit 71c2ac9a2a3da ("arm64: dts: imx8mp: Add
coresight trace components") with the following changes:
* Adjust clock names
* Replace (Cortex-)M7 with M4 in comment
* Remove Audio DSP funnel port
* Changes from ba345b77fae7 ("arm64: dts: imx8mp: remove arm,primecell-periphid at etm nodes") included as well

I was able to test ETM using tools/perf/tests/shell/test_arm_coresight.sh
But I'm getting timeout errors for Manual Flushs, same on imx8mp though.

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 192 ++++++++++++++++++++++
 1 file changed, 192 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 0a0ec80a0b0c..7f4194c33683 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -330,6 +330,198 @@ soc: soc@0 {
 		nvmem-cells = <&imx8mq_uid>;
 		nvmem-cell-names = "soc_unique_id";
 
+		etm0: etm@28440000 {
+			compatible = "arm,coresight-etm4x", "arm,primecell";
+			reg = <0x28440000 0x1000>;
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
+			reg = <0x28540000 0x1000>;
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
+			reg = <0x28640000 0x1000>;
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
+			reg = <0x28740000 0x1000>;
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

