Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 936C7520AE3
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 03:53:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231989AbiEJB5I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 21:57:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234341AbiEJB5H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 21:57:07 -0400
Received: from mo-csw.securemx.jp (mo-csw1116.securemx.jp [210.130.202.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A11CA14041C
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 18:53:10 -0700 (PDT)
Received: by mo-csw.securemx.jp (mx-mo-csw1116) id 24A1qlOC028716; Tue, 10 May 2022 10:52:47 +0900
X-Iguazu-Qid: 2wGrARG6y18UYiX0Cd
X-Iguazu-QSIG: v=2; s=0; t=1652147566; q=2wGrARG6y18UYiX0Cd; m=FzHKgqSlhrxTHuX5TvL1S9qWGcoIzJjyZhs3KJ6egbQ=
Received: from imx12-a.toshiba.co.jp (imx12-a.toshiba.co.jp [61.202.160.135])
        by relay.securemx.jp (mx-mr1111) id 24A1qise022842
        (version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
        Tue, 10 May 2022 10:52:46 +0900
From:   Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, yuji2.ishikawa@toshiba.co.jp,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: [PATCH 8/9] dt-bindings: watchdog: toshiba,visconti-wdt: Update the common clock properties
Date:   Tue, 10 May 2022 10:52:28 +0900
X-TSB-HOP2: ON
Message-Id: <20220510015229.139818-9-nobuhiro1.iwamatsu@toshiba.co.jp>
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
Therefore, update common clock properties for watchdog in the binding document.

Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
---
 .../bindings/watchdog/toshiba,visconti-wdt.yaml        | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/toshiba,visconti-wdt.yaml b/Documentation/devicetree/bindings/watchdog/toshiba,visconti-wdt.yaml
index 690e19ce4b87..edfefb97b6b1 100644
--- a/Documentation/devicetree/bindings/watchdog/toshiba,visconti-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/toshiba,visconti-wdt.yaml
@@ -35,20 +35,16 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/toshiba,tmpv770x.h>
+
     soc {
         #address-cells = <2>;
         #size-cells = <2>;
 
-        wdt_clk: wdt-clk {
-            compatible = "fixed-clock";
-            clock-frequency = <150000000>;
-            #clock-cells = <0>;
-        };
-
         watchdog@28330000 {
             compatible = "toshiba,visconti-wdt";
             reg = <0 0x28330000 0 0x1000>;
-            clocks = <&wdt_clk>;
+            clocks = <&pismu TMPV770X_CLK_WDTCLK>;
             timeout-sec = <20>;
         };
     };
-- 
2.36.0


