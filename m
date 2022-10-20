Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E0866055F4
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 05:28:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbiJTD2z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 23:28:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229583AbiJTD2y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 23:28:54 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD7181DC4D6
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 20:28:53 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29K3SUIc081643;
        Wed, 19 Oct 2022 22:28:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1666236510;
        bh=r5DWePghI8fCtIYdy6BD5IFcH0Ykyaz99Zro6k3jc9o=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=p+rMwiI1ToiqEWv5vMTDyKaFU04DhOCXLgD/oDM4x4i7bdn4BVt2iKzEM8+6m6pd3
         bDTVk7MthiPfAFtZa56RpcyXFuPJkIGAOrQGBKGwYTgD2xWtZRbK+5FAOrdNptOWIa
         KIK7k6icuJWdJH+DL7mDYukQRR7ITVYZk6L/B8IA=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29K3SUZ0120152
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 19 Oct 2022 22:28:30 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 19
 Oct 2022 22:28:29 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 19 Oct 2022 22:28:29 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29K3SQ4N013171;
        Wed, 19 Oct 2022 22:28:28 -0500
From:   Matt Ranostay <mranostay@ti.com>
To:     <nm@ti.com>, <vigneshr@ti.com>,
        <krzysztof.kozlowski+dt@linaro.org>, <robh+dt@kernel.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Matt Ranostay <mranostay@ti.com>
Subject: [PATCH v2 2/2] arm64: dts: k3-j72*: correct compatible for syscon entries
Date:   Wed, 19 Oct 2022 20:28:02 -0700
Message-ID: <20221020032802.308545-3-mranostay@ti.com>
X-Mailer: git-send-email 2.38.GIT
In-Reply-To: <20221020032802.308545-1-mranostay@ti.com>
References: <20221020032802.308545-1-mranostay@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing ti,j7*-system-controller compatible to bus defines in mcu/wakeup
domains to avoid the following similar warnings from dt-schema checks:

arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dtb: syscon@40f00000: compatible: ['syscon', 'simple-mfd'] is too short'

Signed-off-by: Matt Ranostay <mranostay@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi  | 2 +-
 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi  | 2 +-
 arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
index e5be78a58682..2025aab4b66f 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
@@ -35,7 +35,7 @@ k3_reset: reset-controller {
 	};
 
 	mcu_conf: syscon@40f00000 {
-		compatible = "syscon", "simple-mfd";
+		compatible = "ti,j7200-system-controller", "syscon", "simple-mfd";
 		reg = <0x00 0x40f00000 0x00 0x20000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index df08724bbf1c..5d9ec221fa34 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -35,7 +35,7 @@ k3_reset: reset-controller {
 	};
 
 	mcu_conf: syscon@40f00000 {
-		compatible = "syscon", "simple-mfd";
+		compatible = "ti,j721e-system-controller", "syscon", "simple-mfd";
 		reg = <0x0 0x40f00000 0x0 0x20000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
index 4d1bfabd1313..dfd40369b931 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
@@ -69,7 +69,7 @@ wkup_gpio_intr: interrupt-controller@42200000 {
 	};
 
 	mcu_conf: syscon@40f00000 {
-		compatible = "syscon", "simple-mfd";
+		compatible = "ti,j721s2-system-controller", "syscon", "simple-mfd";
 		reg = <0x0 0x40f00000 0x0 0x20000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.38.GIT

