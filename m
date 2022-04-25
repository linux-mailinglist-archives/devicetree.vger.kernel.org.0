Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7509E50DE29
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 12:49:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241301AbiDYKve (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 06:51:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229731AbiDYKv3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 06:51:29 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFC9362D2
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 03:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1650883704; x=1682419704;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Hcxn67SV1WL8W3y44Hc/jdaaeJYqYeWsGFj0inQot5Y=;
  b=HBw+7gcp9aFBNk4DHNexj/8XxakwDQnT65/K7rsa2SAwKNZWESKcOE2A
   furQkYeLteLI8AL/zMVpSVXrMhddPpGJW5kJLtITjB10OJaQX6vK9P/cB
   fq4cztC0chxs/xWNxB40uUPrhrXquHsRsd5OLQkmAXxvK61ocKxtFyxbD
   iB7vhyrBbY8shlW8yZgrrvOa7MCXsUZdJrBlA1/3lf/k9mx46MVl4fphz
   oEbTHi+Yid8zPaS26/31dcnNHHjR6In214zvF3V4KzqXo1YZjUVvH7fmu
   4VN9vDRlr+fOZWe8MD+/NHa4g+XEKsRVwy/O53v5woSPuSkD/DRuC0WXF
   w==;
X-IronPort-AV: E=Sophos;i="5.90,287,1643698800"; 
   d="scan'208";a="156654228"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 25 Apr 2022 03:48:23 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Mon, 25 Apr 2022 03:48:23 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Mon, 25 Apr 2022 03:48:21 -0700
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>, <robh+dt@kernel.org>,
        <krzk+dt@kernel.org>
CC:     Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        <linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Palmer Dabbelt <palmer@rivosinc.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 2/2] riscv: dts: microchip: move sysctrlr out of soc bus
Date:   Mon, 25 Apr 2022 11:45:23 +0100
Message-ID: <20220425104521.132538-2-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.35.2
In-Reply-To: <20220425104521.132538-1-conor.dooley@microchip.com>
References: <20220425104521.132538-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MPFS system controller has no registers of its own, so move it out
of the soc node to avoid dtbs_check warnings:
arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dtb: soc: syscontroller: {'compatible': ['microchip,mpfs-sys-controller'], 'mboxes': [[15, 0]], 'status': ['okay']} should not be valid under {'type': 'object'}

Reported-by: Palmer Dabbelt <palmer@rivosinc.com>
Suggested-by: Rob Herring <robh@kernel.org>
Fixes: 528a5b1f2556 ("riscv: dts: microchip: add new peripherals to icicle kit device tree")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
Rob: I assume the Suggested-by tag is appropriate here since you told me
to do it this way?

 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index c5c9d1360de0..bb420ed6965e 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -146,6 +146,11 @@ refclk: msspllclk {
 		#clock-cells = <0>;
 	};
 
+	syscontroller: syscontroller {
+		compatible = "microchip,mpfs-sys-controller";
+		mboxes = <&mbox 0>;
+	};
+
 	soc {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -446,10 +451,5 @@ mbox: mailbox@37020000 {
 			#mbox-cells = <1>;
 			status = "disabled";
 		};
-
-		syscontroller: syscontroller {
-			compatible = "microchip,mpfs-sys-controller";
-			mboxes = <&mbox 0>;
-		};
 	};
 };
-- 
2.35.2

