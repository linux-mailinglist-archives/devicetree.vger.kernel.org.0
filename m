Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99E28682AA0
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 11:36:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230245AbjAaKgE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 05:36:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230239AbjAaKgD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 05:36:03 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 835B91449A
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 02:36:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1675161362; x=1706697362;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=G68M8rE8JBo5VVVGu2qDNBimr6haXk6U/+N+tFGAzTw=;
  b=cKRhlBJMlY9jgbjaq+Nmx3gN7b7UykGGyeCngrQZ/fhknRaYfx77BK1T
   rdqAshoQYID4iEPTPJZUOJ+Q+I0KvlkQBOTATZnvfWrLo/Soh29hyCXzy
   DwmEVRuNfifi3Pt63CiZhjQ2OFatvUhEvSuKdo3TDtwnVotWJl8yrBD83
   9LWRFu1ef9hOG+ASaSEulJLokd9MIC6WhHX136iyjviHYR1m4YzOVT9cI
   FYNXdEMdDChHdjIAKYe9tH2JMEX/kvVlWE0jK6HEJJeIYTZB51JhBV5cA
   wsIO91tFXRMcZYXiKToWFxWyPpmMi+/FVgT6S7+SK1jmMNzwqkwxUnQSK
   w==;
X-IronPort-AV: E=Sophos;i="5.97,261,1669071600"; 
   d="scan'208";a="28767398"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 31 Jan 2023 11:36:01 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 31 Jan 2023 11:36:01 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 31 Jan 2023 11:36:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1675161361; x=1706697361;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=G68M8rE8JBo5VVVGu2qDNBimr6haXk6U/+N+tFGAzTw=;
  b=EP17rzwfxj+lpf/RfEdAz/xylBCaaueHeS6XajufiTjDv4vFiQ775n37
   7Z2epru52O0xipBSe9223Z/1mDrPxj5dKIn5S/AbZb2PVoU/eXN7kzpM3
   0w3NVJEh3tfOznmGbx9xxW7+AQKtaDuBCVnJzQHi4uMY5xV6cmfBg5iL4
   BmrKK+jPOLk2nf5e/TD9xZBXfdGVJ1AwJAbZcVzoSkeptmSqgMP4OUR7X
   rIOYn+p9b4SW07DrJtuyNpuQmBbZKMdBLN3cYcbZmK/9FuK5rQKgYFEyA
   CLKv07CMpa+M727HenbRWxp50p8chMQLEKqnQaN0GL5moW3OFZVht+wex
   A==;
X-IronPort-AV: E=Sophos;i="5.97,261,1669071600"; 
   d="scan'208";a="28767397"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 31 Jan 2023 11:36:00 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B0214280056;
        Tue, 31 Jan 2023 11:36:00 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: freescale: imx8-ss-lsio: Fix flexspi clock order
Date:   Tue, 31 Jan 2023 11:35:58 +0100
Message-Id: <20230131103558.625455-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The correct clock order is "fspi_en" and "fspi". As they are identical
just reordering the names is sufficient.

Fixes: 6276d66984e9 ("arm64: dts: imx8dxl: add flexspi0 support")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
index 62b7f7a3e1bc..ea8c93757521 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
@@ -165,7 +165,7 @@ flexspi0: spi@5d120000 {
 		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&clk IMX_SC_R_FSPI_0 IMX_SC_PM_CLK_PER>,
 			 <&clk IMX_SC_R_FSPI_0 IMX_SC_PM_CLK_PER>;
-		clock-names = "fspi", "fspi_en";
+		clock-names = "fspi_en", "fspi";
 		power-domains = <&pd IMX_SC_R_FSPI_0>;
 		status = "disabled";
 	};
-- 
2.34.1

