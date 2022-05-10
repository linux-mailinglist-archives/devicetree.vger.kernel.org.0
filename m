Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 389D0520E77
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 09:32:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237742AbiEJHgY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 03:36:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232855AbiEJHN0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 03:13:26 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 140822AC6FC
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 00:09:30 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1noJzk-0007T6-Ks; Tue, 10 May 2022 09:09:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1noJzi-001RkH-CV; Tue, 10 May 2022 09:09:17 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1noJzf-009qKC-QS; Tue, 10 May 2022 09:09:15 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 1/3] dt-bindings: display: rockchip: make reg-names mandatory for VOP2
Date:   Tue, 10 May 2022 09:09:12 +0200
Message-Id: <20220510070914.2346011-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220510070914.2346011-1-s.hauer@pengutronix.de>
References: <20220510070914.2346011-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
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

The VOP2 driver relies on reg-names properties, but these are not
documented. Add the missing documentation, make reg-names mandatory
and increase minItems to 2 as always both register spaces are needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../bindings/display/rockchip/rockchip-vop2.yaml          | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 655d9b327f7d3..7238cdec9eb8a 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -22,7 +22,7 @@ properties:
       - rockchip,rk3568-vop
 
   reg:
-    minItems: 1
+    minItems: 2
     items:
       - description:
           Must contain one entry corresponding to the base address and length
@@ -31,6 +31,11 @@ properties:
           Can optionally contain a second entry corresponding to
           the CRTC gamma LUT address.
 
+  reg-names:
+    items:
+      - const: vop
+      - const: gamma-lut
+
   interrupts:
     maxItems: 1
     description:
@@ -86,6 +91,7 @@ properties:
 required:
   - compatible
   - reg
+  - reg-names
   - interrupts
   - clocks
   - clock-names
-- 
2.30.2

