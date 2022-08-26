Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99A1A5A208A
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 07:53:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236697AbiHZFx5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 01:53:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244840AbiHZFxx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 01:53:53 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61070D075E
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 22:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661493232; x=1693029232;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=nHrBrTZj5Iz5LHVgZajD5vpSZnKgQW+IcYkHMnOEUrY=;
  b=Wrd8FrpDaThlxVWBaQkVvb1PyJGEq26GzF1eJbGt/nB4M/o98JtXHT1X
   q7bsp1gRhT7MbjeKx4Hzo3ARVMJ+IxWmSfxcvW6u09FrtNn8nR7wVJN6H
   I+I6UKQewHqDYXYZRCOxmuec2r+bAfia2rXR7aXVD1qvqFvTI+IVzLzwO
   j4oI6RvANqNseGQtIXEHuYTC0+GdN/jWZpk/1e2TnwWEeoVXXvbMdRsHa
   wYzt+GtzwjKO7OPuEvQzifpmgZV/j7hBGjlB6BTVeoyR/sktejzevMOwZ
   NeEOqOEF/AwKwQQLZemSRyT0Au+Ahr6BqIobB2QzH/WivyUeMipfose2n
   w==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654552800"; 
   d="scan'208";a="25816954"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 26 Aug 2022 07:53:41 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 26 Aug 2022 07:53:42 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 26 Aug 2022 07:53:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661493221; x=1693029221;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=nHrBrTZj5Iz5LHVgZajD5vpSZnKgQW+IcYkHMnOEUrY=;
  b=gffMK0Ps9L3BLW+cUD8xat7+MwNlC5UsV/+oqshz49Tw05D8rRCDoGDw
   IQaI96dZ6xB/edPq1+MbKHxuk2PpO4lkVyXh1Q4HBe8AA3z4/qhQIf1BY
   xXCtpnbJr2YxC8r10MOXWGcgydLLLbsfBuWwQIOQC+BhEWrRO8QcSTc6N
   KV4pf5Ur4b34+l9xBgKvIFPN0VEG0OakDttXjFxh2CIy+E+2SiNcHpf2M
   3ErabBeXJJzrdqdmphJiEktf5q5k5Vd3O1yC+hhG8F+exKKJ/qNDcKlup
   ydNgoRVvPHl4AKGUylS2E+Uh1ryS1U/jGHhbcAC16TKu2POzNUmtvwoJy
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654552800"; 
   d="scan'208";a="25816953"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 Aug 2022 07:53:41 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B45C1280056;
        Fri, 26 Aug 2022 07:53:41 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/6] ARM: dts: imx6sx: add missing properties for sram
Date:   Fri, 26 Aug 2022 07:53:36 +0200
Message-Id: <20220826055336.2821876-7-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220826055336.2821876-1-alexander.stein@ew.tq-group.com>
References: <20220826055336.2821876-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All 3 properties are required by sram.yaml. Fixes the dtbs_check warning:
sram@900000: '#address-cells' is a required property
sram@900000: '#size-cells' is a required property
sram@900000: 'ranges' is a required property

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6sx.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 4d075e2bf749..2611eef3b2a2 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -164,12 +164,18 @@ soc: soc {
 		ocram_s: sram@8f8000 {
 			compatible = "mmio-sram";
 			reg = <0x008f8000 0x4000>;
+			ranges = <0 0x008f8000 0x4000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 			clocks = <&clks IMX6SX_CLK_OCRAM_S>;
 		};
 
 		ocram: sram@900000 {
 			compatible = "mmio-sram";
 			reg = <0x00900000 0x20000>;
+			ranges = <0 0x00900000 0x20000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 			clocks = <&clks IMX6SX_CLK_OCRAM>;
 		};
 
-- 
2.25.1

