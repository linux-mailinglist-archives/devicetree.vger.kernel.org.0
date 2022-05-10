Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAE4C520ADF
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 03:53:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234364AbiEJB5I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 21:57:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231989AbiEJB5H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 21:57:07 -0400
Received: from mo-csw.securemx.jp (mo-csw1514.securemx.jp [210.130.202.153])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21752140411
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 18:53:10 -0700 (PDT)
Received: by mo-csw.securemx.jp (mx-mo-csw1514) id 24A1qjX7003922; Tue, 10 May 2022 10:52:45 +0900
X-Iguazu-Qid: 34tKGLvGN3Fukht54y
X-Iguazu-QSIG: v=2; s=0; t=1652147565; q=34tKGLvGN3Fukht54y; m=L+EKIWGekzJwNL87LswEqgjkJLYXP4mOjpiIrUwWpTA=
Received: from imx2-a.toshiba.co.jp (imx2-a.toshiba.co.jp [106.186.93.35])
        by relay.securemx.jp (mx-mr1511) id 24A1qiX4019649
        (version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
        Tue, 10 May 2022 10:52:44 +0900
From:   Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, yuji2.ishikawa@toshiba.co.jp,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: [PATCH 7/9] dt-bindings: net: toshiba,visconti-dwmac: Update the common clock properties
Date:   Tue, 10 May 2022 10:52:27 +0900
X-TSB-HOP2: ON
Message-Id: <20220510015229.139818-8-nobuhiro1.iwamatsu@toshiba.co.jp>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
References: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The clock for this driver switched to the common clock controller driver.
Therefore, update common clock properties for ethernet device in the binding
document.

Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
---
 .../devicetree/bindings/net/toshiba,visconti-dwmac.yaml        | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml b/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
index b12bfe61c67a..0988ed8d1c12 100644
--- a/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/toshiba,visconti-dwmac.yaml
@@ -52,6 +52,7 @@ unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/toshiba,tmpv770x.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     soc {
@@ -63,7 +64,7 @@ examples:
             reg = <0 0x28000000 0 0x10000>;
             interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH>;
             interrupt-names = "macirq";
-            clocks = <&clk300mhz>, <&clk125mhz>;
+            clocks = <&pismu TMPV770X_CLK_PIETHER_BUS>, <&pismu TMPV770X_CLK_PIETHER_125M>;
             clock-names = "stmmaceth", "phy_ref_clk";
             snps,txpbl = <4>;
             snps,rxpbl = <4>;
-- 
2.36.0


