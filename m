Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D15D4AEEAD
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 10:55:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233754AbiBIJz2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 04:55:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233083AbiBIJzZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 04:55:25 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBEBEE078225
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 01:55:19 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nHjfj-0002Ox-Gs; Wed, 09 Feb 2022 10:53:59 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nHjfg-008qau-1v; Wed, 09 Feb 2022 10:53:56 +0100
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
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 11/23] dt-bindings: display: rockchip: dw-hdmi: Add additional clock
Date:   Wed,  9 Feb 2022 10:53:38 +0100
Message-Id: <20220209095350.2104049-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220209095350.2104049-1-s.hauer@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
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

The rk3568 HDMI has an additional clock that needs to be enabled for the
HDMI controller to work. The purpose of that clock is not clear. It is
named "hclk" in the downstream driver, so use the same name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Rob Herring <robh@kernel.org>
---

Notes:
    Changes since v4:
    - Add Robs Ack

 .../bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index 38ebb6983028..67a76f51637a 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -44,12 +44,13 @@ properties:
     items:
       - {}
       - {}
-      # The next three clocks are all optional, but shall be specified in this
+      # The next four clocks are all optional, but shall be specified in this
       # order when present.
       - description: The HDMI CEC controller main clock
       - description: Power for GRF IO
       - description: External clock for some HDMI PHY (old clock name, deprecated)
       - description: External clock for some HDMI PHY (new name)
+      - description: hclk
 
   clock-names:
     minItems: 2
@@ -61,13 +62,17 @@ properties:
           - grf
           - vpll
           - ref
+          - hclk
       - enum:
           - grf
           - vpll
           - ref
+          - hclk
       - enum:
           - vpll
           - ref
+          - hclk
+      - const: hclk
 
   ddc-i2c-bus:
     $ref: /schemas/types.yaml#/definitions/phandle
-- 
2.30.2

