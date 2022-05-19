Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A04552DA30
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 18:28:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237849AbiESQ2u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 12:28:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229645AbiESQ2u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 12:28:50 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F15B8D4122
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 09:28:48 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1nrj13-0003N4-Cf; Thu, 19 May 2022 18:28:45 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nrj12-003Jhj-UD; Thu, 19 May 2022 18:28:43 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nrj10-00AnKT-Sg; Thu, 19 May 2022 18:28:42 +0200
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/2] dt-bindings: mfd: stm32-timers: Document how to specify interrupts
Date:   Thu, 19 May 2022 18:28:37 +0200
Message-Id: <20220519162838.695404-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1265; h=from:subject; bh=ncCq/TA6V9++RyI13hNtZmFRXl6sYaVPYUg+GsnWc4c=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBihnAvGhr9nOa0pWJvT9RF6KrW8un7+4LqzYSTdrrq 7XxKJoKJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYoZwLwAKCRDB/BR4rcrsCdhcB/ 0aGmpznMXf+zDA6YDJLSLaxSjny+WbP0F3Cc3Pn7dsB9ht0CHucxsktO89aPqv2hKiSU+5eX9dVJ1G 8IQsdD+qU9YmG4+cQU7FS6Uh1bCnEkEsZgD+rVXrBs8GSlNVU7/gpLjFzqmrfQhKmgJu4JNkHQo0lE oQ8CCYPb+aMlJmBgb4PWaU9DcL/eFZL5JhQ359mQyv/7/3Jwt5bqvW0nlKiR2kVNF5FDSRcB1ljWSx yfRs2btxvYs+aY7LwIn/lGzXTzZFj9iSR6ERq2bdo3hIgnUS1XjH9hiLrHkaOFwSAopukk+wSWOTB5 wqIU+rFg025Z3c4VxTAfD22qNVePAA
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
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

The timer units in the stm32mp1 CPUs have interrupts, depending on the
timer flavour either one "global" or four dedicated ones. Document how
to formalize these in a device tree.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
Changes since v3:
  - Do the things Rob suggested in reqly to v1 which I didn't notice
    until Fabrice told me in reply to v3.

 .../devicetree/bindings/mfd/st,stm32-timers.yaml  | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
index 10b330d42901..5b05b2ec1728 100644
--- a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
+++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
@@ -46,6 +46,21 @@ properties:
     minItems: 1
     maxItems: 7
 
+  interrupts:
+    oneOf:
+      - maxItems: 1
+      - maxItems: 4
+
+  interrupt-names:
+    oneOf:
+      - items:
+          - const: global
+      - items:
+          - const: brk
+          - const: up
+          - const: trg-com
+          - const: cc
+
   "#address-cells":
     const: 1
 

base-commit: 3123109284176b1532874591f7c81f3837bbdc17
-- 
2.35.1

