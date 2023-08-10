Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D9B37774FD
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 11:55:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234339AbjHJJz4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 05:55:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234574AbjHJJzx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 05:55:53 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 662D226A6
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 02:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1691661348; x=1723197348;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ZVmFwfJ+DFkwrQ1uWbDiYsUZaR2T1CColYQPVt5XMOY=;
  b=n1ISZAAoFLZcT/cLFJTpumY+PnzpQBi9Wiu9MqbYdPUgmfNX9pd6B6Fd
   uJlK2GEPiyncY5p2kvG+TaEjvN37K1rJsRiDyD1PAn3IJGfuNeQDCrXEE
   ugtYjVUIwNFp7doYP+mo69HrFk0zgDXN2dzwm1jBvCJYCDlZPS61uYLZf
   zTpVcJKFuG+qIzvgdjAXjdgG5Qe4uNESzs38El/jX8V7P/jVMx8omOKcS
   3pQMXDjaW9jIe5VkluN68MQIZcZIc6UMQPT9liQf0InbGoxVaRvMckRtb
   /Lg3gngrIzAux/v96Sx5d1KZ9GYdXBGuvgdPcCTHMLOZcncRR0DKHknde
   Q==;
X-IronPort-AV: E=Sophos;i="6.01,161,1684792800"; 
   d="scan'208";a="32389513"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 Aug 2023 11:55:44 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 51DAC28008E;
        Thu, 10 Aug 2023 11:55:44 +0200 (CEST)
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
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] ARM: dts: imx6ul: mba6ulx: Fix stmpe811 node warnings
Date:   Thu, 10 Aug 2023 11:55:39 +0200
Message-Id: <20230810095541.720489-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810095541.720489-1-alexander.stein@ew.tq-group.com>
References: <20230810095541.720489-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

interrupt-controller is only valid for gpio subnode, remove it.
Rename touchscreen subnode according to bindings.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
index e14fdee49ab7..632ceadcca41 100644
--- a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
@@ -280,10 +280,9 @@ analog_touch: touchscreen@41 {
 		reg = <0x41>;
 		interrupts = <21 IRQ_TYPE_EDGE_FALLING>;
 		interrupt-parent = <&gpio4>;
-		interrupt-controller;
 		status = "disabled";
 
-		stmpe_touchscreen {
+		touchscreen {
 			compatible = "st,stmpe-ts";
 			st,adc-freq = <1>;      /* 3.25 MHz ADC clock speed */
 			st,ave-ctrl = <3>;      /* 8 sample average control */
-- 
2.34.1

