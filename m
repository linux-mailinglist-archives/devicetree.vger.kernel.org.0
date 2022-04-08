Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8188E4F8F1E
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 09:07:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235196AbiDHGhV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 02:37:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234846AbiDHGhQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 02:37:16 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B780750E24
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 23:35:13 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1nciD8-0002FQ-Ep; Fri, 08 Apr 2022 08:35:10 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nciD6-001keu-5n; Fri, 08 Apr 2022 08:35:06 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1nciD4-001ukZ-4E; Fri, 08 Apr 2022 08:35:06 +0200
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
Subject: [PATCH v3 1/2] dt-bindings: mfd: stm32-timers: Document how to specify interrupts
Date:   Fri,  8 Apr 2022 08:35:01 +0200
Message-Id: <20220408063502.136403-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220408063502.136403-1-u.kleine-koenig@pengutronix.de>
References: <20220408063502.136403-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1035; h=from:subject; bh=tBPZE8MZQkUvzLqkbv8EsZiY1Xv+3A1LHPDki3h4neA=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBiT9eQbRUnT+VKiMWUyd/90oK4OxYrzWMl2lZzsFtV NKTjewiJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYk/XkAAKCRDB/BR4rcrsCe+0B/ 4wH97qsebsoQ4WN3v6oL2VGB/xne47QYZYB5DyI6lIXKb6PYAoT8KpOn6ez18bk5m6nqDHYDDvQWcO QfKB13Lyjmm/LWaZRLd4ytCOKd5Ar5pvWYNucpUd19iOXoczCvTaVjSJAI32U6pwK6ib+3PmQfh7Jm /u9Fo0GjZByWLwGPejS/Vv1jKiYUpcbyKHpdOoJEtEvl0/NFFerVXOKQZlXXfHckJbFD6hdc+kSNeB xHKDFCiB5S0enqmeI9UZegXhM2dUZTgss6LsNFxnaIbimE1a+jFcgYT6Xm6dk2HxWXKPcH7IYSiXNK mCKBJgGnbV8amUuTR9ir+T4i5haX6E
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
 .../devicetree/bindings/mfd/st,stm32-timers.yaml    | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
index 10b330d42901..5e4214d1613b 100644
--- a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
+++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
@@ -46,6 +46,19 @@ properties:
     minItems: 1
     maxItems: 7
 
+  interrupts:
+    maxItems: 4
+
+  interrupt-names:
+    anyOf:
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
 
-- 
2.35.1

