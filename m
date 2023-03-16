Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 971C76BD1C1
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 15:07:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230502AbjCPOH0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 10:07:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230515AbjCPOHU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 10:07:20 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79349D5A7A
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 07:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678975623; x=1710511623;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=SCu1xyqd9gojM4xFCSEDULqeIxKa/DMmpKWiwNOmU7w=;
  b=T5mpnZ+S6CSuLdavhXJZvfTSWnLqp1SR+1i2NTC6OURGzRbWmmB+DrX4
   yu9D5Wvw6c5AXXoNsLtsvFXdHpjqby/AZi62+WQXBDWt0JCB5jtBS1u5P
   pLLNgwcOvVm6JHzi0ruNbNxEPlp53dqds3rlD1mLYr/zotcR62L4e1twV
   7wpTd0wrJrF+n59fQozBBSREpQBB5rtx/berutPA3UXeXo67LrNrNlFSO
   2HH/Woj18XsJ75q2SHo53R8JR4Vq2fFXGUs+9b1uvHw3rpzquCnrn5Ue+
   uCi1LyIBuPzBcAe5iLDpQb69d44o0AgiTknlJ/qY8ch5YCHzSXxUl6ygd
   Q==;
X-IronPort-AV: E=Sophos;i="5.98,265,1673910000"; 
   d="scan'208";a="29741183"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 16 Mar 2023 15:06:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 16 Mar 2023 15:06:50 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 16 Mar 2023 15:06:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678975610; x=1710511610;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=SCu1xyqd9gojM4xFCSEDULqeIxKa/DMmpKWiwNOmU7w=;
  b=OUY+rx78/j9AymvsXJKOjv7/TfKtIW1UektbhSUA8ewjkTH9JrZn8Clg
   ytCCorXtDroikv+B4gpeiOt38N2TmhIoe26LUHX6D7+bNz3CsbFDFolbn
   6U507h4g4Q4IVGwRUSfuOmznCJ1dDlrWKV+CngkG/nxHSYFbXeO1chvHd
   EhyfgBIwyAdRCjyH7jHnmnuSMUozo+jbcW8BaKgLrvoux+Y+wVe5dKEC/
   8nCtGVsi2FiS4BWe/9RDJLW/wNmQpkwknCGMe19s8T14njZnb1fuHb2a/
   K5du74zI/mlhEkMlDS+IKTH0rRnLgJhQF7PF1iltm/pTtUspSuZtsZn1B
   w==;
X-IronPort-AV: E=Sophos;i="5.98,265,1673910000"; 
   d="scan'208";a="29741182"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Mar 2023 15:06:50 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0872F280072;
        Thu, 16 Mar 2023 15:06:50 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: imx8mm: Fix lcdif clock order
Date:   Thu, 16 Mar 2023 15:06:46 +0100
Message-Id: <20230316140646.489626-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316140646.489626-1-alexander.stein@ew.tq-group.com>
References: <20230316140646.489626-1-alexander.stein@ew.tq-group.com>
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

Fixes the dtbs_check warnings:
lcdif@32e00000: clock-names:1: 'axi' was expected
lcdif@32e00000: clock-names:2: 'disp_axi' was expected

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 1de455ba21da..1474c7fa9312 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1123,9 +1123,9 @@ lcdif: lcdif@32e00000 {
 				compatible = "fsl,imx8mm-lcdif", "fsl,imx6sx-lcdif";
 				reg = <0x32e00000 0x10000>;
 				clocks = <&clk IMX8MM_CLK_LCDIF_PIXEL>,
-					 <&clk IMX8MM_CLK_DISP_AXI_ROOT>,
-					 <&clk IMX8MM_CLK_DISP_APB_ROOT>;
-				clock-names = "pix", "disp_axi", "axi";
+					 <&clk IMX8MM_CLK_DISP_APB_ROOT>,
+					 <&clk IMX8MM_CLK_DISP_AXI_ROOT>;
+				clock-names = "pix", "axi", "disp_axi";
 				assigned-clocks = <&clk IMX8MM_CLK_LCDIF_PIXEL>,
 						  <&clk IMX8MM_CLK_DISP_AXI>,
 						  <&clk IMX8MM_CLK_DISP_APB>;
-- 
2.34.1

