Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82446777500
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 11:55:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234935AbjHJJz6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 05:55:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232133AbjHJJzx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 05:55:53 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C928926AB
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 02:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1691661350; x=1723197350;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=sJZe1JfwhuuJWthm/CgUEzNMRA17jLZQuqNR7b+aif8=;
  b=NPZEki5yLgYwyLZxYSbov1xTiaZqb+yPT1lRlb1dn0+JXDHfVIGNZ2Lk
   axoCjcuTYXlWDlC+9PQ0l1CMjTxpn4fB7Z9HjzvAO5LU+uUHnnSyu3M4x
   Jk3JcEltF85a8dwWo+dkZSLPqm9vnUpxuBryseJgwsS7+/lGRC8Ekkw7E
   XLmGwCgvuL+yBHvD51SJexuX5HdgdbYNZgveNZDUvqL2C4UT06kdU9MBr
   F/fg4qyxS2AKyyw/Pfozsiy2F6dc+l9JwziiC1oncojtW9pNYPFaQbLbh
   pRq23p6utr7G2tB3uDqeV1K6pKFRaHk9gIxIRYV3MAVKlGPtO9iRLhvIX
   g==;
X-IronPort-AV: E=Sophos;i="6.01,161,1684792800"; 
   d="scan'208";a="32389515"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 Aug 2023 11:55:44 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id BC5BE280090;
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
Subject: [PATCH 3/3] ARM: dts: imx6ul: Fix nand-controller #size-cells
Date:   Thu, 10 Aug 2023 11:55:41 +0200
Message-Id: <20230810095541.720489-4-alexander.stein@ew.tq-group.com>
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

nand-controller.yaml bindings says #size-cells shall be set to 0.
Fixes the dtbs_check warning:
arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul2l-mba6ulx.dtb:
 nand-controller@1806000: #size-cells:0:0: 0 was expected
 from schema $id: http://devicetree.org/schemas/mtd/gpmi-nand.yaml#

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6ul.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi
index 0174f3edbd16..3b87d980e9f4 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul.dtsi
@@ -179,7 +179,7 @@ dma_apbh: dma-controller@1804000 {
 		gpmi: nand-controller@1806000 {
 			compatible = "fsl,imx6q-gpmi-nand";
 			#address-cells = <1>;
-			#size-cells = <1>;
+			#size-cells = <0>;
 			reg = <0x01806000 0x2000>, <0x01808000 0x2000>;
 			reg-names = "gpmi-nand", "bch";
 			interrupts = <0 15 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1

