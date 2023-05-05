Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A17E26F7CB9
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 08:02:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230362AbjEEGCv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 02:02:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230356AbjEEGCu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 02:02:50 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FE651568F
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 23:02:48 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <s.trumtrar@pengutronix.de>)
        id 1puoWk-0005sG-2q; Fri, 05 May 2023 08:02:46 +0200
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 08/10] dt-bindings: arm: stm32: Add Phytec STM32MP1 board
Date:   Fri,  5 May 2023 08:01:56 +0200
Message-Id: <20230505060158.16516-9-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230505060158.16516-1-s.trumtrar@pengutronix.de>
References: <20230505060158.16516-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Phytec STM32MP1 based SoMs feature up to 1 GB DDR3LP RAM, up to
1 GB eMMC, up to 16 MB QSPI and up to 128 GB NAND flash.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 13e34241145b..4af5b8f4f803 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -155,6 +155,12 @@ properties:
           - const: seeed,stm32mp157c-odyssey-som
           - const: st,stm32mp157
 
+      - description: Phytec STM32MP1 SoM based Boards
+        items:
+          - const: phytec,phycore-stm32mp1-3
+          - const: phytec,phycore-stm32mp157c-som
+          - const: st,stm32mp157
+
 additionalProperties: true
 
 ...
-- 
2.39.1

