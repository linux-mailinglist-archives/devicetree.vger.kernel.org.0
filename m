Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 888BA580094
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 16:17:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232199AbiGYORu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 10:17:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231282AbiGYORt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 10:17:49 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9BA6FD3E
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 07:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1658758668; x=1690294668;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=7mPRxV1OFvVSSdngdkVtqWe9nHosbEgc2grknTXzK/Y=;
  b=ajSitY+Vnrfi+wihzPsHe1C4q2o8XUR/LUivIhtHiKJYrPQl2b010qU9
   IEZAKaWJpVzYMiiROrCVM1YkQDYrl0agOm7Xe2JmWjvP53YdxFVezUCIV
   +uXcf+LdUhEbYg0wbT2/XsTTPjXKMWVPlIjQqozZ/xj43wZ4n4eEfPSEk
   J4hlSYAgZC9ZrcRyjEAiSnloRYeyG+65b9uJ3YAugnEw+qhho5a0++GN0
   GMd3RWKFdKA+Lu7G5KOw5RSHrdZVk40TowryJ7Tr+EXpoBWStku5GRGe4
   ogn6wbQrnc7nt3bNs5RI2L3dgewl3T7IzGT9KJKKqRNq6kduNrjc1C8n1
   g==;
X-IronPort-AV: E=Sophos;i="5.93,193,1654552800"; 
   d="scan'208";a="25244332"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 25 Jul 2022 16:17:46 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 25 Jul 2022 16:17:46 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 25 Jul 2022 16:17:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1658758666; x=1690294666;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=7mPRxV1OFvVSSdngdkVtqWe9nHosbEgc2grknTXzK/Y=;
  b=dI5Q8y+kk+qUtQfNa8M2iMoLvK4D9I/uWARxxFniZmeZilcPmrZKpBiM
   5PqL1wrM2H+K/pCpg4EQs9uxbC9qnp1xgwnKOKdGMIPcPRqf4ley+30Jl
   xIysM8UYCXjDWdSjNW1cj4XpZ4ItxsFUlgMJWBYguNxKUaHHEnB5ZOnS0
   PvYBV2R6peM45p33o8FBTl9CQHkPcM3XjQhuCoqiVWmpNyg8xnvtl9sok
   qO0cu5mMKmpdUn8p082ARymYs8MWjS7O9kYpk3V6AJYnruPDF/IlCLBFQ
   AJYq/aciKYOuxwBle/UrhZG2Bp6kEvRgTmdY+NpgbWzd6Z0B2kTHAV5Yy
   g==;
X-IronPort-AV: E=Sophos;i="5.93,193,1654552800"; 
   d="scan'208";a="25244331"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Jul 2022 16:17:45 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id AFEA2280056;
        Mon, 25 Jul 2022 16:17:45 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: imx8mq-tqma8mq: Remove superfluous interrupt-names
Date:   Mon, 25 Jul 2022 16:17:39 +0200
Message-Id: <20220725141739.186234-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
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

This property was never needed, remove it. This also silences
dtbs_check warnings.

Fixes: b186b8b6e770 ("arm64: dts: freescale: add initial device tree for TQMa8Mx with i.MX8M")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This property was never required and was discovered during bindings YAML
conversion at [1].

[1] https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20220725071919.25342-1-alexander.stein@ew.tq-group.com/#2938474

 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
index 899e8e7dbc24..802ad6e5cef6 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
@@ -204,7 +204,6 @@ pcf85063: rtc@51 {
 		reg = <0x51>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_rtc>;
-		interrupt-names = "irq";
 		interrupt-parent = <&gpio1>;
 		interrupts = <1 IRQ_TYPE_EDGE_FALLING>;
 		quartz-load-femtofarads = <7000>;
-- 
2.25.1

